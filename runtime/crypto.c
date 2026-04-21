// ============================================
// CRYPTO.C - Cryptographic hash functions for Nyx
// ============================================
// Pure-C implementation of SHA-256 (FIPS 180-4) and MD5 (RFC 1321).
// No OpenSSL or other external crypto library is used.
//
// Memory policy — Boehm GC:
//   - GC_MALLOC_ATOMIC for all char buffers (no internal GC pointers)
//   - GC_MALLOC for nyx_string structs (contain a char* that the GC must trace)
//   - nyx_string_from_ptr() is used to wrap results; it handles the struct
//     allocation internally, so the char* buffers here only need ATOMIC alloc.
//   - NEVER call free() on any allocation in this file.
//
// Portability assumptions:
//   - uint8_t, uint32_t, uint64_t from <stdint.h> (guaranteed by C99+)
//   - We do all multi-byte arithmetic in uint32_t/uint64_t; no endianness
//     assumption is made for host integers. Message padding writes bytes
//     one at a time for big-endian correctness on any host.
// ============================================

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <gc.h>
#include "strings.h"
#include "crypto.h"

// ============================================================
//  Helpers
// ============================================================

// Right-rotate a 32-bit value by n bits.
static inline uint32_t rotr32(uint32_t x, unsigned n) {
    return (x >> n) | (x << (32u - n));
}

// Right-rotate a 32-bit value by n bits (alias used in MD5 — left rotate).
static inline uint32_t rotl32(uint32_t x, unsigned n) {
    return (x << n) | (x >> (32u - n));
}

// Write a big-endian uint64_t into 8 bytes at dst.
static void write_be64(uint8_t* dst, uint64_t v) {
    dst[0] = (uint8_t)(v >> 56);
    dst[1] = (uint8_t)(v >> 48);
    dst[2] = (uint8_t)(v >> 40);
    dst[3] = (uint8_t)(v >> 32);
    dst[4] = (uint8_t)(v >> 24);
    dst[5] = (uint8_t)(v >> 16);
    dst[6] = (uint8_t)(v >>  8);
    dst[7] = (uint8_t)(v      );
}

// Write a big-endian uint32_t into 4 bytes at dst.
static void write_be32(uint8_t* dst, uint32_t v) {
    dst[0] = (uint8_t)(v >> 24);
    dst[1] = (uint8_t)(v >> 16);
    dst[2] = (uint8_t)(v >>  8);
    dst[3] = (uint8_t)(v      );
}

// Write a little-endian uint32_t into 4 bytes at dst (used by MD5).
static void write_le32(uint8_t* dst, uint32_t v) {
    dst[0] = (uint8_t)(v      );
    dst[1] = (uint8_t)(v >>  8);
    dst[2] = (uint8_t)(v >> 16);
    dst[3] = (uint8_t)(v >> 24);
}

// Read a little-endian uint32_t from 4 bytes at src (used by MD5).
static uint32_t read_le32(const uint8_t* src) {
    return (uint32_t)src[0]
         | ((uint32_t)src[1] <<  8)
         | ((uint32_t)src[2] << 16)
         | ((uint32_t)src[3] << 24);
}

// Read a big-endian uint32_t from 4 bytes at src (used by SHA-256).
static uint32_t read_be32(const uint8_t* src) {
    return ((uint32_t)src[0] << 24)
         | ((uint32_t)src[1] << 16)
         | ((uint32_t)src[2] <<  8)
         |  (uint32_t)src[3];
}

// ============================================================
//  SHA-256  (FIPS 180-4)
// ============================================================

// Initial hash values: first 32 bits of the fractional parts of the
// square roots of the first 8 primes (2, 3, 5, 7, 11, 13, 17, 19).
static const uint32_t SHA256_H0[8] = {
    0x6a09e667u, 0xbb67ae85u, 0x3c6ef372u, 0xa54ff53au,
    0x510e527fu, 0x9b05688cu, 0x1f83d9abu, 0x5be0cd19u,
};

