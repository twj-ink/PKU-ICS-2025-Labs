/*
 * name: 汤伟杰
 * student-id: 2400016635
 * 
 * PART 1: 实现基本的接收client、发送请求头给server的功能。
 *     -- 策略是，将tiny.c中的doit函数重新写，改为proxy应该有的逻辑，即：
 *        先获取来自client的请求头，然后重新组织头部信息，再转发给server；
 *        然后获取来自server的反馈，并发送给client
 * 
 * PART 2: 实现并发
 *     -- 策略是，每次收到client的请求后，生成一个新的线程，由这个线程去
 *        完成在PART1中之后的任务。此外为了防止竞争，需要进行加锁操作
 * 
 * PART 3: 实现对web内容的缓存
 *     -- 策略是，使用双向链表实现LRU，头部是最新节点，缓存满时从尾部开始淘汰
 *        缓存只存储实际web对象数据，元数据不计入缓存大小
 *        使用pthreads读写锁rwlock
 *        注：实现在cache.h和cache.c中
 */
#include <stdio.h>
#include <pthread.h>
#include "csapp.h"
#include "cache.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

void doit(int fd);
void read_requesthdrs(rio_t *rp, char *req_header_buf);
void parse_uri(char *uri, char *hostname, char *port, char *path);
void forward_request(int clientfd, char *hostname, char *port,
    char *path, char *method, char *headers, char *uri);

void *thread_worker(void *vargp);
// 全局锁
pthread_mutex_t global_mutex = PTHREAD_MUTEX_INITIALIZER; 
// 全局缓存
static cache_t *global_cache = NULL;


void clienterror(int fd, char *cause, char *errnum, 
	char *shortmsg, char *longmsg);

void sigchld_handler(int sig) { // reap all children
    int bkp_errno = errno;
    while(waitpid(-1, NULL, WNOHANG)>0);
    errno=bkp_errno;
}

