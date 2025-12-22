/* 
 * tsh - A tiny shell program with job control
 * 
 * name: 汤伟杰
 * ID: 2400016635
 * 
 * 主要的改动：
 * 1. 在main之后、eval之前，增加几个辅助函数，执行内置指令
 * 2. 在eval中补充了非内置指令时，采用fork+execve创建子进程的代码
 * 3. 在后面补充了各个信号处理函数的内容
 * 4. 为了IO实现需要用open+dup2函数来重定向file descriptor进行文件读写
 * 
 * 关键是避免竞争，使用sigprocmask函数来阻塞和接收信号；
 * 以及前台作业需要父进程显式等待结束，使用sigsuspend函数非常方便
 * 
 * 问题：好像提供的31个trace数据有点弱，某些功能测试不到（就这样吧）
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <errno.h>
#include <stdarg.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF         0   /* undefined */
#define FG            1   /* running in foreground */
#define BG            2   /* running in background */
#define ST            3   /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Parsing states */
#define ST_NORMAL   0x0   /* next token is an argument */
#define ST_INFILE   0x1   /* next token is the input file */
#define ST_OUTFILE  0x2   /* next token is the output file */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

struct cmdline_tokens {
    int argc;               /* Number of arguments */
    char *argv[MAXARGS];    /* The arguments list */
    char *infile;           /* The input file */
    char *outfile;          /* The output file */
    enum builtins_t {       /* Indicates if argv[0] is a builtin command */
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG,
        BUILTIN_KILL,
        BUILTIN_NOHUP} builtins;
};

/* End global variables */

/* Function prototypes */
void eval(char *cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, struct cmdline_tokens *tok); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *job_list);
int maxjid(struct job_t *job_list); 
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *job_list, pid_t pid); 
pid_t fgpid(struct job_t *job_list);
struct job_t *getjobpid(struct job_t *job_list, pid_t pid);
struct job_t *getjobjid(struct job_t *job_list, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *job_list, int output_fd);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
ssize_t sio_put(const char *fmt, ...);
void sio_error(char s[]);

typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);


/*
 * main - The shell's main routine 
 */
int 
main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];    /* cmdline for fgets */
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
            break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
            break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
            break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1) {

        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin)) { 
            /* End of file (ctrl-d) */
            printf ("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }
        
        /* Remove the trailing newline */
        cmdline[strlen(cmdline)-1] = '\0';
        
        /* Evaluate the command line */
        eval(cmdline);
        
        fflush(stdout);
        fflush(stdout);
    } 
    
    exit(0); /* control never reaches here */
}

/*
 * FG_fun - 内置命令fg时调用 
 * 转到前台之后要显式等待结束，要不然在trace21会少一行输出！！！！！
 */
void
FG_fun(struct cmdline_tokens tok)
{
    int olderrno = errno;

    struct job_t *job;
    pid_t pid;
    int jid;

    /* bg %1 */
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        job = getjobjid(job_list, jid);
    } else {
        pid = atoi(tok.argv[1]);
        job = getjobpid(job_list, pid);
    }
    
    sigset_t mask_all, prev_all;
    (void) sigfillset(&mask_all);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    pid = job->pid;
    /* 发送SIGCONT信号并改变成BG的state */
    if (kill(-pid, SIGCONT) < 0) {
        if (errno != ESRCH) {
            unix_error("kill error in FG_fun");
        }
    }
    job->state = FG;
    // printf("[%d] (%d) %s\n", job->jid, pid, job->cmdline);
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);

    /* 显式等待这个FG完成 */
    (void) sigemptyset(&mask_all);
    (void) sigemptyset(&prev_all);
    (void) sigaddset(&mask_all, SIGCHLD);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    while (pid == fgpid(job_list)) {
        sigsuspend(&prev_all); /*允许接收SIGCHLD*/
    }
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);

    errno = olderrno;
}

/*
 * BG_fun - 内置命令bg时调用 
 */
void
BG_fun(struct cmdline_tokens tok)
{
    int olderrno = errno;

    struct job_t *job;
    pid_t pid;
    int jid;

    /* bg %1 */
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        job = getjobjid(job_list, jid);
    } else {
        pid = atoi(tok.argv[1]);
        job = getjobpid(job_list, pid);
    }
    
    sigset_t mask_all, prev_all;
    (void) sigfillset(&mask_all);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    pid = job->pid;
    /* 发送SIGCONT信号并改变成BG的state */
    if (kill(-pid, SIGCONT) < 0) {
        if (errno != ESRCH) {
            unix_error("kill error in BG_fun");
        }
    }
    job->state = BG;
    printf("[%d] (%d) %s\n", job->jid, pid, job->cmdline);
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);

    errno = olderrno;
}

