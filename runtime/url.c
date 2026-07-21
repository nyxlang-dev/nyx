// runtime/url.c — URL percent-encoding for Nyx (v4.6.0)

#include "strings.h"
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <gc/gc.h>

static const char HEX[] = "0123456789ABCDEF";

// URL-encode: encode all bytes that are not unreserved RFC3986 chars
// unreserved = ALPHA / DIGIT / "-" / "." / "_" / "~"
nyx_string* nyx_url_encode(nyx_string* src) {
    if (!src || !src->data) return nyx_string_from_cstr("");

    const unsigned char* in = (const unsigned char*)src->data;
    int64_t src_len = src->length;

    // Worst case: every byte → %XX (3 chars)
    char* out = (char*)GC_malloc(src_len * 3 + 1);
    if (!out) return nyx_string_from_cstr("");

    size_t j = 0;
    for (int64_t i = 0; i < src_len; i++) {
        unsigned char c = in[i];
        if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') ||
            (c >= '0' && c <= '9') ||
            c == '-' || c == '.' || c == '_' || c == '~') {
            out[j++] = (char)c;
        } else {
            out[j++] = '%';
            out[j++] = HEX[(c >> 4) & 0xF];
            out[j++] = HEX[c & 0xF];
        }
    }
    out[j] = '\0';
    return nyx_string_from_cstr(out);
}

static int hex_val(char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    return -1;
}

// URL-decode: decode %XX sequences, + → space
nyx_string* nyx_url_decode(nyx_string* src) {
    if (!src || !src->data) return nyx_string_from_cstr("");

    const char* in = src->data;
    int64_t src_len = src->length;

    char* out = (char*)GC_malloc(src_len + 1);
    if (!out) return nyx_string_from_cstr("");

    size_t j = 0;
    for (int64_t i = 0; i < src_len; ) {
        if (in[i] == '%' && i + 2 < src_len) {
            int hi = hex_val(in[i+1]);
            int lo = hex_val(in[i+2]);
            if (hi >= 0 && lo >= 0) {
                out[j++] = (char)((hi << 4) | lo);
                i += 3;
                continue;
            }
        }
        if (in[i] == '+') {
            out[j++] = ' ';
            i++;
            continue;
        }
        out[j++] = in[i++];
    }
    out[j] = '\0';

    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->data = out;
    result->length = (int64_t)j;
    return result;
}
