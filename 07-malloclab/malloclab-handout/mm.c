/*
 * mm.c
 *
 * name: 汤伟杰
 * ID:   2400016635
 * 
 * 初始分数：69
 * 
 * 将CHUNKSIZE从1<<12改为1<<13后：74
 * 
 * 随机调整get_idx的参数后：75
 * 
 * ================================================================
 * 
 * 实现一个动态内存分配器，采用 分离链表 + 首次适配 完成。
 * 
 * 1. 内存块结构:
 *    - 每个块包含头部和(可选)脚部
 *    - 分配块: 只有头部, 包含块大小(高位)、前一个块和当前的分配状态(最低位和次低位0/1)
 *             | size | prev_alloc | alloc |  (1-word header)
 *             +------+------------+-------+
 *             |          payload          |
 *             |            ...            |
 *    - 空闲块: 有头部和脚部, 头部和脚部格式相同
 *             | size | prev_alloc | alloc |  (header)
 *             +------+------------+-------+
 *             |  prev pointer (4 bytes)   |
 *             |  next pointer (4 bytes)   |
 *             |      unused payload       |
 *             |      ...                  |
 *             | size | prev_alloc | alloc |  (footer)
 *    
 *    其中: size = 块大小(包括header/footer, 按8字节对齐)
 *          alloc = 当前块分配状态(0:空闲, 1:已分配)
 *          prev_alloc = 前一个块分配状态(第二位: 0:前一个空闲, 2:前一个已分配)
 * 
 * 2. 空闲链表组织结构:
 *    - 分离空闲链表, 16个桶(bucket), 按块大小范围划分:
 *      Bucket 0:  (0, 16]
 *      Bucket 1:  (16, 32]
 *      Bucket 2:  (32, 64]
 *      Bucket 3:  (64, 128]
 *      Bucket 4:  (128, 256]
 *      Bucket 5:  (256, 512]
 *      Bucket 6:  (512, 1024]
 *      Bucket 7:  (1024, 2048]
 *      Bucket 8:  (2048, 4096]
 *      Bucket 9:  (4096, 8192]
 *      Bucket 10: (8192, 16384]
 *      Bucket 11: (16384, 32768]
 *      Bucket 12: (32768, 65536]
 *      Bucket 13: (65536, 1312072]
 *      Bucket 14: (1312072, 2624144]
 *      Bucket 15: (2624144, ∞)
 *    - 每个桶维护一个显式双向链表, 按首次适配策略组织
 *    - 链表头指针存储在堆开始处(前128字节: 16个8字节指针)
 *    - 使用相对偏移而非绝对地址存储prev/next指针(所以在空闲块是俩指针分别是4字节)
 * 
 * 3. 分配器如何操作空闲链表:
 *    - malloc(size):
 *      1) 调整请求大小asize(包含overhead和对齐)
 *      2) 根据asize计算对应的桶索引
 *      3) 从该桶开始向上搜索所有桶, 使用首次适配策略查找合适块
 *      4) 找到后:
 *         a) 从空闲链表中删除该块(delete_free_node)
 *         b) 如果剩余空间≥最小块大小(16字节), 则分割:
 *            - 前部分作为分配块
 *            - 后部分作为新空闲块插入合适桶中(insert_free_node)
 *         c) 否则整个块分配给请求
 *      5) 未找到合适块则扩展堆(extend_heap)
 *    
 *    - free(ptr):
 *      1) 标记块为空闲(PUT header/footer with alloc=0)
 *      2) 合并相邻空闲块(coalesce), 四种情况:
 *         a) 前后都分配: 只需更新后块头部中的prev_alloc位
 *         b) 前分配后空闲: 合并后方, 从链表删除后块, 插入合并块
 *         c) 前空闲后分配: 合并前方, 从链表删除前块, 插入合并块
 *         d) 前后都空闲: 合并前后, 从链表删除前后块, 插入合并块
 *    
 *    - 链表操作:
 *      insert_free_node(bp, size): 将空闲块插入对应桶的链表头部(LIFO)
 *      delete_free_node(bp): 从链表中删除指定空闲块, 维护双向链表指针
 * 
 * 4. 边界标记与合并:
 *    - 空闲块使用边界标记(头部+脚部), 支持常数时间合并
 *    - 已分配块不需要脚部, 节省空间
 *    - 使用prev_alloc位避免向后搜索判断前块状态
 * 
 * 5. 堆布局:
 *    [16个桶的头指针(128字节)] [4字节对齐填充] 
 *    [序言头(4字节,已分配)] [序言脚(4字节,已分配)] 
 *    [空闲块和分配块...] [结尾块(4字节,已分配)]
 * 
 * ================================================================
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
// #define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/***********/
/* DEFINES */
/***********/
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<13)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