// Round constants: first 32 bits of the fractional parts of the cube
// roots of the first 64 primes.
static const uint32_t SHA256_K[64] = {
    0x428a2f98u, 0x71374491u, 0xb5c0fbcfu, 0xe9b5dba5u,
    0x3956c25bu, 0x59f111f1u, 0x923f82a4u, 0xab1c5ed5u,
    0xd807aa98u, 0x12835b01u, 0x243185beu, 0x550c7dc3u,
    0x72be5d74u, 0x80deb1feu, 0x9bdc06a7u, 0xc19bf174u,
    0xe49b69c1u, 0xefbe4786u, 0x0fc19dc6u, 0x240ca1ccu,
    0x2de92c6fu, 0x4a7484aau, 0x5cb0a9dcu, 0x76f988dau,
    0x983e5152u, 0xa831c66du, 0xb00327c8u, 0xbf597fc7u,
    0xc6e00bf3u, 0xd5a79147u, 0x06ca6351u, 0x14292967u,
    0x27b70a85u, 0x2e1b2138u, 0x4d2c6dfcu, 0x53380d13u,
    0x650a7354u, 0x766a0abbu, 0x81c2c92eu, 0x92722c85u,
    0xa2bfe8a1u, 0xa81a664bu, 0xc24b8b70u, 0xc76c51a3u,
    0xd192e819u, 0xd6990624u, 0xf40e3585u, 0x106aa070u,
    0x19a4c116u, 0x1e376c08u, 0x2748774cu, 0x34b0bcb5u,
    0x391c0cb3u, 0x4ed8aa4au, 0x5b9cca4fu, 0x682e6ff3u,
    0x748f82eeu, 0x78a5636fu, 0x84c87814u, 0x8cc70208u,
    0x90befffau, 0xa4506cebu, 0xbef9a3f7u, 0xc67178f2u,
};

// Process one 64-byte (512-bit) block into the running hash state h[0..7].
// block must point to exactly 64 bytes of data.
static void sha256_process_block(uint32_t h[8], const uint8_t block[64]) {
    uint32_t w[64];
    int i;

    // Prepare message schedule.
    for (i = 0; i < 16; i++) {
        w[i] = read_be32(block + i * 4);
    }
    for (i = 16; i < 64; i++) {
        uint32_t s0 = rotr32(w[i-15],  7) ^ rotr32(w[i-15], 18) ^ (w[i-15] >>  3);
        uint32_t s1 = rotr32(w[i- 2], 17) ^ rotr32(w[i- 2], 19) ^ (w[i- 2] >> 10);
        w[i] = w[i-16] + s0 + w[i-7] + s1;
    }

    // Working variables.
    uint32_t a = h[0], b = h[1], c = h[2], d = h[3];
    uint32_t e = h[4], f = h[5], g = h[6], hh = h[7];

    // 64 rounds.
    for (i = 0; i < 64; i++) {
        uint32_t S1  = rotr32(e, 6) ^ rotr32(e, 11) ^ rotr32(e, 25);
        uint32_t ch  = (e & f) ^ (~e & g);
        uint32_t tmp1 = hh + S1 + ch + SHA256_K[i] + w[i];
        uint32_t S0  = rotr32(a, 2) ^ rotr32(a, 13) ^ rotr32(a, 22);
        uint32_t maj = (a & b) ^ (a & c) ^ (b & c);
        uint32_t tmp2 = S0 + maj;

        hh = g;
        g  = f;
        f  = e;
        e  = d + tmp1;
        d  = c;
        c  = b;
        b  = a;
        a  = tmp1 + tmp2;
    }

    // Add compressed chunk to current hash value.
    h[0] += a;  h[1] += b;  h[2] += c;  h[3] += d;
    h[4] += e;  h[5] += f;  h[6] += g;  h[7] += hh;
}

