// ============================================
// HTTP2.C - HTTP/2 Frame I/O and HPACK for Nyx
// ============================================
// Binary frame reading/writing and HPACK header compression.
// Used by std/http2.nx for HTTP/2 protocol logic.
// Link with: (no extra libs needed)

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/uio.h>
#include <sys/socket.h>

#include <gc.h>
#include "strings.h"
#include "runtime-arrays.h"
#include "http2.h"

// Forward: buffered read from net.c
extern nyx_string* nyx_tcp_read_exact(int64_t fd, int64_t n);

// ===== HPACK Static Table (RFC 7541 Appendix A) =====

static const char* hpack_static[][2] = {
    {NULL, NULL},                    // 0: unused
    {":authority", ""},              // 1
    {":method", "GET"},              // 2
    {":method", "POST"},             // 3
    {":path", "/"},                  // 4
    {":path", "/index.html"},        // 5
    {":scheme", "http"},             // 6
    {":scheme", "https"},            // 7
    {":status", "200"},              // 8
    {":status", "204"},              // 9
    {":status", "206"},              // 10
    {":status", "304"},              // 11
    {":status", "400"},              // 12
    {":status", "404"},              // 13
    {":status", "500"},              // 14
    {"accept-charset", ""},          // 15
    {"accept-encoding", "gzip, deflate"}, // 16
    {"accept-language", ""},         // 17
    {"accept-ranges", ""},           // 18
    {"accept", ""},                  // 19
    {"access-control-allow-origin", ""}, // 20
    {"age", ""},                     // 21
    {"allow", ""},                   // 22
    {"authorization", ""},           // 23
    {"cache-control", ""},           // 24
    {"content-disposition", ""},     // 25
    {"content-encoding", ""},        // 26
    {"content-language", ""},        // 27
    {"content-length", ""},          // 28
    {"content-location", ""},        // 29
    {"content-range", ""},           // 30
    {"content-type", ""},            // 31
    {"cookie", ""},                  // 32
    {"date", ""},                    // 33
    {"etag", ""},                    // 34
    {"expect", ""},                  // 35
    {"expires", ""},                 // 36
    {"from", ""},                    // 37
    {"host", ""},                    // 38
    {"if-match", ""},                // 39
    {"if-modified-since", ""},       // 40
    {"if-none-match", ""},           // 41
    {"if-range", ""},                // 42
    {"if-unmodified-since", ""},     // 43
    {"last-modified", ""},           // 44
    {"link", ""},                    // 45
    {"location", ""},                // 46
    {"max-forwards", ""},            // 47
    {"proxy-authenticate", ""},      // 48
    {"proxy-authorization", ""},     // 49
    {"range", ""},                   // 50
    {"referer", ""},                 // 51
    {"refresh", ""},                 // 52
    {"retry-after", ""},             // 53
    {"server", ""},                  // 54
    {"set-cookie", ""},              // 55
    {"strict-transport-security", ""},// 56
    {"transfer-encoding", ""},       // 57
    {"user-agent", ""},              // 58
    {"vary", ""},                    // 59
    {"via", ""},                     // 60
    {"www-authenticate", ""},        // 61
};
#define HPACK_STATIC_SIZE 62

// ===== Huffman Decode Table (RFC 7541 Appendix B) =====
// Each entry: {symbol, code, bit_length}
// We use a state-machine approach for decoding.