int main(int argc, char **argv) 
{
    // 处理SIGPIPE
    signal(SIGPIPE, SIG_IGN);
    signal(SIGCHLD, sigchld_handler);

    int listenfd;
    // int connfd;
    int *connfd_ptr;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;

    /* Check command line args */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    // 初始化缓存
    global_cache = cache_create();
    if (!global_cache) {
        fprintf(stderr, "Failed to create cache\n");
        exit(1);
    }

    listenfd = open_listenfd(argv[1]);
    if (listenfd < 0) {
        fprintf(stderr, "Failed to listen on port %s\n", argv[1]);
        exit(1);
    }

    // PART 2:
    printf("Concurrent proxy listening on port %s\n", argv[1]);

    // 此时proxy开始监听可能会来连接的client
    while (1) {
        clientlen = sizeof(clientaddr);

        // 动态分配内存存储client的fd避免race
        connfd_ptr = malloc(sizeof(int));
        if (connfd_ptr == NULL) {
            fprintf(stderr, "Memory allocation failed\n");
            continue;
        }
        // 接收连接
        *connfd_ptr = accept(listenfd, (SA *)&clientaddr, &clientlen); 
        if (*connfd_ptr < 0) {
            fprintf(stderr, "Accept failed: %s\n", strerror(errno));
            free(connfd_ptr);
            continue;
        }


        getnameinfo((SA *) &clientaddr, clientlen, hostname, MAXLINE, 
                    port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        // doit(connfd);
        // close(connfd);

        // 创建新的线程来处理这个请求
        if (pthread_create(&tid, NULL, thread_worker, connfd_ptr) != 0) {
            fprintf(stderr, "Failed to create thread\n");
            close(*connfd_ptr);
            free(connfd_ptr);
        }
    }
    close(listenfd);
    cache_destroy(global_cache);
    return 0;
}


/*
 * doit - 接收一个从client来的HTTP请求，
 *   并解析URI提取Hostname，port，path，
 *   以重构一个GET请求发送给server
 * 
 */
void doit(int fd) 
{
    // int is_static;
    // struct stat sbuf;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], port[MAXLINE], path[MAXLINE];
    // char filename[MAXLINE], cgiargs[MAXLINE];
    char req_header_buf[MAXLINE];
    rio_t rio;

    printf("\t****************************\n");
    printf("\t***   Receiving request  ***\n");
    printf("\t****************************\n");
    /* Read request line and headers */
    rio_readinitb(&rio, fd);
    if (!rio_readlineb(&rio, buf, MAXLINE))
        return;
    printf("Request line: %s", buf);

    // 获取GET，完整的URI，version
    sscanf(buf, "%s %s %s", method, uri, version); 

    // 方法必须是GET
    if (strcasecmp(method, "GET")) { 
        clienterror(fd, method, "501", "Not Implemented",
                    "Tiny does not implement this method");
        return;
    } 

    // 检查URI是否以http://开头 - 不支持HTTPS和其他协议
    if (strncmp(uri, "http://", 7) != 0) {
        printf("Unsupported protocol in URI: %s\n", uri);
        clienterror(fd, uri, "400", "Bad Request",
                    "Proxy only supports HTTP requests with full URL (http://...)");
        return;
    }

    // 读取请求头
    read_requesthdrs(&rio, req_header_buf); 

    /* 调试：打印原始请求头 */
    debug_print_headers(req_header_buf);

    // 解析URI，提取Hostname，可能出现的port，和path用于后续重构
    parse_uri(uri, hostname, port, path);

    // 调试
    printf("Parsed: hostname=%s, port=%s, path=%s\n",
        hostname, port, path);

    printf("\t****************************\n");
    printf("\t***  Checking if cached  ***\n");
    printf("\t****************************\n");
    /* 检查是否在缓存中已经有web内容 */
    printf("Checking if web's content is cached...\n");
    
    if (global_cache) {
        char cached_data[MAX_OBJECT_SIZE];
        size_t cached_size = sizeof(cached_data);

        //!!!!!!!!!!!!!!!此处uri的形式是否需要规整？？？？
        if (cache_get(global_cache, uri, cached_data, &cached_size) == 0) {
            printf("Cache HIT for URI: %s (%zu bytes)\n", uri, cached_size);
            // 将数据直接反馈给client
            rio_writen(fd, cached_data, cached_size);
            return ;
        } else {
            printf("Cache MISS for URI: %s\n", uri);
        }
    }

    printf("\t****************************\n");
    printf("\t*** Forwarding to server ***\n");
    printf("\t****************************\n");
    // TODO: 接下来构造新的请求头向server发送
    printf("Now forward request to %s:%s%s\n", hostname, port, path);

    forward_request(fd, hostname, port, path, method, req_header_buf, uri);
}

/*
 * read_requesthdrs - read HTTP request headers
 */
/* $begin read_requesthdrs */
void read_requesthdrs(rio_t *rp, char *req_header_buf) 
{
    // char buf[MAXLINE];
    // req_header_buf[0]='\0';

    // rio_readlineb(rp, buf, MAXLINE);
    // printf("%s", buf);
    // strcat(req_header_buf, buf);
    // while(strcmp(buf, "\r\n")) {          //line:netp:readhdrs:checkterm
    //     rio_readlineb(rp, buf, MAXLINE);
    //     printf("%s", buf);
    //     strcat(req_header_buf, buf);
    // }
    char buf[MAXLINE];
    
    req_header_buf[0] = '\0';
    
    /* 读取所有请求头直到空行 */
    rio_readlineb(rp, buf, MAXLINE);
    
    while (strcmp(buf, "\r\n") != 0 && strcmp(buf, "\n") != 0 && strcmp(buf, "\r") != 0) {
        /* 确保每行以CRLF结束 */
        size_t len = strlen(buf);
        if (len > 0) {
            /* 如果行没有以\r\n结束，添加\r\n */
            if (len >= 2 && buf[len-2] == '\r' && buf[len-1] == '\n') {
                /* 已经是CRLF格式 */
            } else if (len >= 1 && buf[len-1] == '\n') {
                /* 只有LF，替换为CRLF */
                buf[len-1] = '\0';
                strcat(buf, "\r\n");
            } else {
                /* 没有换行符，添加CRLF */
                strcat(buf, "\r\n");
            }
        }
        
        /* 安全地追加到请求头缓冲区 */
        if (strlen(req_header_buf) + strlen(buf) < MAXLINE - 1) {
            strcat(req_header_buf, buf);
        }
        
        rio_readlineb(rp, buf, MAXLINE);
    }
    return;
}
/* $end read_requesthdrs */

/*
 * parse_uri - 解析uri
 * 
 * uri需要额外解析出来Host是什么，以及可能会有的port
 * uri里面可能会有:8080，需要额外记录这个端口
 * 
 */
void parse_uri(char *uri, char *hostname, char *port, char *path) 
{
    char *ptr;

    // port的默认值是80
    strcpy(port, "80");
    // path的默认值是/
    strcpy(path, "/");

    // 跳过http:// 的前缀，获取主机名
    if (strncmp(uri, "http://", 7) == 0) {
        ptr = uri + 7;
    } else {
        // 没有http，报错
        clienterror(-1, uri, "400", "Bad Request111", 
                   "Proxy requires full URL with \'http://\'");
        return;
    }

    // 提取主机名
    /* strchr返回第一个匹配的指针，无则为NULL */
    char *hostname_end = strchr(ptr, ':');
    char *path_start   = strchr(ptr, '/');

    if (hostname_end && hostname_end < path_start) {
        // uri包含port，http://hostname:port/path
        strncpy(hostname, ptr, hostname_end - ptr);
        hostname[hostname_end - ptr] = '\0';
        // 提取port
        char *port_end = path_start;
        strncpy(port, hostname_end + 1, port_end - (hostname_end + 1));
        port[port_end - (hostname_end + 1)] = '\0';
        // 提取path
        strcpy(path, path_start);
    } else if (hostname_end == NULL && path_start) {
        // uri没有port，http://hostname/path
        strncpy(hostname, ptr, path_start - ptr);
        hostname[path_start - ptr] = '\0';
        strcpy(path, path_start);
    } else {
        // uri只有主机，http://hostname
        strcpy(hostname, ptr);
        strcpy(path, "/");
    }

    // 如果path是空加上/
    if (strlen(path) == 0) {
        strcpy(path, "/");
    }
}

/*
 * forward_request - 向目标服务器转发请求并返回响应给客户端
 * 
 */
void forward_request(int clientfd, char *hostname, char *port,
    char *path, char *method, char *headers, char *uri)
{
    int serverfd;
    rio_t rio;
    char buf[MAXLINE], request[MAXLINE];

    char response_buffer[MAX_OBJECT_SIZE];
    size_t response_size = 0;
    int cacheable = 1;

    printf("Connecting to %s:%s%s\n", hostname, port, path);

    // 连接server
    serverfd = open_clientfd(hostname, port);
    if (serverfd < 0) {
        clienterror(clientfd, hostname, "502", "Bad Gateway",
                    "Proxy failed to connect to the server");
        return ;
    }

    // 初始化rio读取器用于服务器响应
    rio_readinitb(&rio, serverfd);

    // 构造发送给服务器的请求行，用HTTP/1.0
    sprintf(request, "GET %s HTTP/1.0\r\n", path);

    // 添加四个要求的请求头
    // 1. Host
    sprintf(buf, "Host: %s\r\n", hostname);
    strcat(request, buf);
    // 2. User-Agent
    strcat(request, user_agent_hdr);
    // 3. Connection
    strcat(request, "Connection: close\r\n");
    // 4. Proxy-Connection
    strcat(request, "Proxy-Connection: close\r\n");

    // // 转发客户端发送的其他请求头，过滤已经添加的头
    // char *header_line = strtok(headers, "\n");
    // while (header_line) {
    //     /* 跳过空行和已经处理的头 */
    //     if (strlen(header_line) > 0 && 
    //         strncasecmp(header_line, "Host:", 5) != 0 &&
    //         strncasecmp(header_line, "User-Agent:", 11) != 0 &&
    //         strncasecmp(header_line, "Connection:", 11) != 0 &&
    //         strncasecmp(header_line, "Proxy-Connection:", 17) != 0) {
            
    //         /* 确保头以CRLF结束 */
    //         char temp[MAXLINE];
    //         strcpy(temp, header_line);
    //         if (temp[strlen(temp)-1] == '\r') {
    //             temp[strlen(temp)-1] = '\0';
    //         }
    //         sprintf(buf, "%s\r\n", temp);
    //         strcat(request, buf);
    //     }
    //     header_line = strtok(NULL, "\n");
    // }
    // 转发客户端发送的其他请求头，过滤已经添加的头
    printf("Processing client headers (length: %zu)...\n", strlen(headers));
    
    if (strlen(headers) > 0) {
        // 复制headers以便处理（使用strtok_r，因为strtok不是线程安全的）
        char *headers_copy = strdup(headers);
        if (headers_copy == NULL) {
            printf("Memory allocation failed for headers copy\n");
        } else {
            char *saveptr = NULL;
            char *header_line = strtok_r(headers_copy, "\r\n", &saveptr);
            int headers_added = 0;
            
            while (header_line != NULL) {
                if (strlen(header_line) > 0) {
                    // 将头转换为小写以便不区分大小写比较
                    char lower_header[MAXLINE];
                    strncpy(lower_header, header_line, sizeof(lower_header) - 1);
                    lower_header[sizeof(lower_header) - 1] = '\0';
                    
                    for (int i = 0; lower_header[i]; i++) {
                        lower_header[i] = tolower(lower_header[i]);
                    }
                    
                    /* 检查是否是需要跳过的头 */
                    int skip = 0;
                    if (strstr(lower_header, "host:") == lower_header ||
                        strstr(lower_header, "user-agent:") == lower_header ||
                        strstr(lower_header, "connection:") == lower_header ||
                        strstr(lower_header, "proxy-connection:") == lower_header) {
                        skip = 1;
                        printf("Skipping header: %s\n", header_line);
                    }
                    
                    if (!skip) {
                        // 添加这个头到请求中
                        snprintf(buf, sizeof(buf), "%s\r\n", header_line);
                        
                        // 检查缓冲区是否有足够空间
                        if (strlen(request) + strlen(buf) < sizeof(request) - 2) {
                            strcat(request, buf);
                            headers_added++;
                            printf("Adding header: %s\n", header_line);
                        } else {
                            printf("Warning: Request buffer full, cannot add more headers\n");
                            break;
                        }
                    }
                }
                header_line = strtok_r(NULL, "\r\n", &saveptr);
            }
            
            printf("Added %d additional headers from client\n", headers_added);
            free(headers_copy);
        }
    }
    
    // 添加结束空行 
    strcat(request, "\r\n");
    
    // 添加结束空行 
    strcat(request, "\r\n");
    printf("Forwarding request to server:\n%s", request);

    // 发送请求道server
    Rio_writen(serverfd, request, strlen(request));

    printf("\t****************************\n");
    printf("\t***  Reporting to client ***\n");
    printf("\t****************************\n");
    // 读取server响应并转发给client
    ssize_t n;
    while ((n = rio_readlineb(&rio, buf, MAXLINE)) > 0) {
        rio_writen(clientfd, buf, n);

        // 如果响应可缓存且未超过大小限制，保存到缓存缓冲区
        if (cacheable && global_cache && response_size+n <= MAX_OBJECT_SIZE){
            if (response_size + n <= sizeof(response_buffer)) {
                memcpy(response_buffer + response_size, buf, n);
                response_size += n;
            } else {
                // 响应超过最大缓存对象大小，标记为不可缓存
                cacheable = 0;
                printf("Response too large for cache (%zu bytes so far)", 
                               response_size + n);
            }
        }

        // 调试：打印响应头
        if (strstr(buf, "\r\n\r\n") || strstr(buf, "\n\n")) {
            printf("Response headers sent to client\n");
        }
    }

    // 关闭server连接
    close(serverfd);

    // 如果响应可缓存，保存到缓存
    if (cacheable && global_cache && response_size > 0) {
        if (cache_put(global_cache, uri, response_buffer, response_size) == 0) {
            printf("Cached response for URI: %s (%zu bytes)", 
                           uri, response_size);
        } else {
            printf("Failed to cache response for URI: %s", uri);
        }
    }
    
    printf("Request completed for %s:%s%s", hostname, port, path);
}

/*
 * thread_worker - 线程工作函数，处理单个客户端连接
 * 策略是："spawn a new thread to process each new incoming request"
 * 
 * 参数：
 *   vargp - 指向客户端连接描述符的指针
 * 
 * 功能：
 *   1. 分离线程以自动回收资源
 *   2. 从参数中获取客户端连接描述符
 *   3. 调用doit处理HTTP请求
 *   4. 关闭连接并释放资源
 */
void *thread_worker(void *vargp) 
{
    // 分离线程，自动回收资源
    pthread_detach(pthread_self());
    // 从参数中获取client的fd
    int connfd = *((int *)vargp);
    free(vargp); // 释放这个fd的动态分配内存

    // 开始进行doit
    doit(connfd);
    close(connfd);
    return NULL;
}

/*
 * clienterror - returns an error message to the client
 */
/* $begin clienterror */
void clienterror(int fd, char *cause, char *errnum, 
		 char *shortmsg, char *longmsg) 
{
    char resp[MAXBUF], body[MAXBUF], buf[MAXLINE];

    /* Build the HTTP response body */
    strcpy(body, "<html><title>Tiny Error</title>");
    strcat(body, "<body bgcolor=""ffffff"">\r\n");
    sprintf(buf, "%s: %s\r\n", errnum, shortmsg);
    strcat(body, buf);
    sprintf(buf, "<p>%s: %s\r\n", longmsg, cause);
    strcat(body, buf);
    strcat(body, "<hr><em>The Tiny Web server</em>\r\n");

    /* Build the HTTP response headers*/
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    strcpy(resp, buf);
    strcat(resp, "Content-type: text/html\r\n");
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    strcat(resp, buf);

    rio_writen(fd, resp, strlen(resp));
    rio_writen(fd, body, strlen(body));
}
/* $end clienterror */

/*
 * debug_print_headers - 打印原始请求头用于调试
 */
void debug_print_headers(const char *headers) {
    printf("=== Raw headers from client ===\n");
    
    if (strlen(headers) == 0) {
        printf("(no headers)\n");
    } else {
        char temp_headers[MAXLINE * 10];
        strncpy(temp_headers, headers, sizeof(temp_headers) - 1);
        temp_headers[sizeof(temp_headers) - 1] = '\0';
        
        char *header_line = strtok(temp_headers, "\r\n");
        while (header_line) {
            if (strlen(header_line) > 0) {
                printf("  [CLIENT] %s\n", header_line);
            }
            header_line = strtok(NULL, "\r\n");
        }
    }
    printf("=== End of headers ===\n");
}