// Core SHA-256 computation over raw bytes.
// Writes 32 raw bytes of digest into out[0..31].
static void sha256_raw(const uint8_t* data, size_t len, uint8_t out[32]) {
    uint32_t h[8];
    int i;
    for (i = 0; i < 8; i++) h[i] = SHA256_H0[i];

    // Pre-processing: padding.
    // Message length in bits must fit in a uint64_t.
    uint64_t bit_len = (uint64_t)len * 8u;

    // We process the message in 64-byte blocks.
    // The padded message is: original bytes | 0x80 | zeros | 8-byte big-endian length.
    // The zeros are chosen so that the total length is a multiple of 64 bytes.
    //
    // We avoid allocating a full padded buffer for large inputs by handling
    // the final partial block(s) separately.
    //
    // Strategy:
    //   1. Process all complete 64-byte blocks of data directly.
    //   2. Build at most 2 padding blocks (the final partial block and,
    //      if needed, an extra all-zero block) on the stack.

    // Process full blocks.
    size_t full_blocks = len / 64;
    for (size_t b = 0; b < full_blocks; b++) {
        sha256_process_block(h, data + b * 64);
    }

    // Build the padding block(s) on the stack.
    // tail: the leftover bytes after the full blocks.
    size_t tail_len = len - full_blocks * 64;

    // We always need at least one padding block.  If the tail + padding header
    // (1 byte 0x80) + 8-byte length fits in 64 bytes, one block suffices;
    // otherwise we need two.
    uint8_t pad[128];
    memset(pad, 0, sizeof(pad));

    // Copy tail into pad.
    if (tail_len > 0) {
        memcpy(pad, data + full_blocks * 64, tail_len);
    }

    // Append the 0x80 byte.
    pad[tail_len] = 0x80;

    // Decide total padded size.
    size_t pad_blocks;
    if (tail_len + 1 + 8 <= 64) {
        // Length field fits in the same block.
        pad_blocks = 1;
        write_be64(pad + 56, bit_len);
    } else {
        // Need a second block; length goes at the end of block 2.
        pad_blocks = 2;
        write_be64(pad + 120, bit_len);
    }

    for (size_t b = 0; b < pad_blocks; b++) {
        sha256_process_block(h, pad + b * 64);
    }

    // Produce big-endian digest.
    for (i = 0; i < 8; i++) {
        write_be32(out + i * 4, h[i]);
    }
}

// ===== nyx_sha256_bytes =====

nyx_string* nyx_sha256_bytes(nyx_string* input) {
    if (!input) return nyx_string_from_cstr("");

    const uint8_t* data = (const uint8_t*)input->data;
    size_t          len  = input->length;

    // GC_MALLOC_ATOMIC: the digest buffer holds no GC-managed pointers.
    uint8_t* digest = (uint8_t*)GC_MALLOC_ATOMIC(32);
    sha256_raw(data, len, digest);

    return nyx_string_from_ptr((const char*)digest, 32);
}

// ===== nyx_sha256 =====

nyx_string* nyx_sha256(nyx_string* input) {
    if (!input) return nyx_string_from_cstr("");

    const uint8_t* data = (const uint8_t*)input->data;
    size_t          len  = input->length;

    uint8_t digest[32];
    sha256_raw(data, len, digest);

    // Encode as lowercase hex — 64 chars + NUL.
    // GC_MALLOC_ATOMIC: pure char data, no GC pointers inside.
    char* hex = (char*)GC_MALLOC_ATOMIC(65);
    for (int i = 0; i < 32; i++) {
        // snprintf writes 3 chars (2 hex digits + NUL) per call.
        snprintf(hex + i * 2, 3, "%02x", (unsigned)digest[i]);
    }
    hex[64] = '\0';

    return nyx_string_from_ptr(hex, 64);
}

// ============================================================
//  MD5  (RFC 1321)
// ============================================================
//
// Design note: MD5 is little-endian throughout — both the message schedule
// and the digest are interpreted/written in little-endian byte order.
// This differs from SHA-256, which is big-endian.
//
// The four auxiliary functions F, G, H, I are inlined for readability;
// the compiler will inline them anyway given the usage pattern.

// Per-round shift amounts (RFC 1321 Table 3 reordered for loop use).
// s[i] gives the shift for round i (0-indexed).
static const uint32_t MD5_S[64] = {
    7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22,
    5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20,
    4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23,
    6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21,
};