// Compact Huffman table: huff_sym[i] = {code, nbits} for byte value i
static const struct { uint32_t code; uint8_t nbits; } huff_table[257] = {
    {0x1ff8, 13}, {0x7fffd8, 23}, {0xfffffe2, 28}, {0xfffffe3, 28},
    {0xfffffe4, 28}, {0xfffffe5, 28}, {0xfffffe6, 28}, {0xfffffe7, 28},
    {0xfffffe8, 28}, {0xffffea, 24}, {0x3ffffffc, 30}, {0xfffffe9, 28},
    {0xfffffea, 28}, {0x3ffffffd, 30}, {0xfffffeb, 28}, {0xfffffec, 28},
    {0xfffffed, 28}, {0xfffffee, 28}, {0xfffffef, 28}, {0xffffff0, 28},
    {0xffffff1, 28}, {0xffffff2, 28}, {0x3ffffffe, 30}, {0xffffff3, 28},
    {0xffffff4, 28}, {0xffffff5, 28}, {0xffffff6, 28}, {0xffffff7, 28},
    {0xffffff8, 28}, {0xffffff9, 28}, {0xffffffa, 28}, {0xffffffb, 28},
    {0x14, 6}, {0x3f8, 10}, {0x3f9, 10}, {0xffa, 12},
    {0x1ff9, 13}, {0x15, 6}, {0xf8, 8}, {0x7fa, 11},
    {0x3fa, 10}, {0x3fb, 10}, {0xf9, 8}, {0x7fb, 11},
    {0xfa, 8}, {0x16, 6}, {0x17, 6}, {0x18, 6},
    {0x0, 5}, {0x1, 5}, {0x2, 5}, {0x19, 6},
    {0x1a, 6}, {0x1b, 6}, {0x1c, 6}, {0x1d, 6},
    {0x1e, 6}, {0x1f, 6}, {0x5c, 7}, {0xfb, 8},
    {0x7ffc, 15}, {0x20, 6}, {0xffb, 12}, {0x3fc, 10},
    {0x1ffa, 13}, {0x21, 6}, {0x5d, 7}, {0x5e, 7},
    {0x5f, 7}, {0x60, 7}, {0x61, 7}, {0x62, 7},
    {0x63, 7}, {0x64, 7}, {0x65, 7}, {0x66, 7},
    {0x67, 7}, {0x68, 7}, {0x69, 7}, {0x6a, 7},
    {0x6b, 7}, {0x6c, 7}, {0x6d, 7}, {0x6e, 7},
    {0x6f, 7}, {0x70, 7}, {0x71, 7}, {0x72, 7},
    {0xfc, 8}, {0x73, 7}, {0xfd, 8}, {0x1ffb, 13},
    {0x7fff0, 19}, {0x1ffc, 13}, {0x3ffc, 14}, {0x22, 6},
    {0x7ffd, 15}, {0x3, 5}, {0x23, 6}, {0x4, 5},
    {0x24, 6}, {0x5, 5}, {0x25, 6}, {0x26, 6},
    {0x27, 6}, {0x6, 5}, {0x74, 7}, {0x75, 7},
    {0x28, 6}, {0x29, 6}, {0x2a, 6}, {0x7, 5},
    {0x2b, 6}, {0x76, 7}, {0x2c, 6}, {0x8, 5},
    {0x9, 5}, {0x2d, 6}, {0x77, 7}, {0x78, 7},
    {0x79, 7}, {0x7a, 7}, {0x7b, 7}, {0x7fffe, 19},
    {0x7fc, 11}, {0x3ffd, 14}, {0x1ffd, 13}, {0xffffffc, 28},
    // 128-255: extended characters (less common)
    {0xfffe6, 20}, {0x3fffd2, 22}, {0xfffe7, 20}, {0xfffe8, 20},
    {0x3fffd3, 22}, {0x3fffd4, 22}, {0x3fffd5, 22}, {0x7fffd9, 23},
    {0x3fffd6, 22}, {0x7fffda, 23}, {0x7fffdb, 23}, {0x7fffdc, 23},
    {0x7fffdd, 23}, {0x7fffde, 23}, {0xffffeb, 24}, {0x7fffdf, 23},
    {0xffffec, 24}, {0xffffed, 24}, {0x3fffd7, 22}, {0x7fffe0, 23},
    {0xffffee, 24}, {0x7fffe1, 23}, {0x7fffe2, 23}, {0x7fffe3, 23},
    {0x7fffe4, 23}, {0x1fffdc, 21}, {0x3fffd8, 22}, {0x7fffe5, 23},
    {0x3fffd9, 22}, {0x7fffe6, 23}, {0x7fffe7, 23}, {0xffffef, 24},
    {0x3fffda, 22}, {0x1fffdd, 21}, {0xfffe9, 20}, {0x3fffdb, 22},
    {0x3fffdc, 22}, {0x7fffe8, 23}, {0x7fffe9, 23}, {0x1fffde, 21},
    {0x7fffea, 23}, {0x3fffdd, 22}, {0x3fffde, 22}, {0xfffff0, 24},
    {0x1fffdf, 21}, {0x3fffdf, 22}, {0x7fffeb, 23}, {0x7fffec, 23},
    {0x1fffe0, 21}, {0x1fffe1, 21}, {0x3fffe0, 22}, {0x1fffe2, 21},
    {0x7fffed, 23}, {0x3fffe1, 22}, {0x7fffee, 23}, {0x7fffef, 23},
    {0xfffea, 20}, {0x3fffe2, 22}, {0x3fffe3, 22}, {0x3fffe4, 22},
    {0x7ffff0, 23}, {0x3fffe5, 22}, {0x3fffe6, 22}, {0x7ffff1, 23},
    {0x3ffffe0, 26}, {0x3ffffe1, 26}, {0xfffeb, 20}, {0x7fff1, 19},
    {0x3fffe7, 22}, {0x7ffff2, 23}, {0x3fffe8, 22}, {0x1ffffec, 25},
    {0x3ffffe2, 26}, {0x3ffffe3, 26}, {0x3ffffe4, 26}, {0x7ffffde, 27},
    {0x7ffffdf, 27}, {0x3ffffe5, 26}, {0xfffff1, 24}, {0x1ffffed, 25},
    {0x7fff2, 19}, {0x1fffe3, 21}, {0x3ffffe6, 26}, {0x7ffffe0, 27},
    {0x7ffffe1, 27}, {0x3ffffe7, 26}, {0x7ffffe2, 27}, {0xfffff2, 24},
    {0x1fffe4, 21}, {0x1fffe5, 21}, {0x3ffffe8, 26}, {0x3ffffe9, 26},
    {0xffffffd, 28}, {0x7ffffe3, 27}, {0x7ffffe4, 27}, {0x7ffffe5, 27},
    {0xfffec, 20}, {0xfffff3, 24}, {0xfffed, 20}, {0x1fffe6, 21},
    {0x3fffe9, 22}, {0x1fffe7, 21}, {0x1fffe8, 21}, {0x7ffff3, 23},
    {0x3fffea, 22}, {0x3fffeb, 22}, {0x1ffffee, 25}, {0x1ffffef, 25},
    {0xfffff4, 24}, {0xfffff5, 24}, {0x3ffffea, 26}, {0x7ffff4, 23},
    {0x3ffffeb, 26}, {0x7ffffe6, 27}, {0x3ffffec, 26}, {0x3ffffed, 26},
    {0x7ffffe7, 27}, {0x7ffffe8, 27}, {0x7ffffe9, 27}, {0x7ffffea, 27},
    {0x7ffffeb, 27}, {0xffffffe, 28}, {0x7ffffec, 27}, {0x7ffffed, 27},
    {0x7ffffee, 27}, {0x7ffffef, 27}, {0x7fffff0, 27}, {0x3ffffee, 26},
    {0x3fffffff, 30}  // EOS (256)
};

