// ============================================
// PROCESS.H — POSIX process control for Nyx
// ============================================

#ifndef NYX_PROCESS_H
#define NYX_PROCESS_H

#include <stdint.h>
#include "strings.h"
#include "runtime-arrays.h"

// Fork the current process. Returns pid to parent, 0 to child, -1 on error.
int64_t nyx_fork(void);

// Replace process image with program. argv is nyx_array_t* of nyx_string*.
// Does not return on success. Returns -1 on error.
int64_t nyx_execvp(nyx_string* program, nyx_array_t* argv);

// Wait for child process. Returns exit status or -1 on error.
// options: 0 = block, 1 = WNOHANG
int64_t nyx_waitpid(int64_t pid, int64_t options);

// Duplicate file descriptor: make newfd refer to oldfd.
int64_t nyx_dup2(int64_t oldfd, int64_t newfd);

// Change working directory. Returns 0 on success, -1 on error.
int64_t nyx_chdir(nyx_string* path);

// Get current working directory.
nyx_string* nyx_getcwd(void);

// File stat. Returns nyx_array_t* with [size, mode, mtime, is_dir, is_file].
nyx_array_t* nyx_stat(nyx_string* path);

// Check if fd is a terminal.
int64_t nyx_isatty(int64_t fd);

// Close a raw file descriptor.
int64_t nyx_close_fd(int64_t fd);

// Create a pipe. Returns nyx_array_t* with [read_fd, write_fd].
nyx_array_t* nyx_pipe(void);

// Get process ID.
int64_t nyx_getpid(void);

// Send signal to process. Returns 0 on success, -1 on error.
int64_t nyx_kill(int64_t pid, int64_t sig);

// Open file returning raw fd. mode: 0=read, 1=write(trunc), 2=append.
int64_t nyx_open_fd(nyx_string* path, int64_t mode);

#endif // NYX_PROCESS_H
