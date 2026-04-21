// ============================================
// PROCESS.C — POSIX process control for Nyx
// ============================================
// Provides fork/exec/wait/pipe/dup2 and other POSIX primitives
// needed for building a shell and general process management.

#include "process.h"

#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <signal.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

// NOTE on GC safety after fork():
// Boehm GC state may be inconsistent in the child after fork().
// Children MUST call execvp() immediately without allocating GC memory.
// The fork+exec pattern used by shells is safe.

int64_t nyx_fork(void) {
    pid_t pid = fork();
    return (int64_t)pid;
}

int64_t nyx_execvp(nyx_string* program, nyx_array_t* argv) {
    if (!program) return -1;

    const char* prog = nyx_string_to_cstr(program);
    int argc = argv ? (int)argv->length : 0;

    // Build null-terminated char** array for execvp
    // Use stack allocation for small arrays, malloc for large
    char** args;
    char* stack_args[64];
    if (argc + 1 <= 64) {
        args = stack_args;
    } else {
        args = (char**)malloc((argc + 1) * sizeof(char*));
        if (!args) return -1;
    }

    for (int i = 0; i < argc; i++) {
        nyx_string* s = (nyx_string*)(argv->data[i]);
        args[i] = s ? (char*)nyx_string_to_cstr(s) : "";
    }
    args[argc] = NULL;

    execvp(prog, args);

    // If we get here, exec failed
    if (args != stack_args) free(args);
    return -1;
}

int64_t nyx_waitpid(int64_t pid, int64_t options) {
    int status = 0;
    int opts = (options == 1) ? WNOHANG : 0;

    pid_t result = waitpid((pid_t)pid, &status, opts);
    if (result < 0) return -1;
    if (result == 0) return -2;  // WNOHANG and child still running

    if (WIFEXITED(status)) {
        return (int64_t)WEXITSTATUS(status);
    } else if (WIFSIGNALED(status)) {
        return (int64_t)(128 + WTERMSIG(status));
    }
    return -1;
}

int64_t nyx_dup2(int64_t oldfd, int64_t newfd) {
    int result = dup2((int)oldfd, (int)newfd);
    return (int64_t)result;
}

int64_t nyx_chdir(nyx_string* path) {
    if (!path) return -1;
    const char* p = nyx_string_to_cstr(path);
    return (int64_t)chdir(p);
}

nyx_string* nyx_getcwd(void) {
    char buf[4096];
    if (getcwd(buf, sizeof(buf)) != NULL) {
        return nyx_string_from_cstr(buf);
    }
    return nyx_string_from_cstr("");
}

nyx_array_t* nyx_stat(nyx_string* path) {
    nyx_array_t* arr = nyx_array_new(8);
    if (!path) return arr;

    const char* p = nyx_string_to_cstr(path);
    struct stat st;
    if (stat(p, &st) != 0) return arr;

    nyx_array_push(arr, (int64_t)st.st_size);
    nyx_array_push(arr, (int64_t)st.st_mode);
    nyx_array_push(arr, (int64_t)st.st_mtime);
    nyx_array_push(arr, (int64_t)S_ISDIR(st.st_mode));
    nyx_array_push(arr, (int64_t)S_ISREG(st.st_mode));

    return arr;
}

int64_t nyx_isatty(int64_t fd) {
    return (int64_t)isatty((int)fd);
}

int64_t nyx_close_fd(int64_t fd) {
    return (int64_t)close((int)fd);
}

nyx_array_t* nyx_pipe(void) {
    nyx_array_t* arr = nyx_array_new(2);
    int fds[2];
    if (pipe(fds) != 0) return arr;

    nyx_array_push(arr, (int64_t)fds[0]);  // read end
    nyx_array_push(arr, (int64_t)fds[1]);  // write end
    return arr;
}

int64_t nyx_getpid(void) {
    return (int64_t)getpid();
}

int64_t nyx_kill(int64_t pid, int64_t sig) {
    return (int64_t)kill((pid_t)pid, (int)sig);
}

// Open file returning raw fd. mode: 0=read, 1=write(trunc), 2=append
int64_t nyx_open_fd(nyx_string* path, int64_t mode) {
    if (!path) return -1;
    const char* p = nyx_string_to_cstr(path);
    int fd;
    if (mode == 0) {
        fd = open(p, O_RDONLY);
    } else if (mode == 1) {
        fd = open(p, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    } else if (mode == 2) {
        fd = open(p, O_WRONLY | O_CREAT | O_APPEND, 0644);
    } else {
        return -1;
    }
    return (int64_t)fd;
}
