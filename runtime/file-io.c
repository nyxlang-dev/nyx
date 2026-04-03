// ============================================
// FILE-IO.C - File I/O Runtime for Nyx v0.12.2
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <errno.h>
#include <gc.h>
#include "strings.h"

// ===== FILE I/O FUNCTIONS =====

nyx_string* nyx_read_file(char* path) {
    if (path == NULL) {
        return nyx_string_from_cstr("");
    }

    FILE* file = fopen(path, "rb");
    if (file == NULL) {
        return nyx_string_from_cstr("");
    }

    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    fseek(file, 0, SEEK_SET);

    char* buffer = (char*)GC_MALLOC(file_size + 1);
    if (buffer == NULL) {
        fclose(file);
        return nyx_string_from_cstr("");
    }

    size_t bytes_read = fread(buffer, 1, file_size, file);
    buffer[bytes_read] = '\0';
    fclose(file);

    return nyx_string_from_ptr(buffer, bytes_read);
}

int nyx_write_file(char* path, char* content) {
    if (path == NULL) {
        fprintf(stderr, "💥 Runtime Error: write_file() recibió path NULL\n");
        exit(1);
    }

    if (content == NULL) {
        fprintf(stderr, "💥 Runtime Error: write_file() recibió content NULL\n");
        exit(1);
    }

    FILE* file = fopen(path, "w");
    if (file == NULL) {
        fprintf(stderr, "💥 Runtime Error: No se pudo escribir archivo '%s'\n", path);
        fprintf(stderr, "   %s\n", strerror(errno));
        exit(1);
    }

    size_t content_len = strlen(content);
    size_t bytes_written = fwrite(content, 1, content_len, file);
    fclose(file);

    if (bytes_written != content_len) {
        fprintf(stderr, "💥 Runtime Error: Error escribiendo a archivo '%s'\n", path);
        exit(1);
    }

    return 1;
}

int nyx_file_exists(char* path) {
    if (path == NULL) {
        return 0;
    }

    struct stat buffer;
    return (stat(path, &buffer) == 0) ? 1 : 0;
}

int nyx_count_lines(char* str) {
    if (str == NULL || str[0] == '\0') {
        return 0;
    }

    int count = 1;
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == '\n') {
            count++;
        }
    }

    if (str[strlen(str) - 1] == '\n') {
        count--;
    }

    return count;
}

void nyx_fileio_test(void) {
    printf("✅ File I/O Runtime loaded successfully\n");
}

// ===== BUFFERED FILE I/O (v4.6) =====

#include <dirent.h>
#include <unistd.h>
#include "runtime-arrays.h"

// Open a file handle. mode: "r", "w", "a", "r+", "w+", "a+"
// Returns FILE* as i8*, or NULL on error.
void* nyx_file_open(const char* path, const char* mode) {
    if (!path || !mode) return NULL;
    FILE* f = fopen(path, mode);
    return (void*)f;
}

void nyx_file_close(void* handle) {
    if (handle) fclose((FILE*)handle);
}

// Read one line (up to \n or EOF). Returns nyx_string* or NULL on EOF.
nyx_string* nyx_file_read_line(void* handle) {
    if (!handle) return NULL;
    FILE* f = (FILE*)handle;
    char* buf = (char*)GC_MALLOC(4096);
    if (!buf) return NULL;
    if (fgets(buf, 4096, f) == NULL) return nyx_string_from_cstr(":EOF:");
    // Strip trailing newline
    size_t len = strlen(buf);
    if (len > 0 && buf[len-1] == '\n') buf[len-1] = '\0';
    return nyx_string_from_cstr(buf);
}

// Read up to n bytes. Returns nyx_array_t* of i64 (byte values).
nyx_array_t* nyx_file_read_bytes(void* handle, int64_t n) {
    nyx_array_t* arr = nyx_array_new(n > 0 ? n : 8);
    if (!handle || n <= 0) return arr;
    FILE* f = (FILE*)handle;
    char* buf = (char*)GC_MALLOC(n);
    if (!buf) return arr;
    size_t got = fread(buf, 1, n, f);
    for (size_t i = 0; i < got; i++) {
        nyx_array_push(arr, (int64_t)(unsigned char)buf[i]);
    }
    return arr;
}

// Write a nyx_string to file. Returns bytes written.
int64_t nyx_file_write_string(void* handle, nyx_string* s) {
    if (!handle || !s) return 0;
    const char* cstr = nyx_string_to_cstr(s);
    if (!cstr) return 0;
    return (int64_t)fwrite(cstr, 1, strlen(cstr), (FILE*)handle);
}

// Write raw bytes from array to file. Returns bytes written.
int64_t nyx_file_write_bytes(void* handle, nyx_array_t* arr) {
    if (!handle || !arr || arr->length <= 0) return 0;
    FILE* f = (FILE*)handle;
    char* buf = (char*)GC_MALLOC(arr->length);
    for (int64_t i = 0; i < arr->length; i++) {
        buf[i] = (char)arr->data[i];
    }
    return (int64_t)fwrite(buf, 1, arr->length, f);
}

// Seek: whence 0=SEEK_SET, 1=SEEK_CUR, 2=SEEK_END
int64_t nyx_file_seek(void* handle, int64_t offset, int64_t whence) {
    if (!handle) return -1;
    int w = SEEK_SET;
    if (whence == 1) w = SEEK_CUR;
    else if (whence == 2) w = SEEK_END;
    return (int64_t)fseek((FILE*)handle, (long)offset, w);
}

int64_t nyx_file_tell(void* handle) {
    if (!handle) return -1;
    return (int64_t)ftell((FILE*)handle);
}

void nyx_file_flush(void* handle) {
    if (handle) fflush((FILE*)handle);
}

// Create directory. Returns 0 on success, -1 on error.
int64_t nyx_mkdir(const char* path) {
    if (!path) return -1;
    return (int64_t)mkdir(path, 0755);
}

// List directory entries. Returns nyx_array_t* of nyx_string* pointers.
nyx_array_t* nyx_readdir(const char* path) {
    nyx_array_t* arr = nyx_array_new(8);
    if (!path) return arr;
    DIR* d = opendir(path);
    if (!d) return arr;
    struct dirent* entry;
    while ((entry = readdir(d)) != NULL) {
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) continue;
        nyx_string* s = nyx_string_from_cstr(entry->d_name);
        nyx_array_push(arr, (int64_t)s);
    }
    closedir(d);
    return arr;
}

// Remove file or empty directory. Returns 0 on success, -1 on error.
int64_t nyx_remove(const char* path) {
    if (!path) return -1;
    return (int64_t)remove(path);
}