// Huffman decode: input is Huffman-encoded bytes, output is decoded string.
static nyx_string* huff_decode(const uint8_t* data, int len) {
    // Build decode by bit-walking
    char* out = (char*)GC_malloc_atomic(len * 2 + 1);  // decoded is always <= 2x encoded
    int opos = 0;
    uint64_t bits = 0;
    int nbits = 0;

    for (int i = 0; i < len; i++) {
        bits = (bits << 8) | data[i];
        nbits += 8;
        // Try to match symbols
        while (nbits >= 5) {  // shortest Huffman code is 5 bits
            int found = 0;
            for (int sym = 0; sym < 256; sym++) {
                int slen = huff_table[sym].nbits;
                if (slen > nbits) continue;
                uint32_t code = huff_table[sym].code;
                // Extract top slen bits from our accumulator
                uint64_t mask = ((uint64_t)1 << slen) - 1;
                uint64_t top = (bits >> (nbits - slen)) & mask;
                if (top == code) {
                    out[opos++] = (char)sym;
                    nbits -= slen;
                    bits &= ((uint64_t)1 << nbits) - 1;
                    found = 1;
                    break;
                }
            }
            if (!found) break;  // remaining bits are padding
        }
    }
    out[opos] = '\0';
    return nyx_string_from_ptr(out, opos);
}