// 第一位是0/1：是否分配，高位是块的大小
#define PACK(size, alloc)  ((size) | (alloc)) 

// 在显式空闲链表中是双向链表，为了在合并空闲块的时候，
// 知道前一个块是不是空闲块，在第二位的0/1存储
// **前一个块是否分配**
#define PACK_PRE(size, pre_alloc, alloc) ((size) | (pre_alloc) | (alloc))

/* Read and write a word at address p */
// 由于大小不超过4G，可以使用四字节保存关于堆初始位置的偏移值作为地址
#define GET(p)       (*(unsigned /*int*/ *)(p))            
#define PUT(p, val)  (*(unsigned /*int*/ *)(p) = (val))    

// 得到当前块的：大小、状态；先前块的：状态
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)   
#define GET_PRE_ALLOC(p) (GET(p) & 0x2)     

// 设置当前块、先前块的状态
#define SET_ALLOC(p) ((*(unsigned /*int*/ *)(p)) |= 0x1)
#define SET_PRE_ALLOC(p) ((*(unsigned /*int*/ *)(p)) |= 0x2)    
#define SET_FREE(p) ((*(unsigned /*int*/ *)(p)) &= ~0x1)
#define SET_PRE_FREE(p) ((*(unsigned /*int*/ *)(p)) &= ~0x2)    

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous (free) blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

// 遍历空闲链表，使用其内部的prev和next指针
// bp位置是prev，bp+WSIZE位置是next
// 由于存的都是偏移要加上mem_heap_lo()
#define PREV_PTR(bp)   ((char *)(mem_heap_lo() + *(unsigned *)(bp)))
#define NEXT_PTR(bp)   ((char *)(mem_heap_lo() + *(unsigned *)(bp + WSIZE)))

// 空闲链表的更新前后节点
#define SET_PREV_PTR(bp,ptr) (*(unsigned*)(bp)=((unsigned)(long)ptr))
#define SET_NEXT_PTR(bp,ptr) (*(unsigned*)((char*)bp+WSIZE)=\
                                ((unsigned)(long)ptr))

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/********************/
/* GLOBAL VARIABLES */
/********************/
// 准确的说是指向堆的起始位置，刚开始的地方要放各个分散链表的头指针
static char *heap_listp = 0;
static char **free_list_ptrs = 0;

/********************/
/* HELPER FUNCTIONS */
/********************/
static inline void *extend_heap(size_t words);
static inline void place(void *bp, size_t asize);
static inline void *find_fit(size_t asize);
static inline void *coalesce(void *bp);
static inline void delete_free_node(void *bp);
static inline void insert_free_node(void *bp, size_t size);
static inline size_t get_idx(size_t size);

/*************************/
/* FUNCTIONS' DEFINITION */
/*************************/
/* 
 * extend_heap - Extend heap with free block and return its block pointer
 * 扩展堆空间，调用mem_sbrk
 */
static void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    // 获取前一个块的状态
    size_t pre = GET_PRE_ALLOC(HDRP(bp));
    PUT(HDRP(bp), PACK_PRE(size, pre, 0));         /* Free block header */   
    PUT(FTRP(bp), PACK_PRE(size, pre, 0));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 

    /* Coalesce if the previous block was free */
    return coalesce(bp);                                                
}

/*
 * find_fit - 给定size，在对应链表中从头查找空闲块
 * 查找空闲块在malloc中使用，使用首次适配
 */
static inline void *find_fit(size_t asize) {
    int idx;
    char* bp;
    for (idx = get_idx(asize); idx < 16; idx++) {
        for (bp=free_list_ptrs[idx]; bp!=mem_heap_lo(); bp=NEXT_PTR(bp)) {
            long curr = GET_SIZE(HDRP(bp));
            long diff = curr - asize;
            if (diff >= 0) {
                return bp;
            }
        }
    }
    return NULL;
}