/*
 * KILL_fun - 内置命令kill时调用 
 */
void
KILL_fun(struct cmdline_tokens tok)
{
    int olderrno = errno;

    struct job_t *job;
    pid_t pid, abs_pid;
    int jid, abs_jid;

    /* kill %1 */
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        abs_jid = (jid > 0) ? jid : -jid;
        job = getjobjid(job_list, abs_jid);
        if (job == NULL) {
            /*process group*/
            if (tok.argv[1][1]=='-') {
                printf("%%%d: No such process group\n", abs_jid);
            } else { /*process*/
                printf("%%%d: No such job\n", abs_jid);
            }
            return;
        }
    } else {
        pid = atoi(tok.argv[1]);
        abs_pid = (pid > 0) ? pid : -pid;
        job = getjobpid(job_list, abs_pid);
        if (job == NULL) {
            /*process group*/
            if (tok.argv[1][1]=='-') {
                printf("(%d): No such process group\n", abs_pid);
            } else { /*process*/
                printf("(%d): No such process\n", abs_pid);
            }
            return;
        }
    }
    
    sigset_t mask_all, prev_all;
    (void) sigfillset(&mask_all);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    pid = job->pid;
    if (kill(pid, SIGTERM) < 0) {
        if (errno != ESRCH) { 
            unix_error("kill error in KILL_fun");
        }
    }
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);

    errno = olderrno;
}

/*
 * NOHUP_fun - nohup时调用，直接提取后面的参数，阻塞SIGHUP信号
 * 调用eval执行后面的指令即可
 */
void
NOHUP_fun(char *cmdline)
{
    sigset_t mask_one, prev_one;
    (void) sigaddset(&mask_one, SIGHUP);
    (void) sigprocmask(SIG_BLOCK, &mask_one, &prev_one);
    eval(cmdline + 6);
    (void) sigprocmask(SIG_SETMASK, &prev_one, NULL);
}

/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
 */