// ===== HPACK Integer Decode (RFC 7541 §5.1) =====

static int hpack_decode_int(const uint8_t* buf, int len, int prefix_bits, int* out_val) {
    if (len <= 0) return 0;
    int max_prefix = (1 << prefix_bits) - 1;
    int val = buf[0] & max_prefix;
    if (val < max_prefix) {
        *out_val = val;
        return 1;
    }
    // Multi-byte integer
    int m = 0;
    int i = 1;
    while (i < len) {
        int b = buf[i];
        val += (b & 127) << m;
        m += 7;
        i++;
        if ((b & 128) == 0) break;
    }
    *out_val = val;
    return i;
}

// ===== HPACK Integer Encode =====

static int hpack_encode_int(uint8_t* out, int val, int prefix_bits, uint8_t prefix_pattern) {
    int max_prefix = (1 << prefix_bits) - 1;
    if (val < max_prefix) {
        out[0] = prefix_pattern | (uint8_t)val;
        return 1;
    }
    out[0] = prefix_pattern | (uint8_t)max_prefix;
    val -= max_prefix;
    int i = 1;
    while (val >= 128) {
        out[i++] = (uint8_t)(val & 127) | 128;
        val >>= 7;
    }
    out[i++] = (uint8_t)val;
    return i;
}

// ===== HPACK Decode Headers =====

nyx_array_t* nyx_h2_decode_headers(nyx_string* block) {
    nyx_array_t* result = nyx_array_new(8);
    if (!block || block->length == 0) return result;

    const uint8_t* data = (const uint8_t*)block->data;
    int len = (int)block->length;
    int pos = 0;

    while (pos < len) {
        uint8_t b = data[pos];

        if (b & 0x80) {
            // Indexed header field (§6.1): top bit set
            int idx = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, 7, &idx);
            pos += consumed;
            if (idx > 0 && idx < HPACK_STATIC_SIZE) {
                nyx_array_push(result, (int64_t)nyx_string_from_cstr(hpack_static[idx][0]));
                nyx_array_push(result, (int64_t)nyx_string_from_cstr(hpack_static[idx][1]));
            }
        } else if ((b & 0xC0) == 0x40) {
            // Literal with incremental indexing (§6.2.1)
            int name_idx = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, 6, &name_idx);
            pos += consumed;

            nyx_string* name;
            if (name_idx > 0 && name_idx < HPACK_STATIC_SIZE) {
                name = nyx_string_from_cstr(hpack_static[name_idx][0]);
            } else {
                // Read literal name
                if (pos >= len) break;
                int huffman = data[pos] & 0x80;
                int name_len = 0;
                consumed = hpack_decode_int(data + pos, len - pos, 7, &name_len);
                pos += consumed;
                if (pos + name_len > len) break;
                if (huffman) {
                    name = huff_decode(data + pos, name_len);
                } else {
                    name = nyx_string_from_ptr((char*)(data + pos), name_len);
                }
                pos += name_len;
            }

            // Read value
            if (pos >= len) break;
            int huffman_v = data[pos] & 0x80;
            int val_len = 0;
            consumed = hpack_decode_int(data + pos, len - pos, 7, &val_len);
            pos += consumed;
            if (pos + val_len > len) break;
            nyx_string* value;
            if (huffman_v) {
                value = huff_decode(data + pos, val_len);
            } else {
                value = nyx_string_from_ptr((char*)(data + pos), val_len);
            }
            pos += val_len;

            nyx_array_push(result, (int64_t)name);
            nyx_array_push(result, (int64_t)value);
        } else if ((b & 0xF0) == 0x00 || (b & 0xF0) == 0x10) {
            // Literal without indexing (§6.2.2) or never indexed (§6.2.3)
            int prefix = (b & 0xF0) == 0x00 ? 4 : 4;
            int name_idx = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, prefix, &name_idx);
            pos += consumed;

            nyx_string* name;
            if (name_idx > 0 && name_idx < HPACK_STATIC_SIZE) {
                name = nyx_string_from_cstr(hpack_static[name_idx][0]);
            } else {
                if (pos >= len) break;
                int huffman = data[pos] & 0x80;
                int name_len = 0;
                consumed = hpack_decode_int(data + pos, len - pos, 7, &name_len);
                pos += consumed;
                if (pos + name_len > len) break;
                if (huffman) {
                    name = huff_decode(data + pos, name_len);
                } else {
                    name = nyx_string_from_ptr((char*)(data + pos), name_len);
                }
                pos += name_len;
            }

            if (pos >= len) break;
            int huffman_v = data[pos] & 0x80;
            int val_len = 0;
            consumed = hpack_decode_int(data + pos, len - pos, 7, &val_len);
            pos += consumed;
            if (pos + val_len > len) break;
            nyx_string* value;
            if (huffman_v) {
                value = huff_decode(data + pos, val_len);
            } else {
                value = nyx_string_from_ptr((char*)(data + pos), val_len);
            }
            pos += val_len;

            nyx_array_push(result, (int64_t)name);
            nyx_array_push(result, (int64_t)value);
        } else if ((b & 0xE0) == 0x20) {
            // Dynamic table size update (§6.3) — skip
            int new_size = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, 5, &new_size);
            pos += consumed;
        } else {
            pos++;  // skip unknown
        }
    }

    return result;
}