/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 * 在find_fit之后找到合适的空闲块
 * 0-删除当前的空闲块
 * 1-如果剩余块>=最小块，分割插入到链表中
 * 2-分配块不需要脚部
 * 3-空闲块需要脚部
 */
static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
    size_t rest = csize - asize;

    delete_free_node(bp);

    if (rest >= (2*DSIZE)) { 
        // 分割出来一个最小空闲块
        size_t pre = GET_PRE_ALLOC(HDRP(bp));
        PUT(HDRP(bp), PACK_PRE(asize, pre, 1));
        // PUT(FTRP(bp), PACK(asize, 1)); 分配了不需要脚部了
        bp = NEXT_BLKP(bp); // 现在指向分割出来的块
        PUT(HDRP(bp), PACK_PRE(rest, 2, 0));
        PUT(FTRP(bp), PACK_PRE(rest, 2, 0));
        // 插入这个新空闲
        insert_free_node(bp, rest);
    }
    else { 
        // 没法分割
        SET_ALLOC(HDRP(bp));
        // PUT(HDRP(bp), PACK(csize, 1));
        // PUT(FTRP(bp), PACK(csize, 1)); 不需要脚部
        // 更新后一个块
        SET_PRE_ALLOC(HDRP(NEXT_BLKP(bp)));
        if (GET_ALLOC(HDRP(NEXT_BLKP(bp))) == 0) {
            // 后一个是空设置脚部
            SET_PRE_ALLOC(FTRP(NEXT_BLKP(bp)));
        }
    }
}


/*
 * get_idx - 给定空闲块的size大小，划分到合适的对应链表中
 * 根据当前bp的size决定放在哪一串链表中,一共16串
 * 按照2的幂次进行划分
 */
// static inline size_t get_idx(size_t size) {
//     if (size <= 16)
//         return 0;
//     if (size <= 32)
//         return 1;
//     if (size <= 64)
//         return 2;
//     if (size <= 128)
//         return 3;
//     if (size <= 256)
//         return 4;
//     if (size <= 512)
//         return 5;
//     if (size <= 1024)
//         return 6;
//     if (size <= 2048)
//         return 7;
//     if (size <= 4096)
//         return 8;
//     if (size <= 8192)
//         return 9;
//     if (size <= 16384)
//         return 10;
//     if (size <= 32768)
//         return 11;
//     if (size <= 65536)
//         return 12;
//     if (size <= 1312072)
//         return 13;
//     if (size <= 2624144)
//         return 14;
//     else 
//         return 15;
// }
static inline size_t get_idx(size_t size) {
    if (size <= 16)
        return 0;
    if (size <= 32)
        return 1;
    if (size <= 64)
        return 2;
    if (size <= 96)
        return 3;
    if (size <= 128)
        return 4;
    if (size <= 256)
        return 5;
    if (size <= 384)
        return 6;
    if (size <= 512)
        return 7;
    if (size <= 768)
        return 8;
    if (size <= 1024)
        return 9;
    if (size <= 2048)
        return 10;
    if (size <= 3072)
        return 11;
    if (size <= 4096)
        return 12;
    if (size <= 8192)
        return 13;
    if (size <= 16384)
        return 14;
    // if (size <= 32768)
    //     return 14;
    // if (size <= 65536)
    //     return 14;
    else 
        return 15;
    // if (size <= 1312072)
    //     return 13;
    // if (size <= 2624144)
    //     return 14;
    // else 
    //     return 15;
}

/*
 * delete_free_node - 在分离链表的合适链中删除新的空闲块
 * 删除空闲链表中的节点
 */
static inline void delete_free_node(void *bp) {
    size_t size = GET_SIZE(HDRP(bp));
    size_t idx = get_idx(size);
    char* prev = PREV_PTR(bp);
    char* next = NEXT_PTR(bp);

    if (prev == mem_heap_lo()) {
        // 是头节点
        free_list_ptrs[idx] = next;
        // 后续节点如果有的话需要设置前置
        if (next != mem_heap_lo()) {
            SET_PREV_PTR(next, NULL);
        }
    } else {
        // 不是头节点
        // 说明prev是存在的，可以set next
        SET_NEXT_PTR(prev, next);
        if (next != mem_heap_lo()) {
            SET_PREV_PTR(next, prev);
        }
    }
}