void 
eval(char *cmdline) 
{
    int bg;              /* should the job run in bg or fg? */
    struct cmdline_tokens tok;

    /* Parse command line */
    bg = parseline(cmdline, &tok); 

    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    /*
     * 文件重定向
     * 先把宏copy过来，STDIN_FILENO，STDOUT_FILENO 
     * int dup(int fd) 复制fd返回新的fd指向原文件fd相同的文件
     * int dup2(int fd1, int fd2) 关闭fd2指向fd1所指向的文件，返回fd2
     * int open(const char *pathname, int flags, mode_t mode)
     *   flags: O_RDONLY O_WRONLY
     *   on success 返回新的fd
     * 利用open来获取需要打开文件的file descriptor，
     * 再使用dup2来把标准输入输出重定向到这个fd，执行命令
     */
    int input_fd = STDIN_FILENO;
    if (tok.infile) {
        input_fd = open(tok.infile, O_RDONLY, 0);
        if (input_fd < 0) {
            printf("Cannot open %s for input\n", tok.infile);
            return;
        }
    }
    int output_fd = STDOUT_FILENO;
    if (tok.outfile) {
        output_fd = open(tok.outfile, O_WRONLY|O_CREAT|O_TRUNC, 0);
        if (output_fd < 0) {
            printf("Cannot open %s for output\n", tok.outfile);
            if (input_fd != STDIN_FILENO) close(input_fd);
            return;
        }
    }
    /* Save standard IO */
    int std_in = dup(STDIN_FILENO);
    if (std_in < 0) unix_error("dup error for stdin in eval");
    int std_out = dup(STDOUT_FILENO);
    if (std_out < 0) unix_error("dup error for stdout in eval");
    /* 使用dup2重定向标准到文件 */
    if (dup2(input_fd, STDIN_FILENO) < 0) {
        unix_error("dup2 error for stdin in eval");
        close(std_in);
        close(std_out);
        if (input_fd != STDIN_FILENO) close(input_fd);
        if (output_fd != STDOUT_FILENO) close(output_fd);
        return;
    }
    if (dup2(output_fd, STDOUT_FILENO) < 0) {
        unix_error("dup2 error for stdout in eval");
        close(std_in);
        close(std_out);
        if (input_fd != STDIN_FILENO) close(input_fd);
        if (output_fd != STDOUT_FILENO) close(output_fd);
        return;
    }


    /* FIRST STEP: 先判定是不是内置命令 */
    switch (tok.builtins)
    {
        pid_t pid;

    /* QUIT 命令 
     * 立即退出shell 
     */
    case BUILTIN_QUIT:
        /* 效果和ctrl+d一致，但是不用输出\n */
        // printf ("\n");
        fflush(stdout);
        fflush(stderr);
        exit(0);
        break;
    
    /* JOBS 命令 
     * List the running and stopped background jobs 
     */
    case BUILTIN_JOBS:
        /* 直接用listjob */
        listjobs(job_list, output_fd);
        break;
    
    /* FG 命令
     * restarts job by sending it a SIGCONT signal,
     * and then runs it in the foreground
     */
    case BUILTIN_FG:
        FG_fun(tok);
        break;

    /* BG 命令 
     * restarts job by sending it a SIGCONT signal, 
     * and then runs it in the background 
     */
    case BUILTIN_BG:
        BG_fun(tok);
        break;

    /* KILL 命令
     * kills a job in the job list, or a process group 
     * by sending each relevant process a SIGTERM signal.
     * 由于这里一个进程就是单独是一个组也是单独的一个job，所以
     * 直接kill job就好了
     */
    case BUILTIN_KILL:
        KILL_fun(tok);
        break;

    /* NOHUP 命令 
     * assume [command] to be the path of an executable file 
     * followed by its arguments
     */
    case BUILTIN_NOHUP:
        NOHUP_fun(cmdline);
        break;
    
    /* 非内置命令 */
    case BUILTIN_NONE:
        sigset_t mask_one, prev_one, mask_all;
        /* return 0 on success, -1 on error */
        (void) sigemptyset(&mask_one);
        (void) sigemptyset(&mask_all);
        (void) sigemptyset(&prev_one);
        (void) sigaddset(&mask_one, SIGCHLD);
        /* 这里如果不阻塞SIGINT会在trace08中出现竞争 */
        (void) sigaddset(&mask_one, SIGINT);
        /* 这里如果不阻塞SIGTSTP会在trace09中出现竞争 */
        (void) sigaddset(&mask_one, SIGTSTP);
        (void) sigfillset(&mask_all);
        // (void) sigprocmask(SIG_BLOCK, &mask_one, &prev_one);
        (void) sigprocmask(SIG_BLOCK, &mask_one, &prev_one);

        if ((pid = fork()) == 0) 
        {
            /* 子进程 */
            /* 在fork之后execve之前setgpid */
            // (void) setpgid(0, 0); /* return 0 on success */
            if (setpgid(0, 0) < 0) {
                unix_error("setpgid error in child");
                exit(1);
            }
            /* 临时解除阻塞 */
            (void) sigprocmask(SIG_SETMASK, &prev_one, NULL);
            if (execve(tok.argv[0], tok.argv, environ) < 0) {
                printf("%s : Command not found.\n", tok.argv[0]); 
                fflush(stdout);
                exit(0);
            }
        } 
        else 
        {
            /* 父进程 */
            if (!bg) 
            {
                /* 前台作业，需要显式等待子进程结束；同时加入joblist */
                /* AVOID RACE */
                (void) sigprocmask(SIG_BLOCK, &mask_all, NULL);
                addjob(job_list, pid, FG, cmdline);
                (void) sigprocmask(SIG_SETMASK, &prev_one, NULL);
                /* 显式地等待子进程结束 */
                while (pid == fgpid(job_list)) {
                    /* 初始pid是子进程的，fgpid也是 */
                    sigsuspend(&prev_one); /*允许接收SIGCHLD*/
                }
                /* 现在可以收到SIGCHLD，进入处理函数 */
            }
            else 
            {
                /* 后台作业 */
                /* AVOID RACE */
                (void) sigprocmask(SIG_BLOCK, &mask_all, NULL);
                addjob(job_list, pid, BG, cmdline);
                (void) sigprocmask(SIG_SETMASK, &prev_one, NULL);
                /* 打印tshref中的消息 */
                printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
            }

        }
        break;
    }

    // /* Restore standard IO */
    // dup2(std_in, STDIN_FILENO);
    // dup2(std_out, STDOUT_FILENO);
    if (tok.infile) {
        close(input_fd);
        dup2(std_in, STDIN_FILENO);
    }
    if (tok.outfile) {
        close(output_fd);
        dup2(std_out, STDOUT_FILENO);
    }
    
    

    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters 
 *             enclosed in single or double quotes are treated as a single
 *             argument. 
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job  
 *  -1:        if cmdline is incorrectly formatted
 * 
 * Note:       The string elements of tok (e.g., argv[], infile, outfile) 
 *             are statically allocated inside parseline() and will be 
 *             overwritten the next time this function is invoked.
 */
int 
parseline(const char *cmdline, struct cmdline_tokens *tok) 
{

    static char array[MAXLINE];          /* holds local copy of command line */
    const char delims[10] = " \t\r\n";   /* argument delimiters (white-space) */
    char *buf = array;                   /* ptr that traverses command line */
    char *next;                          /* ptr to the end of the current arg */
    char *endbuf;                        /* ptr to end of cmdline string */
    int is_bg;                           /* background job? */

    int parsing_state;                   /* indicates if the next token is the
                                            input or output file */

    if (cmdline == NULL) {
        (void) fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void) strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf) {
        /* Skip the white-spaces */
        buf += strspn (buf, delims);
        if (buf >= endbuf) break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<') {
            if (tok->infile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>') {
            if (tok->outfile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf ++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"') {
            /* Detect quoted tokens */
            buf++;
            next = strchr (buf, *(buf-1));
        } else {
            /* Find next delimiter */
            next = buf + strcspn (buf, delims);
        }
        
        if (next == NULL) {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void) fprintf (stderr, "Error: unmatched %c.\n", *(buf-1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state) {
        case ST_NORMAL:
            tok->argv[tok->argc++] = buf;
            break;
        case ST_INFILE:
            tok->infile = buf;
            break;
        case ST_OUTFILE:
            tok->outfile = buf;
            break;
        default:
            (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
            return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS-1) break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL) {
        (void) fprintf(stderr,
                       "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0)  /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit")) {                 /* quit command */
        tok->builtins = BUILTIN_QUIT;
    } else if (!strcmp(tok->argv[0], "jobs")) {          /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    } else if (!strcmp(tok->argv[0], "bg")) {            /* bg command */
        tok->builtins = BUILTIN_BG;
    } else if (!strcmp(tok->argv[0], "fg")) {            /* fg command */
        tok->builtins = BUILTIN_FG;
    } else if (!strcmp(tok->argv[0], "kill")) {          /* kill command */
        tok->builtins = BUILTIN_KILL;
    } else if (!strcmp(tok->argv[0], "nohup")) {            /* kill command */
        tok->builtins = BUILTIN_NOHUP;
    } else {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc-1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}


/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The 
 *     handler reaps all available zombie children, but doesn't wait 
 *     for any other currently running children to terminate.  
 */
void 
sigchld_handler(int sig) 
{
    int olderrno = errno; /* save old errno */

    sigset_t mask_all, prev_all;
    pid_t pid;
    int status;
    struct job_t *job;
    (void) sigfillset(&mask_all);

    while ((pid = waitpid(-1, &status, 
                    WNOHANG | WUNTRACED | WCONTINUED)) > 0) {
        job = getjobpid(job_list, pid);

        /* 正常终止，deletejob */
        if (WIFEXITED(status)) {
            /* 阻塞信号保证能够删除进程 */
            (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            deletejob(job_list, pid);
            (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);
        }
        
        /* 由信号终止，deletejob，打印信号 */
        /* 来自sigint_handler的kill发送的SIGINT */
        if (WIFSIGNALED(status)) {
            sio_put("Job [%d] (%d) terminated by signal %d\n", 
                job->jid, pid, WTERMSIG(status));
            /* 阻塞信号保证能够删除进程 */
            (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            deletejob(job_list, pid);
            (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);
        }

        /* 由信号停止，更新job的状态到ST */
        if (WIFSTOPPED(status)) {
            sio_put("Job [%d] (%d) stopped by signal %d\n", 
                job->jid, pid, WSTOPSIG(status));
            /* 阻塞信号保证能够设置状态 */
            (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            job->state = ST;
            (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);

        }

        /* 由信号继续，且job状态是ST，改为BG后台运行 */
        if (WIFCONTINUED(status) && job->state == ST) {
            /* 阻塞信号保证能够设置状态 */
            (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            job->state = BG;
            (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);
        }
    }



    if (pid < 0 && errno != ECHILD) {
        unix_error("Waitpid error");
    }

    errno = olderrno;   /* restore old errno */
    
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void 
sigint_handler(int sig) 
{
    /* 
     * 当按下ctrl+c的时候，发送一个终止信号，被这个函数获取，
     * 然后其向当前前台作业发送SIGINT信号，这个信号导致作业终止，
     * 发送SIGCHLD信号再被捕获，进入处理函数deletejob
     */
    int olderrno = errno;

    sigset_t mask_all, prev_all;

    pid_t pid;
    pid = fgpid(job_list);
    (void) sigfillset(&mask_all);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if (pid) {
        /* 如果有前台作业，用kill发送终止信号 */
        if (kill(-pid, SIGINT) < 0 && errno != ESRCH) {
            unix_error("kill error in sigint_handler");
        }
    }
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);
    errno = olderrno;
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void 
sigtstp_handler(int sig) 
{
    /* 
     * 当按下ctrl+z的时候，发送一个停止stop信号，被这个函数获取，
     * 然后其向当前前台作业发送SIGTSTP信号，这个信号导致作业停止，
     * 发送SIGCHLD信号再被捕获，修改state状态
     */
    int olderrno = errno;

    sigset_t mask_all, prev_all;

    pid_t pid;
    pid = fgpid(job_list);
    (void) sigfillset(&mask_all);
    (void) sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    if (pid) {
        /* 如果有前台作业，用kill发送停止信号 */
        if (kill(-pid, SIGTSTP) < 0 && errno != ESRCH) {
            unix_error("kill error in sigtstp_handler");
        }
    }
    (void) sigprocmask(SIG_SETMASK, &prev_all, NULL);
    errno = olderrno;
    return;
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void 
sigquit_handler(int sig) 
{
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}



/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void 
clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void 
initjobs(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int 
maxjid(struct job_t *job_list) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max)
            max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int 
addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == 0) {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS)
                nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if(verbose){
                printf("Added job [%d] %d %s\n",
                       job_list[i].jid,
                       job_list[i].pid,
                       job_list[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int 
deletejob(struct job_t *job_list, pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == pid) {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list)+1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t 
fgpid(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG)
            return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t 
*getjobpid(struct job_t *job_list, pid_t pid) {
    int i;

    if (pid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
            return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *job_list, int jid) 
{
    int i;

    if (jid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid)
            return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int 
pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void 
listjobs(struct job_t *job_list, int output_fd) 
{
    int i;
    char buf[MAXLINE << 2];

    for (i = 0; i < MAXJOBS; i++) {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0) {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state) {
            case BG:
                sprintf(buf, "Running    ");
                break;
            case FG:
                sprintf(buf, "Foreground ");
                break;
            case ST:
                sprintf(buf, "Stopped    ");
                break;
            default:
                sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                        i, job_list[i].state);
            }
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void 
usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void 
unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void 
app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s)-1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b) 
{
    int c, i = 0;
    
    do {  
        s[i++] = ((c = (v % b)) < 10)  ?  c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(const char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}

/* sio_copy - Copy len chars from fmt to s (by Ding Rui) */
void sio_copy(char *s, const char *fmt, size_t len)
{
    if(!len)
        return;

    for(size_t i = 0;i < len;i++)
        s[i] = fmt[i];
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];
    
    sio_ltoa(v, s, 10); /* Based on K&R itoa() */ 
    return sio_puts(s);
}

// Put to the console. only understands %d
ssize_t sio_put(const char *fmt, ...) 
{
  va_list ap;
  char str[MAXLINE]; // formatted string
  char arg[128];
  const char *mess = "sio_put: Line too long!\n";
  int i = 0, j = 0;
  int sp = 0;
  int v;

  if (fmt == 0)
    return -1;

  va_start(ap, fmt);
  while(fmt[j]){
    if(fmt[j] != '%'){
        j++;
        continue;
    }

    sio_copy(str + sp, fmt + i, j - i);
    sp += j - i;

    switch(fmt[j + 1]){
    case 0:
    		va_end(ap);
        if(sp >= MAXLINE){
            write(STDOUT_FILENO, mess, sio_strlen(mess));
            return -1;
        }
        
        str[sp] = 0;
        return write(STDOUT_FILENO, str, sp);

    case 'd':
        v = va_arg(ap, int);
        sio_ltoa(v, arg, 10);
        sio_copy(str + sp, arg, sio_strlen(arg));
        sp += sio_strlen(arg);
        i = j + 2;
        j = i;
        break;

    case '%':
        sio_copy(str + sp, "%", 1);
        sp += 1;
        i = j + 2;
        j = i;
        break;

    default:
        sio_copy(str + sp, fmt + j, 2);
        sp += 2;
        i = j + 2;
        j = i;
        break;
    }
  } // end while

  sio_copy(str + sp, fmt + i, j - i);
  sp += j - i;

	va_end(ap);
  if(sp >= MAXLINE){
    write(STDOUT_FILENO, mess, sio_strlen(mess));
    return -1;
  }
  
  str[sp] = 0;
  return write(STDOUT_FILENO, str, sp);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t 
*Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}

