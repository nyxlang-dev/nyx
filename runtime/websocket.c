// runtime/websocket.c — WebSocket protocol (RFC 6455) for Nyx (v5.1.0)
// Implements handshake + framing. Transport via existing tcp_* functions.
// Only supports text frames (opcode 0x1) and close frames (0x8).

#include "strings.h"
#include "net.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <gc/gc.h>

// Base64 encode (needed for Sec-WebSocket-Accept)
static const char B64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

static void b64_encode_bytes(const uint8_t* in, size_t len, char* out) {
    size_t i, j = 0;
    for (i = 0; i < len; ) {
        uint32_t a = i < len ? in[i++] : 0;
        uint32_t b = i < len ? in[i++] : 0;
        uint32_t c = i < len ? in[i++] : 0;
        uint32_t t = (a << 16) | (b << 8) | c;
        out[j++] = B64[(t >> 18) & 63];
        out[j++] = B64[(t >> 12) & 63];
        out[j++] = B64[(t >> 6)  & 63];
        out[j++] = B64[(t >> 0)  & 63];
    }
    size_t mod = len % 3;
    if (mod == 1) { out[j-1] = '='; out[j-2] = '='; }
    else if (mod == 2) { out[j-1] = '='; }
    out[j] = '\0';
}

// SHA-1 for WebSocket handshake
#define SHA1_DIGEST_LEN 20

typedef struct {
    uint32_t h[5];
    uint8_t  buf[64];
    uint64_t count;
} Sha1Ctx;

static void sha1_init(Sha1Ctx* ctx) {
    ctx->h[0] = 0x67452301; ctx->h[1] = 0xefcdab89;
    ctx->h[2] = 0x98badcfe; ctx->h[3] = 0x10325476;
    ctx->h[4] = 0xc3d2e1f0;
    ctx->count = 0;
}

static uint32_t sha1_rot(uint32_t v, int n) { return (v << n) | (v >> (32 - n)); }

static void sha1_block(Sha1Ctx* ctx, const uint8_t* block) {
    uint32_t w[80], a, b, c, d, e, f, k, temp;
    for (int i = 0; i < 16; i++)
        w[i] = ((uint32_t)block[i*4]<<24)|((uint32_t)block[i*4+1]<<16)|
               ((uint32_t)block[i*4+2]<<8)|(uint32_t)block[i*4+3];
    for (int i = 16; i < 80; i++)
        w[i] = sha1_rot(w[i-3]^w[i-8]^w[i-14]^w[i-16], 1);
    a=ctx->h[0]; b=ctx->h[1]; c=ctx->h[2]; d=ctx->h[3]; e=ctx->h[4];
    for (int i = 0; i < 80; i++) {
        if      (i < 20) { f = (b&c)|(~b&d); k = 0x5a827999; }
        else if (i < 40) { f = b^c^d;        k = 0x6ed9eba1; }
        else if (i < 60) { f = (b&c)|(b&d)|(c&d); k = 0x8f1bbcdc; }
        else             { f = b^c^d;        k = 0xca62c1d6; }
        temp = sha1_rot(a,5)+f+e+k+w[i];
        e=d; d=c; c=sha1_rot(b,30); b=a; a=temp;
    }
    ctx->h[0]+=a; ctx->h[1]+=b; ctx->h[2]+=c; ctx->h[3]+=d; ctx->h[4]+=e;
}

static void sha1_update(Sha1Ctx* ctx, const uint8_t* data, size_t len) {
    size_t idx = ctx->count % 64;
    ctx->count += len;
    for (size_t i = 0; i < len; i++) {
        ctx->buf[idx++] = data[i];
        if (idx == 64) { sha1_block(ctx, ctx->buf); idx = 0; }
    }
}

static void sha1_final(Sha1Ctx* ctx, uint8_t digest[SHA1_DIGEST_LEN]) {
    size_t idx = ctx->count % 64;
    ctx->buf[idx++] = 0x80;
    if (idx > 56) { while(idx < 64) ctx->buf[idx++] = 0; sha1_block(ctx, ctx->buf); idx = 0; }
    while (idx < 56) ctx->buf[idx++] = 0;
    uint64_t bits = ctx->count * 8;
    for (int i = 7; i >= 0; i--) { ctx->buf[56+i] = bits & 0xFF; bits >>= 8; }
    sha1_block(ctx, ctx->buf);
    for (int i = 0; i < 5; i++) {
        digest[i*4]   = (ctx->h[i] >> 24) & 0xFF;
        digest[i*4+1] = (ctx->h[i] >> 16) & 0xFF;
        digest[i*4+2] = (ctx->h[i] >> 8)  & 0xFF;
        digest[i*4+3] = (ctx->h[i] >> 0)  & 0xFF;
    }
}

