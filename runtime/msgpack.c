// runtime/msgpack.c — MessagePack binary serialization for Nyx (v4.7.0)
// Implements a subset of MessagePack spec: nil, bool, int, float, str, array, map
// https://msgpack.org/index.html

#include "strings.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <gc/gc.h>

// ── Encoder ─────────────────────────────────────────────────────────────────

typedef struct {
    uint8_t* buf;
    size_t   len;
    size_t   cap;
} MsgBuf;

static void msgbuf_init(MsgBuf* b) {
    b->cap = 256;
    b->buf = (uint8_t*)GC_malloc(b->cap);
    b->len = 0;
}

static void msgbuf_push(MsgBuf* b, uint8_t byte) {
    if (b->len >= b->cap) {
        b->cap *= 2;
        uint8_t* nb = (uint8_t*)GC_malloc(b->cap);
        memcpy(nb, b->buf, b->len);
        b->buf = nb;
    }
    b->buf[b->len++] = byte;
}

static void msgbuf_push_bytes(MsgBuf* b, const uint8_t* data, size_t n) {
    for (size_t i = 0; i < n; i++) msgbuf_push(b, data[i]);
}

static void encode_uint64_be(MsgBuf* b, uint64_t v, int nbytes) {
    for (int i = nbytes - 1; i >= 0; i--)
        msgbuf_push(b, (uint8_t)((v >> (i * 8)) & 0xFF));
}

// Encode nil
void msgpack_encode_nil(MsgBuf* b) {
    msgbuf_push(b, 0xc0);
}

// Encode bool
void msgpack_encode_bool(MsgBuf* b, int v) {
    msgbuf_push(b, v ? 0xc3 : 0xc2);
}

// Encode int64
void msgpack_encode_int(MsgBuf* b, int64_t v) {
    if (v >= 0 && v <= 127) {
        msgbuf_push(b, (uint8_t)v);
    } else if (v >= -32 && v < 0) {
        msgbuf_push(b, (uint8_t)(0xe0 | (v + 32)));
    } else if (v >= 0 && v <= 0xFF) {
        msgbuf_push(b, 0xcc); msgbuf_push(b, (uint8_t)v);
    } else if (v >= 0 && v <= 0xFFFF) {
        msgbuf_push(b, 0xcd); encode_uint64_be(b, (uint64_t)v, 2);
    } else if (v >= 0 && v <= 0xFFFFFFFF) {
        msgbuf_push(b, 0xce); encode_uint64_be(b, (uint64_t)v, 4);
    } else if (v >= 0) {
        msgbuf_push(b, 0xcf); encode_uint64_be(b, (uint64_t)v, 8);
    } else if (v >= -128) {
        msgbuf_push(b, 0xd0); msgbuf_push(b, (uint8_t)(int8_t)v);
    } else if (v >= -32768) {
        msgbuf_push(b, 0xd1); encode_uint64_be(b, (uint64_t)(int16_t)v, 2);
    } else if (v >= -2147483648LL) {
        msgbuf_push(b, 0xd2); encode_uint64_be(b, (uint64_t)(int32_t)v, 4);
    } else {
        msgbuf_push(b, 0xd3); encode_uint64_be(b, (uint64_t)v, 8);
    }
}

// Encode float (double)
void msgpack_encode_float(MsgBuf* b, double v) {
    // Use float64 format (0xcb)
    msgbuf_push(b, 0xcb);
    uint64_t bits;
    memcpy(&bits, &v, 8);
    encode_uint64_be(b, bits, 8);
}

// Encode string
void msgpack_encode_str(MsgBuf* b, const char* s, size_t len) {
    if (len <= 31) {
        msgbuf_push(b, (uint8_t)(0xa0 | len));
    } else if (len <= 0xFF) {
        msgbuf_push(b, 0xd9); msgbuf_push(b, (uint8_t)len);
    } else if (len <= 0xFFFF) {
        msgbuf_push(b, 0xda); encode_uint64_be(b, len, 2);
    } else {
        msgbuf_push(b, 0xdb); encode_uint64_be(b, len, 4);
    }
    msgbuf_push_bytes(b, (const uint8_t*)s, len);
}

