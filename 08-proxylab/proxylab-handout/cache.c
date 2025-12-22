#include "cache.h"

/*
 * cache_create - 创建并初始化缓存
 * 返回：新创建的缓存指针，失败返回NULL
 * 
 * 功能：
 *   1. 分配缓存结构内存
 *   2. 初始化链表为空
 *   3. 初始化读写锁
 */
cache_t *cache_create(void)
{
    cache_t *cache = (cache_t *) malloc (sizeof(cache_t));
    if (!cache) {
        return NULL;
    }

    cache->head = NULL;
    cache->tail = NULL;
    cache->total_size = 0;

    // // 初始化读写锁
    // if (pthread_rwlock_init(&cache->lock, NULL) != 0) {
    //     free(cache);
    //     return NULL;
    // }
    if (pthread_mutex_init(&cache->mutex_lock, NULL) != 0) {
        free(cache);
        return NULL;
    }

    return cache;
}

/*
 * cache_destroy - 销毁缓存，释放所有资源
 * 
 * 功能：
 *   1. 遍历链表释放所有节点
 *   2. 销毁读写锁
 *   3. 释放缓存结构
 */
void cache_destroy(cache_t *cache)
{
    if (!cache) return ;

    // 获取写锁以安全销毁
    // pthread_rwlock_wrlock(&cache->lock);
    pthread_mutex_lock(&cache->mutex_lock);

    cache_node_t *current = cache->head;
    while (current) {
        cache_node_t *next = current->next;
        free(current->key);
        free(current->data);
        free(current);
        current = next;
    }

    // pthread_rwlock_unlock(&cache->lock);
    // pthread_rwlock_destroy(&cache->lock);
    pthread_mutex_unlock(&cache->mutex_lock);
    pthread_mutex_destroy(&cache->mutex_lock);
    free(cache);
}

/*
 * move_to_head - 将节点移动到链表头部（内部函数）
 * 
 * 功能：
 *   1. 从链表中移除节点
 *   2. 将节点插入到链表头部
 *   3. 更新head和tail指针
 * 
 * 注意：调用者必须持有写锁
 */
static void move_to_head(cache_t *cache, cache_node_t *node)
{
    if (!cache || !node || node == cache->head) {
        return ;
    }

    // 移除节点
    if (node->prev) {
        node->prev->next = node->next;
    }
    if (node->next) {
        node->next->prev = node->prev;
    }

    // 如果是tail额外更新tail
    if (node == cache->tail) {
        cache->tail = node->prev;
    }

    // 插入头部
    node->prev = NULL;
    node->next = cache->head;
    if (cache->head) {
        cache->head->prev = node;
    }
    cache->head = node;
    if (!cache->tail) {
        cache->tail = node;
    }
}

/*
 * cache_get - 从缓存中获取数据
 * 
 * 参数：
 *   cache - 缓存指针
 *   key   - 缓存键值
 *   data  - 输出缓冲区（必须足够大）
 *   size  - 输出数据大小
 * 
 * 返回：
 *   0成功，-1失败
 * 
 * 功能：
 *   1. 获取读锁搜索缓存
 *   2. 如果找到，复制数据到输出缓冲区
 *   3. 升级为写锁，将节点移动到头部（LRU更新）
 *   4. 释放锁
 * 
 * 注意：使用读写锁，支持多个线程同时读
 */
int cache_get(cache_t *cache, const char *key, char *data, size_t *size)
{
    if (!cache || !key || !data || !size) {
        return -1;
    }

    // 获取互斥锁 - 整个操作受锁保护
    pthread_mutex_lock(&cache->mutex_lock);

    // // 1. 获取读锁搜索
    // pthread_rwlock_rdlock(&cache->lock);

    cache_node_t *current = cache->head;
    cache_node_t *found = NULL;
    while (current) {
        if (strcmp(current->key, key) == 0) {
            found = current;
            break;
        }
        current = current->next;
    }
    if (!found) {
        // 没找到
        pthread_mutex_unlock(&cache->mutex_lock);
        return -1;
    }
    if (found->size > *size) {
        // 找到了但是size大于缓冲区
        pthread_mutex_unlock(&cache->mutex_lock);
        return -1;
    } 
    // 找到了，把内容复制到*data
    memcpy(data, found->data, found->size);
    *size = found->size;

    // // 解锁，获取写锁来更新lru
    // pthread_rwlock_unlock(&cache->lock);
    // pthread_rwlock_wrlock(&cache->lock);

    // 注意！！！此时解锁过有可能链表变了，需要重新找到这个节点的位置
    current = cache->head;
    found = NULL;
    while (current) {
        if (strcmp(current->key, key) == 0) {
            found = current;
            break;
        }
        current = current->next;
    }
    if (found) {
        move_to_head(cache, found);
    }
    // pthread_rwlock_unlock(&cache->lock);

    pthread_mutex_unlock(&cache->mutex_lock);

    return 0;
}