/*
 * insert_free_node - 向分离链表的合适链中插入新的空闲块
 * 合并完成后将新的空闲节点插入到free_lists中的开头
 * 采用的是首次适配
 * 优化：前k个元素排序
 */
static inline void insert_free_node(void *bp, size_t size) {
    size_t free_list_idx = get_idx(size);
    // 获取这个链表的开头地址
    char* prev = free_list_ptrs[free_list_idx];

    // 插入这个bp
    free_list_ptrs[free_list_idx] = bp;
    if (prev == mem_heap_lo()) {
        // bp是最新节点
        SET_PREV_PTR(bp, NULL);
        SET_NEXT_PTR(bp, NULL);
    } else {
        // bp是新的节点
        SET_PREV_PTR(bp, NULL);
        SET_NEXT_PTR(bp, prev);
        SET_PREV_PTR(prev, bp);
    }

}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 * 合并空闲块，在free当前块后被调用，一共有四种情况
 * 关键是：
 * 1 - 如何要合并，删除前或后的空闲块的节点；在合并之后将新的节点插入的合适链表中
 * 2 - 更新合并后的头部和脚部，以及前后块的头部中第二位的信息更新
 */
static inline void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_PRE_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    // 前后都已经分配
    if (prev_alloc && next_alloc) {            /* Case 1 */
        // 设置当前块的头部的第二位是0已经在调用合并之前完成；
        // 先前块不用更新
        // 这里对后一个块的头部设置为：其前一个块状态为free
        SET_PRE_FREE(HDRP(NEXT_BLKP(bp)));
    }

    // 前面的分配了，后面的free了，需要合并后方
    else if (prev_alloc && !next_alloc) {      /* Case 2 */
        // 第一步先把后面的这个free给删除掉，
        // 然后变大size；更新当前块的头部；
        // 更新当前块的尾部（因为尾部用的是头部的size信息）
        delete_free_node(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK_PRE(size, 2, 0));
        PUT(FTRP(bp), PACK_PRE(size, 2, 0));
    }

    // 后面的分配了，前面的free了，需要合并前方
    else if (!prev_alloc && next_alloc) {      /* Case 3 */
        // 第一步把前面的删除 
        // 然后变大size；
        // 后面的已分配需要更新头部的第二位为0；
        // 前面的那个free的头部需要更新状态；
        // 当前块的尾部用前面块头部相同的状态
        delete_free_node(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        SET_PRE_FREE(HDRP(NEXT_BLKP(bp)));// 后面的已分配需要更新头部的第二位为0；

        size_t pre_pre = GET_PRE_ALLOC(HDRP(PREV_BLKP(bp)));

        PUT(HDRP(PREV_BLKP(bp)), PACK_PRE(size, pre_pre, 0));
        PUT(FTRP((bp)), PACK_PRE(size, pre_pre, 0));
        bp = PREV_BLKP(bp);
    }

    // 前后都是free
    else {                                     /* Case 4 */
        // 1-删除俩节点
        // 2-变大size
        // 2.1-更新后后节点的头部(不需要因为后面是free的
        // 后后是分配的，在case1&3中就更新了)
        // 3-获取前前节点的状态
        // 4-更新前块的头部
        // 5-更新后块的尾部
        delete_free_node(PREV_BLKP(bp));
        delete_free_node(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(HDRP(NEXT_BLKP(bp)));

        size_t pre_pre = GET_PRE_ALLOC(HDRP(PREV_BLKP(bp)));

        PUT(HDRP(PREV_BLKP(bp)), PACK_PRE(size, pre_pre, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK_PRE(size, pre_pre, 0));
        bp = PREV_BLKP(bp);
    }

    // 由于是链表需要在free_lists中插入这个新节点
    insert_free_node(bp, size);
    return bp;
}

/*
 * Initialize: return -1 on error, 0 on success.
 * 初始化堆，先开辟16个8字节作为分离链表开头节点指针存放的地方；
 * 然后是2个8字节给序言和结尾
 * 其中这四个4字节分别是：padding，序言头，序言尾，结尾
 * 
 * 然后调用extend_heap来扩充一次堆为后续malloc准备
 * 在malloc中也会检查堆空间是否充足
 */
int mm_init(void) {
    int i = 0;
    // 让空闲链表头指针们放在堆开始的地方
    free_list_ptrs = mem_heap_lo();
    // 从堆开始的地方使用sbrk获得头节点指针的空间，先设置16个
    /*
    // 每个获取4个字节，都是关于堆初始位置的偏移
    // 这样恰好是8个8字节，
    */
    // 接着是序言块的8字节，这样是美美对齐的
    for (i = 0; i < 16; i++) {
        if ((heap_listp = mem_sbrk(DSIZE)) == (void*)-1) {
            return -1;
        }
        free_list_ptrs[i] = mem_heap_lo();
    }
    // 添加8字节作为序言的头&尾
    // 添加8字节作为结尾块的4字节放置
    if ((heap_listp = mem_sbrk(2 * DSIZE)) == (void*)-1) {
        return -1;
    }
    // 注意此时heap_listp是指向序言开头的
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3*WSIZE), PACK(0, 3));     /* Epilogue header */
    heap_listp += (2*WSIZE);                     
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1;
    return 0;
}