// Encode array header
void msgpack_encode_array_header(MsgBuf* b, size_t n) {
    if (n <= 15) {
        msgbuf_push(b, (uint8_t)(0x90 | n));
    } else if (n <= 0xFFFF) {
        msgbuf_push(b, 0xdc); encode_uint64_be(b, n, 2);
    } else {
        msgbuf_push(b, 0xdd); encode_uint64_be(b, n, 4);
    }
}

// Encode map header
void msgpack_encode_map_header(MsgBuf* b, size_t n) {
    if (n <= 15) {
        msgbuf_push(b, (uint8_t)(0x80 | n));
    } else if (n <= 0xFFFF) {
        msgbuf_push(b, 0xde); encode_uint64_be(b, n, 2);
    } else {
        msgbuf_push(b, 0xdf); encode_uint64_be(b, n, 4);
    }
}

// ── Nyx API ──────────────────────────────────────────────────────────────────

// Pack a single int to MessagePack bytes
nyx_string* nyx_msgpack_pack_int(int64_t v) {
    MsgBuf b; msgbuf_init(&b);
    msgpack_encode_int(&b, v);
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)GC_malloc(b.len + 1);
    memcpy(r->data, b.buf, b.len);
    r->data[b.len] = '\0';
    r->length = (int64_t)b.len;
    return r;
}

// Pack a string to MessagePack bytes
nyx_string* nyx_msgpack_pack_str(nyx_string* s) {
    MsgBuf b; msgbuf_init(&b);
    msgpack_encode_str(&b, s->data, (size_t)s->length);
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)GC_malloc(b.len + 1);
    memcpy(r->data, b.buf, b.len);
    r->data[b.len] = '\0';
    r->length = (int64_t)b.len;
    return r;
}

// Pack bool
nyx_string* nyx_msgpack_pack_bool(int64_t v) {
    MsgBuf b; msgbuf_init(&b);
    msgpack_encode_bool(&b, (int)v);
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)GC_malloc(b.len + 1);
    memcpy(r->data, b.buf, b.len);
    r->data[b.len] = '\0';
    r->length = (int64_t)b.len;
    return r;
}

// Pack nil
nyx_string* nyx_msgpack_pack_nil(void) {
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)GC_malloc(2);
    r->data[0] = (char)0xc0;
    r->data[1] = '\0';
    r->length = 1;
    return r;
}

// ── Decoder ──────────────────────────────────────────────────────────────────

// Decode first byte of msgpack data: returns type string
// Type strings: "nil", "bool_true", "bool_false", "int", "float", "str", "array", "map"
nyx_string* nyx_msgpack_type(nyx_string* data) {
    if (!data || data->length == 0) return nyx_string_from_cstr("nil");
    uint8_t b = (uint8_t)data->data[0];

    if (b == 0xc0) return nyx_string_from_cstr("nil");
    if (b == 0xc2) return nyx_string_from_cstr("bool_false");
    if (b == 0xc3) return nyx_string_from_cstr("bool_true");
    if (b <= 0x7f) return nyx_string_from_cstr("int");      // positive fixint
    if (b >= 0xe0) return nyx_string_from_cstr("int");      // negative fixint
    if (b == 0xcc || b == 0xcd || b == 0xce || b == 0xcf) return nyx_string_from_cstr("int");
    if (b == 0xd0 || b == 0xd1 || b == 0xd2 || b == 0xd3) return nyx_string_from_cstr("int");
    if (b == 0xca || b == 0xcb) return nyx_string_from_cstr("float");
    if ((b & 0xe0) == 0xa0) return nyx_string_from_cstr("str");
    if (b == 0xd9 || b == 0xda || b == 0xdb) return nyx_string_from_cstr("str");
    if ((b & 0xf0) == 0x90) return nyx_string_from_cstr("array");
    if (b == 0xdc || b == 0xdd) return nyx_string_from_cstr("array");
    if ((b & 0xf0) == 0x80) return nyx_string_from_cstr("map");
    if (b == 0xde || b == 0xdf) return nyx_string_from_cstr("map");
    return nyx_string_from_cstr("unknown");
}

