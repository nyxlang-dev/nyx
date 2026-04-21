// ============================================
// PERSIST.C - Persistence helpers for Nyx
// CRC32 (IEEE 802.3) + atomic rename
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <signal.h>
#include <unistd.h>
#include <gc.h>
#include "runtime-arrays.h"
#include "strings.h"

// CRC32 lookup table (IEEE 802.3 polynomial 0xEDB88320)
static uint32_t crc32_table[256];
static int crc32_table_init = 0;

static void crc32_build_table(void) {
    for (uint32_t i = 0; i < 256; i++) {
        uint32_t crc = i;
        for (int j = 0; j < 8; j++) {
            if (crc & 1)
                crc = (crc >> 1) ^ 0xEDB88320;
            else
                crc >>= 1;
        }
        crc32_table[i] = crc;
    }
    crc32_table_init = 1;
}

int64_t nyx_crc32_bytes(nyx_array_t* arr) {
    if (!crc32_table_init) crc32_build_table();
    if (!arr || arr->length <= 0) return 0;

    uint32_t crc = 0xFFFFFFFF;
    for (int64_t i = 0; i < arr->length; i++) {
        uint8_t byte = (uint8_t)(arr->data[i] & 0xFF);
        crc = (crc >> 8) ^ crc32_table[(crc ^ byte) & 0xFF];
    }
    return (int64_t)(crc ^ 0xFFFFFFFF);
}

int64_t nyx_rename_file(const char* old_path, const char* new_path) {
    if (!old_path || !new_path) return -1;
    return (int64_t)rename(old_path, new_path);
}

// ── Shutdown signal handler ──

// Global closure to call on SIGTERM/SIGINT
static void* shutdown_fn_ptr = NULL;
static void* shutdown_env_ptr = NULL;

static void shutdown_signal_handler(int sig) {
    (void)sig;
    if (shutdown_fn_ptr) {
        typedef int64_t (*closure_fn_t)(void*);
        closure_fn_t fn = (closure_fn_t)shutdown_fn_ptr;
        fn(shutdown_env_ptr);
    }
    _exit(0);
}

// Register a Nyx closure as the shutdown handler for SIGTERM + SIGINT.
void nyx_setup_shutdown_handler(void* closure_pair) {
    if (!closure_pair) return;
    void** pair = (void**)closure_pair;
    shutdown_fn_ptr = pair[0];
    shutdown_env_ptr = pair[1];

    struct sigaction sa;
    sa.sa_handler = shutdown_signal_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    sigaction(SIGTERM, &sa, NULL);
    sigaction(SIGINT, &sa, NULL);
}

// Create a nyx_string from a slice of a byte array.
// Useful for deserializing binary formats.
nyx_string* nyx_string_from_bytes(nyx_array_t* arr, int64_t offset, int64_t len) {
    if (!arr || offset < 0 || len <= 0 || offset + len > arr->length) {
        return nyx_string_from_cstr("");
    }
    char* buf = (char*)GC_MALLOC(len + 1);
    for (int64_t i = 0; i < len; i++) {
        buf[i] = (char)(arr->data[offset + i] & 0xFF);
    }
    buf[len] = '\0';
    return nyx_string_from_ptr(buf, len);
}