/*
 * cache_put - 将数据放入缓存
 * 
 * 参数：
 *   cache - 缓存指针
 *   key   - 缓存键值
 *   data  - 要缓存的数据
 *   size  - 数据大小
 * 
 * 返回：
 *   0成功，-1失败
 * 
 * 功能：
 *   1. 检查对象大小是否超过限制
 *   2. 获取写锁（排他访问）
 *   3. 如果键已存在，更新现有节点
 *   4. 如果键不存在，创建新节点
 *   5. 如果缓存满，淘汰最久未使用的节点
 *   6. 将节点插入链表头部
 * 
 * 注意：一次只能有一个线程写缓存
 */
int cache_put(cache_t *cache, const char *key, const char *data, size_t size)
{
    if (!cache || !key || !data || size==0) {
        return -1;
    }

    // 检查这个对象大小是否超过限制
    if (size > MAX_OBJECT_SIZE) {
        return -1;
    }

    // // 获取写锁
    // pthread_rwlock_wrlock(&cache->lock);
    // 获取互斥锁 - 整个操作受锁保护
    pthread_mutex_lock(&cache->mutex_lock);

    // 检查是否已存在相同键
    cache_node_t *current = cache->head;
    cache_node_t *existing = NULL;
    
    while (current) {
        if (strcmp(current->key, key) == 0) {
            existing = current;
            break;
        }
        current = current->next;
    }
    
    if (existing) {
        // 更新现有节点 
        // 检查新数据是否导致超过缓存限制，因为单个物品的限制已经在上面检查了
        size_t new_total_size = cache->total_size - existing->size + size;
        if (new_total_size > MAX_CACHE_SIZE) {
            while (cache->total_size - existing->size + size>MAX_CACHE_SIZE){
                if (!cache->tail) {
                    // 没有可淘汰的节点
                    pthread_mutex_unlock(&cache->mutex_lock);
                    return -1;
                }
                // 淘汰尾部节点
                cache_node_t *to_remove = cache->tail;
                if (to_remove->prev) {
                    to_remove->prev->next = NULL;
                }
                cache->tail = to_remove->prev;
                if (to_remove == cache->head) {
                    cache->head = NULL;
                }
                
                cache->total_size -= to_remove->size;
                
                free(to_remove->key);
                free(to_remove->data);
                free(to_remove);
            }
        }
        
        // 更新节点数据
        free(existing->data);
        existing->data = (char *)malloc(size);
        if (!existing->data) {
            pthread_mutex_unlock(&cache->mutex_lock);
            return -1;
        }
        memcpy(existing->data, data, size);
        existing->size = size;
        cache->total_size = cache->total_size - existing->size + size;
        // 移动到头部
        move_to_head(cache, existing);
    } else {
        // 创建新节点 
        // 检查是否有足够空间
        while (cache->total_size + size > MAX_CACHE_SIZE) {
            if (!cache->tail) {
                pthread_mutex_unlock(&cache->mutex_lock);
                return -1;
            }
            
            // 淘汰尾部节点 
            cache_node_t *to_remove = cache->tail;
            if (to_remove->prev) {
                to_remove->prev->next = NULL;
            }
            cache->tail = to_remove->prev;
            if (to_remove == cache->head) {
                cache->head = NULL;
            }
            cache->total_size -= to_remove->size;
            free(to_remove->key);
            free(to_remove->data);
            free(to_remove);
        }
        // 创建新节点 
        cache_node_t *new_node = (cache_node_t *)malloc(sizeof(cache_node_t));
        if (!new_node) {
            pthread_mutex_unlock(&cache->mutex_lock);
            return -1;
        }
        new_node->key = strdup(key);
        new_node->data = (char *)malloc(size);
        if (!new_node->key || !new_node->data) {
            free(new_node->key);
            free(new_node->data);
            free(new_node);
            pthread_mutex_unlock(&cache->mutex_lock);
            return -1;
        }
        memcpy(new_node->data, data, size);
        new_node->size = size;
        new_node->prev = NULL;
        new_node->next = NULL;
        
        // 插入链表头部，不能用move to head因为没有涉及删除节点
        new_node->next = cache->head;
        if (cache->head) {
            cache->head->prev = new_node;
        }
        cache->head = new_node;
        if (!cache->tail) {
            cache->tail = new_node;
        }
        cache->total_size += size;
    }
    pthread_mutex_unlock(&cache->mutex_lock);
    return 0;
}
