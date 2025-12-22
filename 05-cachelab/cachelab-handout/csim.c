/*
 * name: 汤伟杰
 * ID: 2400016635
 * 
 * 实现一个lru_cache结构:
 * 1. 利用optget获取命令行参数，-s -E -b -t为必需，-v打印详细信息
 * 2. 内存地址的结构：address = t [tag] | s [index_set] | b [offset]
 * 3. 设计成lru_cache，每一个行额外设置一个lru计数，每次要驱逐的时候都取计数最小的
 *    (额外设置一个全局变量curr_time = -1，每次lru计数直接赋值为time)
 * 4. 不要将组、行都用数组，用struct即可，这样后续malloc方便一点
 *    而且块其实不需要实现，只需要查看是否命中即可
 * 5. 由于不需要实现具体细节只需要判断，Load和Store的实现是一样的；
 *    Modify的第一步是Load，与前面二者一样；第二步是Store，此时必定是hit
 * 6. 为了每行少于80字符，函数参数都分行了，很难看
 * 
 */

#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

// 定义cache的行
typedef struct { // 行
    int valid;
    unsigned long long tag;
    long long lru_counter; // lru计数
} cache_line_type;

// 定义cache的组
typedef struct { // 组
    cache_line_type *lines;  // set类型指向这一组的所有行
} cache_set_type;

// cache就是S个组的指针
cache_set_type *cache;

// 初始化lru_cache
void init_cache(int s, int E) {
    int S = 1 << s;
    // malloc for S sets
    cache = (cache_set_type*) malloc (S * sizeof(cache_set_type)); 
    for (int i = 0; i < S; i++) {
        // malloc for E lines
        cache[i].lines = \
            (cache_line_type*) malloc (E * sizeof(cache_line_type)); 
        for (int j = 0; j < E; j++) {
            cache[i].lines[j].valid = 0;
            cache[i].lines[j].tag = 0;
            cache[i].lines[j].lru_counter = -1;
        }
    }
}

// 访问cache的函数，同时定义全局的四个变量
int hit_count = 0, miss_count = 0, eviction_count = 0; 
long long curr_time = -1;
void access_cache(
    int set_index, 
    unsigned long long curr_tag, 
    cache_set_type* cache, 
    int verbose, 
    int E, 
    char operation, 
    unsigned long long address, 
    int size, 
    int isM) {
    
    // printf("\nold state: tag:%llx, 
    // and curr_tag:%llx\n", cache[set_index].lines[0].tag, curr_tag);
    int isM_index = -1;
    if (verbose) {
        printf(" %c %llx,%d ", operation, address, size);
    }
    // 检查是否命中
    int hit_index = -1;
    for (int i = 0; i < E; i++) {
        if (cache[set_index].lines[i].valid \
            && cache[set_index].lines[i].tag == curr_tag) {
            hit_index = i;
            break;
        }
    }
    // 处理命中或没有时的事情
    if (hit_index != -1) {
        // 如果命中了：
        hit_count++;
        // 用到了这一行，更新lru计数
        cache[set_index].lines[hit_index].lru_counter = curr_time;
        if (verbose) {
            if (!isM) printf("hit\n");
            else printf("hit ");
        }
        isM_index = hit_index;
    } else {
        // 如果没有命中：
        miss_count++;
        if (verbose) printf("miss"); // 先别\n因为miss了之后可能会eviction

        // 需要存入新行，先看看有没有没用过的行（看valid）
        int free_index = -1;
        int lru_index = -1, lru_cnter = curr_time + 2;
        for (int i = 0; i < E; i++) {
            if (!cache[set_index].lines[i].valid) {
                free_index = i;
                break;
            } else {
                if (cache[set_index].lines[i].lru_counter < lru_cnter) {
                    lru_cnter = cache[set_index].lines[i].lru_counter;
                    lru_index = i;
                }
            }
        }
        if (free_index != -1) {
            // 如果有空闲行直接用，更新valid设置tag
            cache[set_index].lines[free_index].valid = 1;
            cache[set_index].lines[free_index].tag = curr_tag;
            cache[set_index].lines[free_index].lru_counter = curr_time;
            if (verbose) {
                if (!isM) printf("\n");
                else ;
            }
            isM_index = free_index;
        } else if (lru_index != -1) {
            // 没有空行，取最小的lru计数替换行
            eviction_count++;
            if (verbose) {
                if (!isM) printf(" eviction\n");
                else ;
            }
            cache[set_index].lines[lru_index].tag = curr_tag;
            cache[set_index].lines[lru_index].lru_counter = curr_time;
            isM_index = lru_index;
            // printf("curr_line_index:%d\n", lru_index);

        }
    }
    if (isM) {
        curr_time++;
        cache[set_index].lines[isM_index].lru_counter = curr_time;
        hit_count++;
        if (verbose) printf(" hit\n");
    }
    // printf("new state: tag:%llx\n",cache[set_index].lines[0].tag);
}

// main函数，先读命令行输入解析参数，再打开文件进行模拟cache
int main(int argc, char *argv[]) {
    int opt;
    int s = 0, E = 0, b = 0, verbose = 0;
    char *trace_file = NULL;
    FILE *trace_fp = NULL;

    char operation;
    unsigned long long address;
    int size;

    int set_index = 0;
    unsigned long long tag = 0;


    while ((opt = getopt(argc, argv, "vs:E:b:t:")) != -1) {
        switch (opt)
        {
        case 'v':
            verbose = 1;
            break;
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = optarg;
            break;
        default:
            break;
        }
    }

    // printf("s = %d, E = %d, b = %d, trace_file = %s, verbose = %d\n",
        // s, E, b, trace_file, verbose);
    
    // 初始化cache
    init_cache(s, E);

    // 打开文件
    trace_fp = fopen(trace_file, "r");
    // 设置当前文件的全局时间
    curr_time = -1;
    char line[30];
    int isM = 0;

    while (fgets(line, sizeof(line), trace_fp) != NULL) {
        if (sscanf(line, " %c %llx,%d", &operation, &address, &size) == 3) {
            // 每获取一行先更新全局时间
            curr_time++;
            // 再解析地址
            set_index = (address >> b) & ((1 << s) - 1);
            tag = address >> (b + s); // 无符号数不需要考虑高位右移产生0

            switch (operation)
            {
            case 'S': // store
            case 'L': // load
                isM = 0;
                // 两者不考虑实现细节在这里面逻辑是一样的
                access_cache(set_index, tag, cache, verbose, E,
                     operation, address, size, isM);
                break;
            case 'M': // modify
                // 先Load再Store
                isM = 1;
                access_cache(set_index, tag, cache, verbose, E,
                     operation, address, size, isM);
                
                break;
            }
        }
    }
    
    printf("hits:%d misses:%d evictions:%d\n", \
        hit_count, miss_count, eviction_count);

    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}