// ============================================
// PERSIST.H - Persistence helpers for Nyx
// CRC32 + atomic rename
// ============================================

#ifndef NYX_PERSIST_H
#define NYX_PERSIST_H

#include <stdint.h>
#include "runtime-arrays.h"

/**
 * Register a Nyx closure as shutdown handler for SIGTERM + SIGINT.
 * The closure is called before exit(0).
 */
void nyx_setup_shutdown_handler(void* closure_pair);

#endif // NYX_PERSIST_H