// Precomputed table of T[i] = floor(2^32 * |sin(i+1)|) for i = 0..63.
// (RFC 1321 Table 4 — 1-indexed in the spec, 0-indexed here.)
static const uint32_t MD5_T[64] = {
    0xd76aa478u, 0xe8c7b756u, 0x242070dbu, 0xc1bdceeeu,
    0xf57c0fafu, 0x4787c62au, 0xa8304613u, 0xfd469501u,
    0x698098d8u, 0x8b44f7afu, 0xffff5bb1u, 0x895cd7beu,
    0x6b901122u, 0xfd987193u, 0xa679438eu, 0x49b40821u,
    0xf61e2562u, 0xc040b340u, 0x265e5a51u, 0xe9b6c7aau,
    0xd62f105du, 0x02441453u, 0xd8a1e681u, 0xe7d3fbc8u,
    0x21e1cde6u, 0xc33707d6u, 0xf4d50d87u, 0x455a14edu,
    0xa9e3e905u, 0xfcefa3f8u, 0x676f02d9u, 0x8d2a4c8au,
    0xfffa3942u, 0x8771f681u, 0x6d9d6122u, 0xfde5380cu,
    0xa4beea44u, 0x4bdecfa9u, 0xf6bb4b60u, 0xbebfbc70u,
    0x289b7ec6u, 0xeaa127fau, 0xd4ef3085u, 0x04881d05u,
    0xd9d4d039u, 0xe6db99e5u, 0x1fa27cf8u, 0xc4ac5665u,
    0xf4292244u, 0x432aff97u, 0xab9423a7u, 0xfc93a039u,
    0x655b59c3u, 0x8f0ccc92u, 0xffeff47du, 0x85845dd1u,
    0x6fa87e4fu, 0xfe2ce6e0u, 0xa3014314u, 0x4e0811a1u,
    0xf7537e82u, 0xbd3af235u, 0x2ad7d2bbu, 0xeb86d391u,
};

// Process one 64-byte (512-bit) MD5 block into the running state a,b,c,d.
// state[0..3] = {A, B, C, D} in little-endian convention.
static void md5_process_block(uint32_t state[4], const uint8_t block[64]) {
    // Load 16 little-endian 32-bit words from the block.
    uint32_t m[16];
    for (int i = 0; i < 16; i++) {
        m[i] = read_le32(block + i * 4);
    }

    uint32_t a = state[0], b = state[1], c = state[2], d = state[3];

    for (int i = 0; i < 64; i++) {
        uint32_t f, g;
        if (i < 16) {
            f = (b & c) | (~b & d);          // F(b,c,d)
            g = (uint32_t)i;
        } else if (i < 32) {
            f = (d & b) | (~d & c);          // G(b,c,d)
            g = (5u * (uint32_t)i + 1u) & 15u;
        } else if (i < 48) {
            f = b ^ c ^ d;                   // H(b,c,d)
            g = (3u * (uint32_t)i + 5u) & 15u;
        } else {
            f = c ^ (b | ~d);                // I(b,c,d)
            g = (7u * (uint32_t)i) & 15u;
        }
        f = f + a + MD5_T[i] + m[g];
        a = d;
        d = c;
        c = b;
        b = b + rotl32(f, MD5_S[i]);
    }

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
}

