// runtime/random.c — PRNG + UUID v4 bindings for Nyx (v4.5.0)
// Uses xorshift64 for fast PRNG, /dev/urandom seeding, UUID v4 generation

#include "strings.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <gc/gc.h>

// ── xorshift64 PRNG ──────────────────────────────────────────────────────────

static uint64_t rng_state = 0;

static void rng_init(void) {
    // Seed from /dev/urandom, fall back to time
    FILE* f = fopen("/dev/urandom", "rb");
    if (f) {
        size_t r = fread(&rng_state, sizeof(rng_state), 1, f);
        fclose(f);
        if (r == 1 && rng_state != 0) return;
    }
    rng_state = (uint64_t)time(NULL) ^ (uint64_t)(uintptr_t)&rng_state;
    if (rng_state == 0) rng_state = 0xdeadbeefcafe1234ULL;
}

static uint64_t xorshift64(void) {
    if (rng_state == 0) rng_init();
    uint64_t x = rng_state;
    x ^= x << 13;
    x ^= x >> 7;
    x ^= x << 17;
    rng_state = x;
    return x;
}

// ── Public API ───────────────────────────────────────────────────────────────

void nyx_random_seed(int64_t seed) {
    rng_state = (uint64_t)seed;
    if (rng_state == 0) rng_state = 0x1234567890abcdefULL;
}

int64_t nyx_random_int(void) {
    return (int64_t)(xorshift64() >> 1);  // positive i64
}

// Random int in [min, max] inclusive
int64_t nyx_random_int_range(int64_t min, int64_t max) {
    if (min >= max) return min;
    uint64_t range = (uint64_t)(max - min + 1);
    return min + (int64_t)(xorshift64() % range);
}

// Random double in [0.0, 1.0)
double nyx_random_float(void) {
    return (double)(xorshift64() >> 11) / (double)(1ULL << 53);
}

// Random bool
int64_t nyx_random_bool(void) {
    return (int64_t)(xorshift64() & 1);
}

// n random bytes as nyx_string (may contain NUL)
nyx_string* nyx_random_bytes(int64_t n) {
    if (n <= 0) return nyx_string_from_cstr("");
    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->data = (char*)GC_malloc(n + 1);
    result->length = n;
    for (int64_t i = 0; i < n; i++) {
        if (i % 8 == 0) xorshift64();  // refresh
        result->data[i] = (char)(xorshift64() & 0xFF);
    }
    result->data[n] = '\0';
    return result;
}

// ── UUID v4 ──────────────────────────────────────────────────────────────────

// Generate UUID v4: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
// y = one of 8,9,a,b (variant 1)
nyx_string* nyx_uuid_v4(void) {
    uint8_t bytes[16];

    // Fill with random bytes (8 bytes per xorshift64 call)
    uint64_t r1 = xorshift64();
    uint64_t r2 = xorshift64();
    memcpy(bytes,     &r1, 8);
    memcpy(bytes + 8, &r2, 8);

    // Set version 4: bits 12-15 of time_hi_and_version
    bytes[6] = (bytes[6] & 0x0F) | 0x40;
    // Set variant 1: bits 6-7 of clock_seq_hi_and_reserved
    bytes[8] = (bytes[8] & 0x3F) | 0x80;

    // Format: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx (36 chars + NUL)
    char buf[37];
    snprintf(buf, sizeof(buf),
        "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x",
        bytes[0],  bytes[1],  bytes[2],  bytes[3],
        bytes[4],  bytes[5],
        bytes[6],  bytes[7],
        bytes[8],  bytes[9],
        bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]);

    return nyx_string_from_cstr(buf);
}

// Check if string is a valid UUID v4 format (36 chars: 8-4-4-4-12 hex)
int64_t nyx_uuid_is_valid(nyx_string* s) {
    if (!s || s->length != 36) return 0;
    const char* p = s->data;
    for (int i = 0; i < 36; i++) {
        if (i == 8 || i == 13 || i == 18 || i == 23) {
            if (p[i] != '-') return 0;
        } else {
            char c = p[i];
            if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F')))
                return 0;
        }
    }
    return 1;
}
