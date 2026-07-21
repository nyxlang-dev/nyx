// ============================================
// PERSIST.H - Persistence helpers for Nyx
// CRC32 + atomic rename
// ============================================

#ifndef NYX_PERSIST_H
#define NYX_PERSIST_H

#include <stdint.h>
#include "runtime-arrays.h"

/**
 * Compute CRC32 over a byte array.
 * @param arr - Array of i64 byte values (0-255)
 * @return CRC32 as i64
 */
int64_t nyx_crc32_bytes(nyx_array_t* arr);

/**
 * Atomic rename: rename old_path to new_path.
 * @return 0 on success, -1 on error
 */
int64_t nyx_rename_file(const char* old_path, const char* new_path);

/**
 * Register a Nyx closure as shutdown handler for SIGTERM + SIGINT.
 * The closure is called before exit(0).
 */
void nyx_setup_shutdown_handler(void* closure_pair);

/**
 * Create a nyx_string from a slice of a byte array.
 * @param arr - byte array
 * @param offset - start position
 * @param len - number of bytes
 * @return nyx_string* (GC-allocated)
 */
nyx_string* nyx_string_from_bytes(nyx_array_t* arr, int64_t offset, int64_t len);

#endif // NYX_PERSIST_H