/*
 * malloc
 * The  malloc()  function allocates size bytes and 
 * returns a pointer to the allocated memory.  The 
 * memory is not initialized.
 * 
 * 和mm-textbook类似
 */
void *malloc (size_t size) {

    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      

    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                          
        asize = 2*DSIZE;                                        
    else
        asize = DSIZE * ((size + (WSIZE) + (DSIZE-1)) / DSIZE); 

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        place(bp, asize);                  
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;                                  
    place(bp, asize);                                 
    return bp;
}

/*
 * free
 * 释放分配块，更新当前这个块的头部和脚部的分配信息为0；
 * 然后调用coalesce函数来合并可能的前后空闲块
 */
void free (void *ptr) {
    if(!ptr) return;
    if (heap_listp == 0) {
        mm_init();
        return ;
    }

    size_t size = GET_SIZE(HDRP(ptr));
    size_t prev_alloc = GET_PRE_ALLOC(HDRP(ptr));

    if (heap_listp == 0){
        mm_init();
    }
    // 借助先前块是否空闲设置当前释放了的块的头和尾
    PUT(HDRP(ptr), PACK_PRE(size, prev_alloc, 0));
    PUT(FTRP(ptr), PACK_PRE(size, prev_alloc, 0));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(oldptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(oldptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 * 检查整个heap是否合理，静态检查
 * 1-Check epilogue and prologue blocks.
 * 2-Check each block's address alignment.
 * 3-Check heap boundaries.
 * 4-Check each block's header and footer: size (minimum size, alignment), 
    previous/next allo-cate/free bit consistency, 
    header and footer matching each other.
 * 5-Check coalescing: no two consecutive free blocks in the heap
 */
void mm_checkheap(int lineno) {
#ifdef DEBUG
    // bp指向序言
    char* bp = mem_heap_lo() + DSIZE * 16;
    char* heap_start = mem_heap_lo();
    char* heap_end = mem_heap_hi();
    int free_blocks_by_scan = 0;  // 通过扫描堆计数的空闲块数
    /* 1-Check epilogue and prologue blocks. */
    // 检查序言之前的4字节对齐
    if (GET(bp) != 0) {
        dbg_printf("Line %d: Prologue Error: after 16 free_list_ptrs \
            %p should be one word as a padding for the following \
            prologue blocks\n", lineno, bp);
    }

    // 检查序言的大小和已分配
    char* prologue_header = bp + WSIZE;
    size_t prologue_size = GET_SIZE(prologue_header);
    int prologue_alloc = GET_ALLOC(prologue_header);
    if (prologue_size != DSIZE) {
        dbg_printf("Line %d: Prologue Error: prologue \
            size %zu should be %d\n", lineno, prologue_size, DSIZE);
    }
    if (prologue_alloc != 1) {
        dbg_printf("Line %d: Prologue Error: prologue should \
             be allocated\n", lineno);
    }

    // 检查结尾块的大小和已分配
    char* epilogue_header = mem_heap_hi() - WSIZE + 1;
    size_t epilogue_size = GET_SIZE(epilogue_header);
    int epilogue_alloc = GET_ALLOC(epilogue_header);
    if (epilogue_size != 0) {
        dbg_printf("Line %d: Epilogue Error: epilogue \
            size %zu should be 0\n", lineno, epilogue_size);
    }
    if (epilogue_alloc != 1) {
        dbg_printf("Line %d: Epilogue Error: epilogue should \
             be allocated\n", lineno);
    }

    bp = NEXT_BLKP(bp); // 指向第一个块
    char* prev_bp = NULL;
    int prev_alloc = 1;

    while (1) {
        // 保证每一个块都在堆里面
        if (bp < heap_start || bp > heap_end) {
            dbg_printf("Line %d: Boudary Error: block at %p \
                is outside heap boundaries [%p, %p]\n", 
                lineno, bp, heap_start, heap_end);
            break;
        }
        // 检查是否到了结尾
        size_t size = GET_SIZE(HDRP(bp));
        if (size == 0 && GET_ALLOC(HDRP(bp)) == 1) {
            break;
        }
        /* 2-Check each block's address alignment. */
        if (!aligned(bp)) {
            dbg_printf("Line %d: Alignment Error: block at %p \
                 is not %d-byte aligned\n", lineno, bp, ALIGNMENT);
        }
        /* 4-Check each block's header and footer */
        int alloc = GET_ALLOC(HDRP(bp));
        int pre_alloc_bit = GET_PRE_ALLOC(HDRP(bp));
        // 检查最小大小
        if (size < DSIZE) {
            dbg_printf("Line %d: Size Error: block at %p \
                has size %zu < minimum %d\n", lineno, bp, size, DSIZE);
        }
        // 检查大小对齐
        if (size % DSIZE != 0) {
            dbg_printf("Line %d: Alignment Error: block size %zu \
                is not multiple of %d\n", lineno, size, DSIZE);
        }
        // 检查前一个块分配状态的一致性
        int expected_pre_alloc = prev_alloc ? 2 : 0;  // 第二位表示前一个块是否分配
        if (pre_alloc_bit != expected_pre_alloc) {
            dbg_printf("Line %d: Consistency Error: block at %p \
                pre_alloc bit %d doesn't match previous block alloc %d\n", 
                lineno, bp, pre_alloc_bit >> 1, prev_alloc);
        }
        // 对于空闲块，检查头脚部一致性
        if (!alloc) {

            free_blocks_by_scan++;  // 统计空闲块

            char* footer = FTRP(bp);
            size_t footer_size = GET_SIZE(footer);
            int footer_alloc = GET_ALLOC(footer);
            int footer_pre_alloc = GET_PRE_ALLOC(footer);
            if (size != footer_size) {
                dbg_printf("Line %d: Header-Footer Error: block at %p \
                    header size %zu != footer size %zu\n", 
                           lineno, bp, size, footer_size);
            }
            if (footer_alloc != 0) {
                dbg_printf("Line %d: Header-Footer Error: free block \
                    at %p has allocated footer\n", lineno, bp);
            }
            
            if (pre_alloc_bit != footer_pre_alloc) {
                dbg_printf("Line %d: Header-Footer Error: block at %p \
                    header pre_alloc %d != footer pre_alloc %d\n", 
                    lineno, bp, pre_alloc_bit >> 1, footer_pre_alloc >> 1);
            }
        }
        
        /* 5-Check coalescing: no two consecutive free blocks in the heap */
        if (!alloc && !prev_alloc && prev_bp != NULL) {
            dbg_printf("Line %d: Coalescing Error: two consecutive \
                free blocks at %p and %p\n", lineno, prev_bp, bp);
        }
        
        // 移动到下一个块
        prev_bp = bp;
        prev_alloc = alloc;
        bp = NEXT_BLKP(bp);
        
        // 防止无限循环
        if (bp > heap_end + DSIZE) {
            dbg_printf("Line %d: Boundary Error: block \
                traversal exceeded heap end\n", lineno);
            break;
        }
    }


    /* 检查空闲链表 */
    int free_blocks_by_list = 0;  // 手动计数空闲块数
    
    for (int i = 0; i < 16; i++) {
        char* head = free_list_ptrs[i];
        // 跳过空链表
        if (head == heap_start) {
            continue;
        }
        
        char* current = head;
        char* prev_in_list = NULL;  // heap_start 表示 NULL
        
        while (current != heap_start) {
            /* 1-检查所有空闲链表指针是否在 mem_heap_lo() 和 mem_heap_high() 之间 */
            if (current < heap_start || current > heap_end) {
                dbg_printf("Line %d: Free List Pointer Error: pointer \
                    %p in list %d is outside heap [%p, %p]\n", 
                    lineno, current, i, heap_start, heap_end);
                break;
            }
            
            free_blocks_by_list++; 
            
            /* 2-检查每个桶中的块是否在桶的大小范围内（分离链表） */
            size_t size = GET_SIZE(HDRP(current));
            size_t idx = get_idx(size);
            if ((int)idx != i) {
                dbg_printf("Line %d: Free List Bucket Error: block at %p \
                    size %zu should be in bucket %zu, not %d\n", 
                    lineno, current, size, idx, i);
            }
            // 检查块是否真的空闲（应该在链表中）
            if (GET_ALLOC(HDRP(current))) {
                dbg_printf("Line %d: Free List Error: block at %p in list \
                    %d is allocated\n", lineno, current, i);
            }
            
            /* 3-检查next/previous指针的一致性 */
            char* list_prev = PREV_PTR(current);
            char* list_next = NEXT_PTR(current);
            
            // 检查当前节点的prev指针是否指向前一个节点
            if (list_prev != prev_in_list) {
                dbg_printf("Line %d: Free List Pointer  \
                    Consistency Error: \n", lineno);
                dbg_printf("  At node %p in list %d:\n", current, i);
                dbg_printf("  Expected prev: %p (or NULL if %p)\n", 
                          prev_in_list, heap_start);
                dbg_printf("  Actual prev: %p\n", list_prev);
            }
            
            // 检查下一个节点的prev指针是否指向当前节点（如果有下一个节点）
            if (list_next != heap_start) {
                char* next_prev = PREV_PTR(list_next);
                if (next_prev != current) {
                    dbg_printf("Line %d: Free List Pointer \
                        Consistency Error: \n", lineno);
                    dbg_printf("  At node %p in list %d:\n", current, i);
                    dbg_printf("  Node's next points to %p\n", list_next);
                    dbg_printf("  But that node's prev points to %p \
                        (should be %p)\n", next_prev, current);
                }
            }
            
            // 检查指针是否指向有效的堆位置（next指针）
            if (list_next != heap_start && 
                (list_next < heap_start || list_next > heap_end)) {
                dbg_printf("Line %d: Free List Pointer Error: next \
                    pointer %p from node %p in list %d is outside heap\n", 
                           lineno, list_next, current, i);
            }
            
            // 检查指针是否指向有效的堆位置（prev指针）
            if (list_prev != heap_start && 
                (list_prev < heap_start || list_prev > heap_end)) {
                dbg_printf("Line %d: Free List Pointer Error: prev \
                    pointer %p to node %p in list %d is outside heap\n", 
                           lineno, list_prev, current, i);
            }
            
            prev_in_list = current;
            current = list_next;
            // 防止循环链表
            static int max_iterations = 10000;
            if (free_blocks_by_list > max_iterations) {
                dbg_printf("Line %d: Free List Error: possible \
                     circular list in bucket %d\n", lineno, i);
                break;
            }
        }
        // 检查链表头节点的prev指针应该是NULL（heap_start）
        if (head != heap_start && PREV_PTR(head) != heap_start) {
            dbg_printf("Line %d: Free List Error: head node at %p \
                in list %d should have prev = NULL\n", lineno, head, i);
        }
    }
    
    /* 4-通过遍历每个块和通过指针遍历空闲链表来计数空闲块，检查它们是否匹配 */
    if (free_blocks_by_scan != free_blocks_by_list) {
        dbg_printf("Line %d: Free Block Count Error: \n", lineno);
        dbg_printf("  Count by scanning heap: %d free blocks\n", 
            free_blocks_by_scan);
        dbg_printf("  Count by traversing free lists: %d free blocks\n", 
            free_blocks_by_list);
        
        // 额外的调试：找出哪些块在链表中但不应是空闲的，或反之
        if (free_blocks_by_list > free_blocks_by_scan) {
            dbg_printf("  Warning: free lists contain %d extra blocks\n", 
                      free_blocks_by_list - free_blocks_by_scan);
        } else if (free_blocks_by_scan > free_blocks_by_list) {
            dbg_printf("  Warning: %d free blocks are missing from \
                free lists\n", 
                      free_blocks_by_scan - free_blocks_by_list);
        }
    }
#endif
}