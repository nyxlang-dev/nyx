// ============================================
// CRYPTO.H - Cryptographic hash functions for Nyx
// ============================================
// Provides SHA-256 and MD5 hashing with no external crypto library
// dependency. All functions operate on nyx_string* and return nyx_string*.
//
// Memory: all allocations go through Boehm GC — never call free().
// ============================================

#ifndef NYX_CRYPTO_H
#define NYX_CRYPTO_H

#include <stdint.h>
#include "strings.h"

// Returns the SHA-256 hash of input as a lowercase hex string (64 chars).
// Returns an empty string if input is NULL.
nyx_string* nyx_sha256(nyx_string* input);

// Returns the SHA-256 hash of input as raw 32-byte binary data in a
// nyx_string* of length 32. Useful when further processing (e.g., HMAC)
// is needed before hex encoding.
// Returns an empty string if input is NULL.
nyx_string* nyx_sha256_bytes(nyx_string* input);

// Returns the HMAC-SHA256 of data using key, as a lowercase hex string (64 chars).
// Implements RFC 2104 with SHA-256 as the underlying hash.
nyx_string* nyx_hmac_sha256(nyx_string* key, nyx_string* data);

// Returns the MD5 hash of input as a lowercase hex string (32 chars).
// NOTE: MD5 is cryptographically broken; use SHA-256 for security-sensitive
// work. This function is provided for compatibility with existing protocols
// and checksum use-cases only.
// Returns an empty string if input is NULL.
nyx_string* nyx_md5(nyx_string* input);

#endif // NYX_CRYPTO_H
