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

// ===== Web Push primitives (RFC 8291 / RFC 8292) =====
// Cryptographically-secure random: n bytes (empty string on error).
nyx_string* nyx_csprng_bytes(int64_t n);
// A single raw byte n&0xff as a length-1 string (NUL-safe, unlike chr(0)).
nyx_string* nyx_byte(int64_t n);
// P-256 keypair: 32-byte private ‖ 65-byte uncompressed public (97 bytes).
nyx_string* nyx_ec_p256_keypair(void);
// ECDH over P-256: 32-byte shared secret from a 32B private + 65B peer public.
nyx_string* nyx_ecdh_p256(nyx_string* priv, nyx_string* peer_pub);
// ECDSA/P-256: sign a 32B digest → raw r‖s (64B); verify → 1/0.
nyx_string* nyx_ecdsa_p256_sign(nyx_string* priv, nyx_string* hash);
int64_t     nyx_ecdsa_p256_verify(nyx_string* pub, nyx_string* hash, nyx_string* sig);
// HKDF-SHA256 (RFC 5869): derive `len` bytes of OKM from salt/ikm/info.
nyx_string* nyx_hkdf_sha256(nyx_string* salt, nyx_string* ikm, nyx_string* info, int64_t len);
// AES-128-GCM encrypt: key=16B, iv=12B → ciphertext ‖ 16B tag.
nyx_string* nyx_aes128gcm_encrypt(nyx_string* key, nyx_string* iv,
                                  nyx_string* pt, nyx_string* aad);

#endif // NYX_CRYPTO_H
