// runtime/compress.c — Compression bindings for Nyx (v4.4.0)
// Provides gzip/zlib compress/decompress via direct zlib linkage
// Also provides base64 encode/decode (pure C, no external dep)

#include "strings.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <zlib.h>
#include <gc/gc.h>

// ── zlib compress (deflate) ──────────────────────────────────────────────────

// Compress src data, returns compressed bytes as nyx_string (may contain NUL)
// Returns nyx_string with .length = compressed size, .data = compressed bytes
nyx_string* nyx_compress(nyx_string* src) {
    if (!src || !src->data || src->length == 0) {
        return nyx_string_from_cstr("");
    }

    uLongf src_len = (uLongf)src->length;
    uLongf dest_len = compressBound(src_len);
    Bytef* dest = (Bytef*)GC_malloc(dest_len + 1);
    if (!dest) return nyx_string_from_cstr("");

    int rc = compress2(dest, &dest_len, (const Bytef*)src->data, src_len, Z_DEFAULT_COMPRESSION);
    if (rc != Z_OK) {
        return nyx_string_from_cstr("");
    }

    // Build nyx_string with raw bytes
    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->data = (char*)GC_malloc(dest_len + 1);
    memcpy(result->data, dest, dest_len);
    result->data[dest_len] = '\0';
    result->length = (int64_t)dest_len;
    return result;
}

// Decompress zlib-compressed data, original_size must be known
nyx_string* nyx_decompress(nyx_string* src, int64_t original_size) {
    if (!src || !src->data || src->length == 0) {
        return nyx_string_from_cstr("");
    }

    uLongf dest_len = (uLongf)(original_size + 1);
    Bytef* dest = (Bytef*)GC_malloc(dest_len);
    if (!dest) return nyx_string_from_cstr("");

    int rc = uncompress(dest, &dest_len,
                        (const Bytef*)src->data, (uLongf)src->length);
    if (rc != Z_OK) {
        return nyx_string_from_cstr("");
    }

    dest[dest_len] = '\0';
    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->data = (char*)dest;
    result->length = (int64_t)dest_len;
    return result;
}

// Return compressed size (how many bytes after compression)
int64_t nyx_compress_size(nyx_string* src) {
    nyx_string* compressed = nyx_compress(src);
    if (!compressed) return -1;
    return compressed->length;
}

// ── Base64 encode/decode ─────────────────────────────────────────────────────

static const char b64_chars[] =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

nyx_string* nyx_base64_encode(nyx_string* src) {
    if (!src || !src->data) return nyx_string_from_cstr("");

    const unsigned char* data = (const unsigned char*)src->data;
    size_t src_len = (size_t)src->length;
    size_t out_len = 4 * ((src_len + 2) / 3) + 1;
    char* out = (char*)GC_malloc(out_len);
    if (!out) return nyx_string_from_cstr("");

    size_t i, j = 0;
    for (i = 0; i < src_len; ) {
        uint32_t octet_a = i < src_len ? data[i++] : 0;
        uint32_t octet_b = i < src_len ? data[i++] : 0;
        uint32_t octet_c = i < src_len ? data[i++] : 0;
        uint32_t triple = (octet_a << 16) | (octet_b << 8) | octet_c;

        out[j++] = b64_chars[(triple >> 18) & 0x3F];
        out[j++] = b64_chars[(triple >> 12) & 0x3F];
        out[j++] = b64_chars[(triple >> 6)  & 0x3F];
        out[j++] = b64_chars[(triple >> 0)  & 0x3F];
    }
    // Padding
    size_t mod = src_len % 3;
    if (mod == 1) { out[j-1] = '='; out[j-2] = '='; }
    else if (mod == 2) { out[j-1] = '='; }
    out[j] = '\0';

    return nyx_string_from_cstr(out);
}

static int b64_char_to_val(char c) {
    if (c >= 'A' && c <= 'Z') return c - 'A';
    if (c >= 'a' && c <= 'z') return c - 'a' + 26;
    if (c >= '0' && c <= '9') return c - '0' + 52;
    if (c == '+') return 62;
    if (c == '/') return 63;
    return -1;
}

nyx_string* nyx_base64_decode(nyx_string* src) {
    if (!src || !src->data) return nyx_string_from_cstr("");

    const char* data = src->data;
    size_t src_len = (size_t)src->length;
    if (src_len % 4 != 0) return nyx_string_from_cstr("");

    size_t out_len = src_len / 4 * 3;
    if (src_len > 0 && data[src_len-1] == '=') out_len--;
    if (src_len > 1 && data[src_len-2] == '=') out_len--;

    char* out = (char*)GC_malloc(out_len + 1);
    if (!out) return nyx_string_from_cstr("");

    size_t i, j = 0;
    for (i = 0; i < src_len; i += 4) {
        int v0 = b64_char_to_val(data[i]);
        int v1 = b64_char_to_val(data[i+1]);
        int v2 = data[i+2] != '=' ? b64_char_to_val(data[i+2]) : 0;
        int v3 = data[i+3] != '=' ? b64_char_to_val(data[i+3]) : 0;
        if (v0 < 0 || v1 < 0) break;

        uint32_t triple = ((uint32_t)v0 << 18) | ((uint32_t)v1 << 12)
                        | ((uint32_t)v2 << 6)  | (uint32_t)v3;
        if (j < out_len) out[j++] = (triple >> 16) & 0xFF;
        if (j < out_len) out[j++] = (triple >> 8)  & 0xFF;
        if (j < out_len) out[j++] = (triple >> 0)  & 0xFF;
    }
    out[j] = '\0';

    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->data = out;
    result->length = (int64_t)j;
    return result;
}