// Compute Sec-WebSocket-Accept from Sec-WebSocket-Key
// accept = base64(sha1(key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"))
nyx_string* nyx_ws_accept_key(nyx_string* key) {
    static const char* GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    size_t key_len = (size_t)key->length;
    size_t guid_len = strlen(GUID);
    size_t total = key_len + guid_len;
    char* combined = (char*)GC_malloc(total + 1);
    memcpy(combined, key->data, key_len);
    memcpy(combined + key_len, GUID, guid_len);
    combined[total] = '\0';

    Sha1Ctx ctx; sha1_init(&ctx);
    sha1_update(&ctx, (const uint8_t*)combined, total);
    uint8_t digest[SHA1_DIGEST_LEN];
    sha1_final(&ctx, digest);

    // base64 encode: 20 bytes → 28 chars + NUL
    char out[32];
    b64_encode_bytes(digest, SHA1_DIGEST_LEN, out);
    return nyx_string_from_cstr(out);
}

// Build WebSocket upgrade response
nyx_string* nyx_ws_handshake_response(nyx_string* ws_key) {
    nyx_string* accept = nyx_ws_accept_key(ws_key);
    char buf[512];
    snprintf(buf, sizeof(buf),
        "HTTP/1.1 101 Switching Protocols\r\n"
        "Upgrade: websocket\r\n"
        "Connection: Upgrade\r\n"
        "Sec-WebSocket-Accept: %s\r\n\r\n",
        accept->data);
    return nyx_string_from_cstr(buf);
}

// Extract Sec-WebSocket-Key from HTTP headers string
nyx_string* nyx_ws_extract_key(nyx_string* headers) {
    const char* search = "Sec-WebSocket-Key: ";
    char* pos = strstr(headers->data, search);
    if (!pos) return nyx_string_from_cstr("");
    pos += strlen(search);
    char* end = pos;
    while (*end && *end != '\r' && *end != '\n') end++;
    size_t len = end - pos;
    char* key = (char*)GC_malloc(len + 1);
    memcpy(key, pos, len);
    key[len] = '\0';
    return nyx_string_from_cstr(key);
}

// Build a WebSocket text frame (client→server: unmasked for simplicity)
// Server-to-client frames must NOT be masked per RFC 6455
nyx_string* nyx_ws_build_frame(nyx_string* payload) {
    size_t payload_len = (size_t)payload->length;
    size_t frame_size;
    uint8_t* frame;

    if (payload_len <= 125) {
        frame_size = 2 + payload_len;
        frame = (uint8_t*)GC_malloc(frame_size + 1);
        frame[0] = 0x81;  // FIN + opcode text
        frame[1] = (uint8_t)payload_len;
        memcpy(frame + 2, payload->data, payload_len);
    } else if (payload_len <= 65535) {
        frame_size = 4 + payload_len;
        frame = (uint8_t*)GC_malloc(frame_size + 1);
        frame[0] = 0x81;
        frame[1] = 126;
        frame[2] = (payload_len >> 8) & 0xFF;
        frame[3] = payload_len & 0xFF;
        memcpy(frame + 4, payload->data, payload_len);
    } else {
        return nyx_string_from_cstr("");  // too large
    }
    frame[frame_size] = '\0';

    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)frame;
    r->length = (int64_t)frame_size;
    return r;
}

// Parse a WebSocket frame, return payload (assumes unmasked server→client)
nyx_string* nyx_ws_parse_frame(nyx_string* data) {
    if (!data || data->length < 2) return nyx_string_from_cstr("");
    const uint8_t* p = (const uint8_t*)data->data;
    uint8_t opcode = p[0] & 0x0F;
    if (opcode == 0x8) return nyx_string_from_cstr("__CLOSE__");

    uint8_t masked = (p[1] & 0x80) != 0;
    size_t payload_len = p[1] & 0x7F;
    size_t header_size = 2;

    if (payload_len == 126 && data->length >= 4) {
        payload_len = ((size_t)p[2] << 8) | p[3];
        header_size = 4;
    } else if (payload_len == 127 && data->length >= 10) {
        payload_len = 0;
        for (int i = 0; i < 8; i++) payload_len = (payload_len << 8) | p[2+i];
        header_size = 10;
    }

    if (masked) header_size += 4;
    if ((int64_t)(header_size + payload_len) > data->length)
        return nyx_string_from_cstr("");

    char* out = (char*)GC_malloc(payload_len + 1);
    const uint8_t* payload_start = p + header_size;
    if (masked) {
        const uint8_t* mask = p + header_size - 4;
        for (size_t i = 0; i < payload_len; i++)
            out[i] = payload_start[i] ^ mask[i % 4];
    } else {
        memcpy(out, payload_start, payload_len);
    }
    out[payload_len] = '\0';

    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = out;
    r->length = (int64_t)payload_len;
    return r;
}

// Check if data starts with a WebSocket close frame
int64_t nyx_ws_is_close(nyx_string* data) {
    if (!data || data->length < 2) return 0;
    return ((data->data[0] & 0x0F) == 0x8) ? 1 : 0;
}

// Build a close frame
nyx_string* nyx_ws_close_frame(void) {
    nyx_string* r = (nyx_string*)GC_malloc(sizeof(nyx_string));
    r->data = (char*)GC_malloc(3);
    r->data[0] = (char)0x88;  // FIN + close
    r->data[1] = 0;           // no payload
    r->data[2] = '\0';
    r->length = 2;
    return r;
}