// Core MD5 computation over raw bytes.
// Writes 16 raw bytes of digest into out[0..15].
static void md5_raw(const uint8_t* data, size_t len, uint8_t out[16]) {
    // Initial state (RFC 1321 §3.3 — little-endian).
    uint32_t state[4] = {
        0x67452301u,
        0xefcdab89u,
        0x98badcfeu,
        0x10325476u,
    };

    uint64_t bit_len = (uint64_t)len * 8u;

    // Process all complete 64-byte blocks.
    size_t full_blocks = len / 64;
    for (size_t b = 0; b < full_blocks; b++) {
        md5_process_block(state, data + b * 64);
    }

    // Build padding block(s) — same strategy as SHA-256.
    // MD5 padding: append 0x80, zeros, then 8-byte little-endian bit length.
    size_t tail_len = len - full_blocks * 64;

    uint8_t pad[128];
    memset(pad, 0, sizeof(pad));
    if (tail_len > 0) {
        memcpy(pad, data + full_blocks * 64, tail_len);
    }
    pad[tail_len] = 0x80;

    size_t pad_blocks;
    if (tail_len + 1 + 8 <= 64) {
        pad_blocks = 1;
        // Write bit length as little-endian 64-bit integer at byte 56.
        pad[56] = (uint8_t)(bit_len      );
        pad[57] = (uint8_t)(bit_len >>  8);
        pad[58] = (uint8_t)(bit_len >> 16);
        pad[59] = (uint8_t)(bit_len >> 24);
        pad[60] = (uint8_t)(bit_len >> 32);
        pad[61] = (uint8_t)(bit_len >> 40);
        pad[62] = (uint8_t)(bit_len >> 48);
        pad[63] = (uint8_t)(bit_len >> 56);
    } else {
        pad_blocks = 2;
        pad[120] = (uint8_t)(bit_len      );
        pad[121] = (uint8_t)(bit_len >>  8);
        pad[122] = (uint8_t)(bit_len >> 16);
        pad[123] = (uint8_t)(bit_len >> 24);
        pad[124] = (uint8_t)(bit_len >> 32);
        pad[125] = (uint8_t)(bit_len >> 40);
        pad[126] = (uint8_t)(bit_len >> 48);
        pad[127] = (uint8_t)(bit_len >> 56);
    }

    for (size_t b = 0; b < pad_blocks; b++) {
        md5_process_block(state, pad + b * 64);
    }

    // Produce little-endian digest.
    write_le32(out +  0, state[0]);
    write_le32(out +  4, state[1]);
    write_le32(out +  8, state[2]);
    write_le32(out + 12, state[3]);
}

// ============================================================
//  HMAC-SHA256  (RFC 2104)
// ============================================================

nyx_string* nyx_hmac_sha256(nyx_string* key, nyx_string* data) {
    if (!key || !data) return nyx_string_from_cstr("");

    const uint8_t* key_data = (const uint8_t*)key->data;
    size_t key_len = key->length;
    const uint8_t* msg_data = (const uint8_t*)data->data;
    size_t msg_len = data->length;

    uint8_t k[64];
    memset(k, 0, 64);

    if (key_len > 64) {
        // Hash the key if longer than block size
        sha256_raw(key_data, key_len, k);
        // k is now 32 bytes of hash + 32 bytes of zeros
    } else {
        memcpy(k, key_data, key_len);
    }

    // Inner: H((k XOR ipad) || message)
    uint8_t i_key_pad[64];
    for (int i = 0; i < 64; i++) {
        i_key_pad[i] = k[i] ^ 0x36;
    }

    // Concatenate i_key_pad + message
    size_t inner_len = 64 + msg_len;
    uint8_t* inner_msg = (uint8_t*)GC_MALLOC_ATOMIC(inner_len);
    memcpy(inner_msg, i_key_pad, 64);
    memcpy(inner_msg + 64, msg_data, msg_len);

    uint8_t inner_hash[32];
    sha256_raw(inner_msg, inner_len, inner_hash);

    // Outer: H((k XOR opad) || inner_hash)
    uint8_t o_key_pad[64];
    for (int i = 0; i < 64; i++) {
        o_key_pad[i] = k[i] ^ 0x5c;
    }

    uint8_t outer_msg[96]; // 64 + 32
    memcpy(outer_msg, o_key_pad, 64);
    memcpy(outer_msg + 64, inner_hash, 32);

    uint8_t digest[32];
    sha256_raw(outer_msg, 96, digest);

    // Hex encode
    char* hex = (char*)GC_MALLOC_ATOMIC(65);
    for (int i = 0; i < 32; i++) {
        snprintf(hex + i * 2, 3, "%02x", (unsigned)digest[i]);
    }
    hex[64] = '\0';

    return nyx_string_from_ptr(hex, 64);
}

// ===== nyx_md5 =====

nyx_string* nyx_md5(nyx_string* input) {
    if (!input) return nyx_string_from_cstr("");

    const uint8_t* data = (const uint8_t*)input->data;
    size_t          len  = input->length;

    uint8_t digest[16];
    md5_raw(data, len, digest);

    // Encode as lowercase hex — 32 chars + NUL.
    char* hex = (char*)GC_MALLOC_ATOMIC(33);
    for (int i = 0; i < 16; i++) {
        snprintf(hex + i * 2, 3, "%02x", (unsigned)digest[i]);
    }
    hex[32] = '\0';

    return nyx_string_from_ptr(hex, 32);
}
