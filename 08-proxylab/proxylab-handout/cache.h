#ifndef CACHE_H
#define CACHE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

// 缓存节点的结构
typedef struct cache_node {
    char *key;                // 缓存请求的uri
    char *data;               // 缓存http响应的数据
    size_t size;              // 数据大小
    struct cache_node *prev;  // prev
    struct cache_node *next;  // next
} cache_node_t;

// 缓存的结构（双向链表）
typedef struct {
    cache_node_t *head;
    cache_node_t *tail;
    size_t total_size;
    // pthread_rwlock_t lock;    // rwlock读写锁
    pthread_mutex_t mutex_lock;
} cache_t;

// 函数声明
cache_t *cache_create(void);
void cache_destroy(cache_t *cache);
int cache_get(cache_t *cache, const char *key, char *data, size_t *size);
int cache_put(cache_t *cache, const char *key, const char *data, size_t size);

#endif /* CACHE_H */