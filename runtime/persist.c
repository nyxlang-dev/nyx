// ============================================
// PERSIST.C - Persistence helpers for Nyx
// CRC32 (IEEE 802.3) + atomic rename
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <gc.h>
#include "runtime-arrays.h"
#include "strings.h"
#include "os/nyx_os.h"

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

// El closure de shutdown corre en el THREAD DRENADOR de señales (contexto
// normal), no en contexto de señal. Antes se llamaba directo desde el handler
// —el mismo hazard que el trampolín viejo de runtime.c tenía antes del
// self-pipe S2—: cualquier alocación del closure (una concatenación, un print)
// podía DEADLOCKEAR si la señal caía con el lock del GC o de malloc tomado.
// Arreglado el 2026-09-09 delegando en el mecanismo que runtime.c ya tenía
// resuelto, en vez de mantener un segundo camino de señales en paralelo.
//
// EN: the shutdown closure now runs on the signal DRAIN THREAD (normal
// context) instead of in signal context, where any allocation could deadlock
// against the GC/malloc lock. Delegates to runtime.c's existing self-pipe.

// Declarada en runtime.c (self-pipe S2): registra un closure Nyx para una señal
// y lo ejecuta en el thread drenador, no en contexto de señal.
void nyx_signal_handle(int64_t signum, void* handler);

static int64_t nyx_shutdown_drain_cb(int64_t sig) {
    (void)sig;
    if (shutdown_fn_ptr) {
        typedef int64_t (*closure_fn_t)(void*);
        closure_fn_t fn = (closure_fn_t)shutdown_fn_ptr;
        fn(shutdown_env_ptr);
    }
    // _exit(0) y no exit(0): igual que antes, no se corren atexit handlers ni
    // se vacían buffers de otros threads. El contrato observable —el proceso
    // termina con 0 después del closure— no cambia; lo que cambia es DÓNDE
    // corre el closure.
    _exit(0);
    return 0;
}

// Register a Nyx closure as the shutdown handler for SIGTERM + SIGINT.
void nyx_setup_shutdown_handler(void* closure_pair) {
    if (!closure_pair) return;
    void** pair = (void**)closure_pair;
    shutdown_fn_ptr = pair[0];
    shutdown_env_ptr = pair[1];

    // Se registra por el SELF-PIPE de runtime.c (nyx_signal_handle), que ya
    // resolvió esta clase de hazard: el handler de señal solo escribe un byte
    // en un pipe non-blocking y un thread drenador ejecuta el callback en
    // contexto normal. Mantener acá un segundo camino de señales en paralelo
    // era justamente el problema.
    //
    // El drenador espera un par {fn_ptr, env_ptr} y lo invoca con
    // nyx_call_closure_i64: con env NULL llama fn(sig) directo, que es
    // exactamente la firma de nyx_shutdown_drain_cb.
    static void* shutdown_cb_pair[2];
    shutdown_cb_pair[0] = (void*)nyx_shutdown_drain_cb;
    shutdown_cb_pair[1] = NULL;
    nyx_signal_handle(OS_SIGTERM, (void*)shutdown_cb_pair);
    nyx_signal_handle(OS_SIGINT, (void*)shutdown_cb_pair);
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
