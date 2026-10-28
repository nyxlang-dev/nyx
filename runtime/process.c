// ============================================
// PROCESS.C — POSIX process control for Nyx
// ============================================
// Provides fork/exec/wait/pipe/kill: the part of process control with NO Win32
// equivalent (Procesos B, con spec aparte). Este archivo NO se compila en
// Windows. Lo "trivial" (getpid/getcwd/chdir/stat/isatty/open_fd/close_fd/
// dup2) vive en file-io.c sobre la capa os_* desde W5 (Procesos A).
// EN: fork/exec/wait/pipe/kill only; not built on Windows. The portable
// process-state builtins moved to file-io.c on top of os_* (W5 Procesos A).

#include "process.h"

#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>

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

nyx_array_t* nyx_pipe(void) {
    nyx_array_t* arr = nyx_array_new(2);
    int fds[2];
    if (pipe(fds) != 0) return arr;

    nyx_array_push_tagged(arr, (int64_t)fds[0], NYX_TAG_INT);  // read end
    nyx_array_push_tagged(arr, (int64_t)fds[1], NYX_TAG_INT);  // write end
    return arr;
}

int64_t nyx_kill(int64_t pid, int64_t sig) {
    return (int64_t)kill((pid_t)pid, (int)sig);
}