// Decode int from msgpack
int64_t nyx_msgpack_unpack_int(nyx_string* data) {
    if (!data || data->length == 0) return 0;
    const uint8_t* p = (const uint8_t*)data->data;
    uint8_t b = p[0];
    if (b <= 0x7f) return (int64_t)b;
    if (b >= 0xe0) return (int64_t)(int8_t)b;
    if (b == 0xcc && data->length >= 2) return (int64_t)p[1];
    if (b == 0xcd && data->length >= 3) return (int64_t)((p[1] << 8) | p[2]);
    if (b == 0xce && data->length >= 5) return (int64_t)((uint32_t)p[1] << 24 | (uint32_t)p[2] << 16 | (uint32_t)p[3] << 8 | p[4]);
    if (b == 0xcf && data->length >= 9) {
        uint64_t v = 0;
        for (int i = 1; i <= 8; i++) v = (v << 8) | p[i];
        return (int64_t)v;
    }
    if (b == 0xd0 && data->length >= 2) return (int64_t)(int8_t)p[1];
    if (b == 0xd1 && data->length >= 3) return (int64_t)(int16_t)((p[1] << 8) | p[2]);
    if (b == 0xd2 && data->length >= 5) return (int64_t)(int32_t)((uint32_t)p[1] << 24 | (uint32_t)p[2] << 16 | (uint32_t)p[3] << 8 | p[4]);
    if (b == 0xd3 && data->length >= 9) {
        uint64_t v = 0;
        for (int i = 1; i <= 8; i++) v = (v << 8) | p[i];
        return (int64_t)v;
    }
    return 0;
}

// Decode string from msgpack
nyx_string* nyx_msgpack_unpack_str(nyx_string* data) {
    if (!data || data->length == 0) return nyx_string_from_cstr("");
    const uint8_t* p = (const uint8_t*)data->data;
    uint8_t b = p[0];
    size_t str_len = 0;
    const char* str_start = NULL;
    if ((b & 0xe0) == 0xa0 && data->length >= 1) {
        str_len = b & 0x1f;
        str_start = (const char*)(p + 1);
    } else if (b == 0xd9 && data->length >= 2) {
        str_len = p[1];
        str_start = (const char*)(p + 2);
    } else if (b == 0xda && data->length >= 3) {
        str_len = (p[1] << 8) | p[2];
        str_start = (const char*)(p + 3);
    } else {
        return nyx_string_from_cstr("");
    }
    char* buf = (char*)GC_malloc(str_len + 1);
    memcpy(buf, str_start, str_len);
    buf[str_len] = '\0';
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = buf;
    r->length = (int64_t)str_len;
    return r;
}

// Get encoded byte length of a packed value (for skipping)
int64_t nyx_msgpack_packed_size(nyx_string* data) {
    if (!data || data->length == 0) return 0;
    const uint8_t* p = (const uint8_t*)data->data;
    uint8_t b = p[0];
    if (b == 0xc0 || b == 0xc2 || b == 0xc3) return 1;
    if (b <= 0x7f || b >= 0xe0) return 1;
    if (b == 0xcc || b == 0xd0) return 2;
    if (b == 0xcd || b == 0xd1) return 3;
    if (b == 0xca) return 5;
    if (b == 0xce || b == 0xd2) return 5;
    if (b == 0xcf || b == 0xd3 || b == 0xcb) return 9;
    if ((b & 0xe0) == 0xa0) return 1 + (int64_t)(b & 0x1f);
    if (b == 0xd9 && data->length >= 2) return 2 + p[1];
    if (b == 0xda && data->length >= 3) return 3 + ((int64_t)p[1] << 8 | p[2]);
    return 1;
}