// ===== HPACK Encode Headers =====

// Find static table index for a header name+value pair
static int hpack_find_static(const char* name, const char* value) {
    for (int i = 1; i < HPACK_STATIC_SIZE; i++) {
        if (strcmp(hpack_static[i][0], name) == 0) {
            if (value && hpack_static[i][1][0] != '\0' &&
                strcmp(hpack_static[i][1], value) == 0) {
                return i;  // full match
            }
        }
    }
    return 0;
}

// Find static table index for just the header name
static int hpack_find_name(const char* name) {
    for (int i = 1; i < HPACK_STATIC_SIZE; i++) {
        if (strcmp(hpack_static[i][0], name) == 0) return i;
    }
    return 0;
}

nyx_string* nyx_h2_encode_headers(nyx_array_t* headers) {
    if (!headers) return nyx_string_from_cstr("");

    int n = (int)headers->length;
    // Allocate generous buffer (headers rarely exceed a few KB)
    int cap = n * 128 + 256;
    uint8_t* out = (uint8_t*)GC_malloc_atomic(cap);
    int opos = 0;

    for (int i = 0; i + 1 < n; i += 2) {
        int64_t name_raw = nyx_array_get(headers, i);
        int64_t value_raw = nyx_array_get(headers, i + 1);
        nyx_string* name = (nyx_string*)(uintptr_t)name_raw;
        nyx_string* value = (nyx_string*)(uintptr_t)value_raw;
        if (!name || !value) continue;

        const char* n_str = nyx_string_to_cstr(name);
        const char* v_str = nyx_string_to_cstr(value);

        // Try full match in static table
        int idx = hpack_find_static(n_str, v_str);
        if (idx > 0) {
            // Indexed header field: 1-bit prefix + index
            opos += hpack_encode_int(out + opos, idx, 7, 0x80);
            continue;
        }

        // Try name-only match
        int name_idx = hpack_find_name(n_str);
        if (name_idx > 0) {
            // Literal without indexing, name referenced by index
            opos += hpack_encode_int(out + opos, name_idx, 4, 0x00);
        } else {
            // Literal without indexing, new name
            out[opos++] = 0x00;  // no name index
            // Encode name as literal (no Huffman)
            opos += hpack_encode_int(out + opos, (int)name->length, 7, 0x00);
            memcpy(out + opos, name->data, name->length);
            opos += (int)name->length;
        }
        // Encode value as literal (no Huffman)
        opos += hpack_encode_int(out + opos, (int)value->length, 7, 0x00);
        memcpy(out + opos, value->data, value->length);
        opos += (int)value->length;
    }

    return nyx_string_from_ptr((char*)out, opos);
}

// ===== Frame I/O =====

