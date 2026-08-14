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
        nyx_array_push_tagged(arr, (int64_t)(unsigned char)buf[i], NYX_TAG_INT);
    }
    return arr;
}

// Write a nyx_string to file. Returns bytes written.
// Binary-safe: usa s->data/s->length (el ABI ya los trae), no
// strlen(nyx_string_to_cstr(s)) -- eso cortaba en el primer '\0' y truncaba
// en silencio cualquier blob binario escrito a disco.
int64_t nyx_file_write_string(void* handle, nyx_string* s) {
    if (!handle || !s) return 0;
    return (int64_t)fwrite(s->data, 1, (size_t)s->length, (FILE*)handle);
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
        nyx_array_push_tagged(arr, (int64_t)s, NYX_TAG_STRING);
    }
    closedir(d);
    return arr;
}

// Remove file or empty directory. Returns 0 on success, -1 on error.
int64_t nyx_remove(const char* path) {
    if (!path) return -1;
    return (int64_t)remove(path);
}

// Flush file data to disk. Returns 0 on success, -1 on error.
int64_t nyx_fsync(int64_t fd) {
    if (fd < 0) return -1;
    return (int64_t)fsync((int)fd);
}

// Flush file data (not metadata) to disk. Returns 0 on success, -1 on error.
int64_t nyx_fdatasync(int64_t fd) {
    if (fd < 0) return -1;
    return (int64_t)fdatasync((int)fd);
}

// ===== E4: E/S NO-abortante con errno (spec errores-tipados §4.2.1) =====

// E4 (spec errores-tipados §4.2.1): lectura NO-abortante con errno.
// Devuelve [errno, contenido] — errno 0 = éxito. A diferencia de
// nyx_read_file (que devuelve "" ambiguo y trunca en NUL), esta variante
// distingue vacío-real de error y es binary-safe. La centinela vieja NO
// se toca: el cutover es decisión MAJOR (1.0.0).
//
// El slot 1 va taggeado NYX_TAG_STRING (obligatorio desde v0.22.18 — ver
// nyx_array_push_tagged en runtime-arrays.c): un consumidor Nyx que lea el
// array con el tag apagado (NYX_TAG_UNKNOWN) lo trataría como int crudo y
// leería basura en vez del puntero a nyx_string.
//
// nyx_string_from_bytes NO sirve acá pese al nombre: su firma real
// (runtime/persist.c) es (nyx_array_t* arr, offset, len) — convierte un
// Array de bytes Nyx, no un buffer C. El binary-safe correcto para un
// char* + longitud explícita es nyx_string_from_ptr (mismo que usa
// nyx_read_file, pero sin depender de strlen en ningún punto del camino).
//
// ⚠️ FIX (Task 3, 2026-08-14): el parámetro `path` DEBE ser `nyx_string*`,
// no `char*` — bug real de ABI (un `extern "C" fn (path: String)` del
// lado Nyx pasa siempre el struct completo, no un char* crudo). Detalle
// completo y por qué difiere de nyx_read_file/nyx_write_file: ver el
// header de std/fs.nx (el consumidor Nyx de esta función).
nyx_array_t* nyx_file_read_result(nyx_string* path) {
    nyx_array_t* out = nyx_array_new(2);
    if (path == NULL || path->data == NULL) {
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    errno = 0;
    FILE* file = fopen(path->data, "rb");
    if (file == NULL) {
        int oerr = errno ? errno : 5 /* EIO */;
        nyx_array_push_tagged(out, oerr, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    fseek(file, 0, SEEK_SET);

    // I1 (review final E4, 2026-08-14): stream no-seekable (FIFO, /dev/stdin,
    // tty) hace que ftell devuelva -1. Sin este guard, file_size+1 == 0 →
    // GC_MALLOC(0) + fread(buffer, 1, (size_t)-1, file) — el cast a size_t
    // de un long negativo es SIZE_MAX, escritura OOB sobre un buffer de 0
    // bytes. Rama simétrica a las otras salidas de error de esta función.
    if (file_size < 0) {
        fclose(file);
        nyx_array_push_tagged(out, 29 /* ESPIPE */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    char* buffer = (char*)GC_MALLOC(file_size + 1);
    if (buffer == NULL) {
        fclose(file);
        nyx_array_push_tagged(out, 12 /* ENOMEM */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    size_t bytes_read = fread(buffer, 1, file_size, file);
    int rerr = ferror(file) ? (errno ? errno : 5 /* EIO */) : 0;
    fclose(file);

    if (rerr) {
        nyx_array_push_tagged(out, rerr, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(buffer, (int64_t)bytes_read), NYX_TAG_STRING);
    return out;
}

// E4: escritura NO-abortante — devuelve 0 o errno. La vieja nyx_write_file
// hace exit(1) (un server que no puede escribir HOY MUERE); esta reporta.
// Escribe content->data/content->length (no strlen) — espejo del fix
// binary-safe de nyx_file_write_string (v0.23.1, ver test_file_write_string_binary_safe).
// `path` es `nyx_string*` — mismo fix de ABI que nyx_file_read_result arriba.
int64_t nyx_file_write_result(nyx_string* path, nyx_string* content) {
    if (path == NULL || path->data == NULL || content == NULL) return 22 /* EINVAL */;

    errno = 0;
    FILE* file = fopen(path->data, "wb");
    if (file == NULL) return errno ? errno : 5 /* EIO */;

    size_t written = fwrite(content->data, 1, (size_t)content->length, file);
    int werr = (written != (size_t)content->length) ? (errno ? errno : 5 /* EIO */) : 0;
    if (fclose(file) != 0 && werr == 0) werr = errno ? errno : 5 /* EIO */;
    return werr;
}