/*
 * name: 汤伟杰
 * ID: 2400016635
 * 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 * 
 * s = 5, E = 1, b = 5
 * 一共有1024字节，除以4是256个int，对A和B进行8x8分块，
 * 每个块是64个int，俩加起来是128个int，占cache的一半
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */

/*
 * 函数说明：
 * 1. 32-32矩阵：使用8x8分块，具体原因见：
 *    https://zhuanlan.zhihu.com/p/1970548196217431364
 *    
 *    再借鉴别人的做法：https://zhuanlan.zhihu.com/p/387662272
 *    达到理论值，先将A的块直接复制到B中，此时cache里面全是B的8行；
 *    再对B中进行转置就会全部hit，这样即使在对角线上也不会抖动
 *    每一个块都是理论值16次miss，乘16块就是256
 * 2. 64-64矩阵：每4行循环一个cache，为了减少eviction采用4x4分块，
 *    但是可以先按照8x8分块，再4×4分块；
 *    把A的8-8块分成4份按照顺时针标记为1234，
 *    把A[1]->B[1];A[2]->B[2]
 *    然后A[3],B[2] --> B[2],B[3]
 *    最后A[4]->B[4]
 *    我原本按照4×4的效果很好但是没有满分，这个思路也是参考上面的做法
 * 3. 68-60矩阵：先对64-56按照类似于第一个矩阵的8×8分块；
 *    剩下的按照4×4分块就好了，
 *    为了避免抖动采用了和第一个矩阵一样的优化思路，满分了
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{

    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int i, j, ii, jj, a0, a1, a2, a3, a4, a5, a6, a7;

    if (N == 32 && M == 32) 
    {
        for (ii = 0; ii < N; ii += 8) {
            for (jj = 0; jj < M; jj += 8) {
                for (i = ii; i < ii + 8; i++) {
                    a0 = A[i][jj];
                    a1 = A[i][jj+1];
                    a2 = A[i][jj+2];
                    a3 = A[i][jj+3];
                    a4 = A[i][jj+4];
                    a5 = A[i][jj+5];
                    a6 = A[i][jj+6];
                    a7 = A[i][jj+7];
                    
                    // B[jj][i] = a0;
                    // B[jj+1][i] = a1;
                    // B[jj+2][i] = a2;
                    // B[jj+3][i] = a3;
                    // B[jj+4][i] = a4;
                    // B[jj+5][i] = a5;
                    // B[jj+6][i] = a6;
                    // B[jj+7][i] = a7;
                    B[jj+(i-ii)][ii+0] = a0;
                    B[jj+(i-ii)][ii+1] = a1;
                    B[jj+(i-ii)][ii+2] = a2;
                    B[jj+(i-ii)][ii+3] = a3;
                    B[jj+(i-ii)][ii+4] = a4;
                    B[jj+(i-ii)][ii+5] = a5;
                    B[jj+(i-ii)][ii+6] = a6;
                    B[jj+(i-ii)][ii+7] = a7;
                }
                for (j = 0; j < 8; j++) {
                    for (i = 0; i < j; i++) {
                        a0 = B[jj + j][ii + i];
                        B[jj + j][ii + i] = B[jj + i][ii + j];
                        B[jj + i][ii + j] = a0;
                    }
                }
            }
        }
    }

    else if ((N == 64 && M == 64)) 
    {
        for (ii = 0; ii < N; ii += 8) {
            for (jj = 0; jj < M; jj += 8) {
                // 处理左上 4×8
                for (i = ii; i < ii + 4; i++) {
                    a0 = A[i][jj];
                    a1 = A[i][jj+1];
                    a2 = A[i][jj+2];
                    a3 = A[i][jj+3];
                    a4 = A[i][jj+4];
                    a5 = A[i][jj+5];
                    a6 = A[i][jj+6];
                    a7 = A[i][jj+7];
                    
                    B[jj][i]   = a0;
                    B[jj+1][i] = a1;
                    B[jj+2][i] = a2;
                    B[jj+3][i] = a3;
                    
                    // 右半部分先暂存在 B 的4x8的右侧
                    B[jj][i+4]   = a4;
                    B[jj+1][i+4] = a5;
                    B[jj+2][i+4] = a6;
                    B[jj+3][i+4] = a7;
                }
                // 再处理右下 4×4（交换 B 中的缓冲区内容）
                for (j = jj; j < jj + 4; j++) {
                    a4 = A[ii+4][j];
                    a5 = A[ii+5][j];
                    a6 = A[ii+6][j];
                    a7 = A[ii+7][j];

                    a0 = B[j][ii+4];
                    a1 = B[j][ii+5];
                    a2 = B[j][ii+6];
                    a3 = B[j][ii+7];
                    
                    B[j][ii+4] = a4;
                    B[j][ii+5] = a5;
                    B[j][ii+6] = a6;
                    B[j][ii+7] = a7;

                    B[j+4][ii]   = a0;
                    B[j+4][ii+1] = a1;
                    B[j+4][ii+2] = a2;
                    B[j+4][ii+3] = a3;
                }

                // 最后处理右下 4×4
                for (i = ii + 4; i < ii + 8; i++) {
                    a0 = A[i][jj+4];
                    a1 = A[i][jj+5];
                    a2 = A[i][jj+6];
                    a3 = A[i][jj+7];
                    
                //     B[jj+4][i] = a0;
                //     B[jj+5][i] = a1;
                //     B[jj+6][i] = a2;
                //     B[jj+7][i] = a3;
                // }
                    B[jj+(i-ii)][ii+4] = a0;
                    B[jj+(i-ii)][ii+5] = a1;
                    B[jj+(i-ii)][ii+6] = a2;
                    B[jj+(i-ii)][ii+7] = a3;
                }
                for (j = 4; j < 8; j++) {
                    for (i = 4; i < j; i++) {
                        a0 = B[jj + j][ii + i];
                        B[jj + j][ii + i] = B[jj + i][ii + j];
                        B[jj + i][ii + j] = a0;
                    }
                }
            }
        }
    }

    else if (M == 60 && N == 68) 
    {
        for (ii = 0; ii < 64; ii += 8) {
            for (jj = 0; jj < 56; jj += 8) {
                for (i = ii; i < ii + 8; i++) {
                    a0 = A[i][jj];
                    a1 = A[i][jj+1];
                    a2 = A[i][jj+2];
                    a3 = A[i][jj+3];
                    a4 = A[i][jj+4];
                    a5 = A[i][jj+5];
                    a6 = A[i][jj+6];
                    a7 = A[i][jj+7];
                    
                    // B[jj][i] = a0;
                    // B[jj+1][i] = a1;
                    // B[jj+2][i] = a2;
                    // B[jj+3][i] = a3;
                    // B[jj+4][i] = a4;
                    // B[jj+5][i] = a5;
                    // B[jj+6][i] = a6;
                    // B[jj+7][i] = a7;
                    B[jj+(i-ii)][ii+0] = a0;
                    B[jj+(i-ii)][ii+1] = a1;
                    B[jj+(i-ii)][ii+2] = a2;
                    B[jj+(i-ii)][ii+3] = a3;
                    B[jj+(i-ii)][ii+4] = a4;
                    B[jj+(i-ii)][ii+5] = a5;
                    B[jj+(i-ii)][ii+6] = a6;
                    B[jj+(i-ii)][ii+7] = a7;
                }
                for (j = 0; j < 8; j++) {
                    for (i = 0; i < j; i++) {
                        a0 = B[jj + j][ii + i];
                        B[jj + j][ii + i] = B[jj + i][ii + j];
                        B[jj + i][ii + j] = a0;
                    }
                }
            }
        }
    

        for (ii = 64; ii < N; ii += 4) {
            for (jj = 0; jj < M - 4; jj += 4) {
                for (i = ii; i < ii + 4; i++) {
                    a0 = A[i][jj];
                    a1 = A[i][jj+1];
                    a2 = A[i][jj+2];
                    a3 = A[i][jj+3];
                    
                    B[jj+(i-ii)][ii+0] = a0;
                    B[jj+(i-ii)][ii+1] = a1;
                    B[jj+(i-ii)][ii+2] = a2;
                    B[jj+(i-ii)][ii+3] = a3;
                }
                for (j = 0; j < 4; j++) {
                    for (i = 0; i < j; i++) {
                        a0 = B[jj + j][ii + i];
                        B[jj + j][ii + i] = B[jj + i][ii + j];
                        B[jj + i][ii + j] = a0;
                    }
                }
            }
        }
        for (ii = 0; ii < N; ii += 4) {
            for (jj = 56; jj < M; jj += 4) {
                for (i = ii; i < ii + 4; i++) {
                    a0 = A[i][jj];
                    a1 = A[i][jj+1];
                    a2 = A[i][jj+2];
                    a3 = A[i][jj+3];
                    
                    B[jj+(i-ii)][ii+0] = a0;
                    B[jj+(i-ii)][ii+1] = a1;
                    B[jj+(i-ii)][ii+2] = a2;
                    B[jj+(i-ii)][ii+3] = a3;
                }
                for (j = 0; j < 4; j++) {
                    for (i = 0; i < j; i++) {
                        a0 = B[jj + j][ii + i];
                        B[jj + j][ii + i] = B[jj + i][ii + j];
                        B[jj + i][ii + j] = a0;
                    }
                }
            }
        }
    }

    

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