nyx_array_t* nyx_h2_read_frame(int64_t fd) {
    nyx_array_t* result = nyx_array_new(8);

    // Read 9-byte frame header
    nyx_string* hdr = nyx_tcp_read_exact(fd, 9);
    if (!hdr || hdr->length < 9) return result;

    const uint8_t* h = (const uint8_t*)hdr->data;
    int payload_len = ((int)h[0] << 16) | ((int)h[1] << 8) | (int)h[2];
    int type = h[3];
    int flags = h[4];
    int stream_id = ((int)(h[5] & 0x7F) << 24) | ((int)h[6] << 16) |
                    ((int)h[7] << 8) | (int)h[8];

    nyx_string* payload;
    if (payload_len > 0) {
        payload = nyx_tcp_read_exact(fd, payload_len);
        if (!payload || (int)payload->length < payload_len) return nyx_array_new(8);
    } else {
        payload = nyx_string_from_cstr("");
    }

    nyx_array_push(result, (int64_t)type);
    nyx_array_push(result, (int64_t)flags);
    nyx_array_push(result, (int64_t)stream_id);
    nyx_array_push(result, (int64_t)payload);

    return result;
}

int64_t nyx_h2_write_frame(int64_t fd, int64_t type, int64_t flags,
                            int64_t stream_id, nyx_string* payload) {
    int plen = payload ? (int)payload->length : 0;

    uint8_t hdr[9];
    hdr[0] = (plen >> 16) & 0xFF;
    hdr[1] = (plen >> 8) & 0xFF;
    hdr[2] = plen & 0xFF;
    hdr[3] = (uint8_t)type;
    hdr[4] = (uint8_t)flags;
    hdr[5] = (uint8_t)((stream_id >> 24) & 0x7F);
    hdr[6] = (uint8_t)((stream_id >> 16) & 0xFF);
    hdr[7] = (uint8_t)((stream_id >> 8) & 0xFF);
    hdr[8] = (uint8_t)(stream_id & 0xFF);

    struct iovec iov[2];
    int iovcnt = 1;
    iov[0].iov_base = hdr;
    iov[0].iov_len = 9;
    if (plen > 0 && payload) {
        iov[1].iov_base = payload->data;
        iov[1].iov_len = plen;
        iovcnt = 2;
    }

    ssize_t written = writev((int)fd, iov, iovcnt);
    return (int64_t)written;
}

// ===== SETTINGS helpers =====

nyx_string* nyx_h2_build_settings(int64_t max_concurrent, int64_t window_size,
                                   int64_t max_frame_size) {
    // Each setting: 2-byte ID + 4-byte value
    // SETTINGS_MAX_CONCURRENT_STREAMS (0x3)
    // SETTINGS_INITIAL_WINDOW_SIZE (0x4)
    // SETTINGS_MAX_FRAME_SIZE (0x5)
    uint8_t buf[18];  // 3 settings x 6 bytes
    int pos = 0;

    // MAX_CONCURRENT_STREAMS
    buf[pos++] = 0x00; buf[pos++] = 0x03;
    buf[pos++] = (max_concurrent >> 24) & 0xFF;
    buf[pos++] = (max_concurrent >> 16) & 0xFF;
    buf[pos++] = (max_concurrent >> 8) & 0xFF;
    buf[pos++] = max_concurrent & 0xFF;

    // INITIAL_WINDOW_SIZE
    buf[pos++] = 0x00; buf[pos++] = 0x04;
    buf[pos++] = (window_size >> 24) & 0xFF;
    buf[pos++] = (window_size >> 16) & 0xFF;
    buf[pos++] = (window_size >> 8) & 0xFF;
    buf[pos++] = window_size & 0xFF;

    // MAX_FRAME_SIZE
    buf[pos++] = 0x00; buf[pos++] = 0x05;
    buf[pos++] = (max_frame_size >> 24) & 0xFF;
    buf[pos++] = (max_frame_size >> 16) & 0xFF;
    buf[pos++] = (max_frame_size >> 8) & 0xFF;
    buf[pos++] = max_frame_size & 0xFF;

    return nyx_string_from_ptr((char*)buf, pos);
}
