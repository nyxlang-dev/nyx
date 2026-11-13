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
#include "os/nyx_os.h"

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
    // Multi-byte integer (RFC 7541 §5.1). El peer controla la continuación:
    // sin tope, `m` crece de 7 en 7 y `(b & 127) << m` es UB a partir de 32,
    // dejando `val` negativo. Un val negativo pasa los guards de longitud de
    // los callers y llega a nyx_string_from_ptr / GC_malloc con un size_t
    // enorme. Tope: 4 bytes de continuación (m <= 21) cubre valores hasta
    // ~2^28, muy por encima de cualquier índice o longitud HPACK legítima.
    int m = 0;
    int i = 1;
    int ok = 0;
    while (i < len) {
        if (m > 21) return 0;              // varint absurdo → 0 bytes consumidos
        int b = buf[i];
        val += (b & 127) << m;
        if (val < 0) return 0;             // overflow defensivo
        m += 7;
        i++;
        if ((b & 128) == 0) { ok = 1; break; }
    }
    if (!ok) return 0;                     // se acabó el buffer sin byte final
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
            // consumed == 0 significa varint inválido/incompleto (ver
            // hpack_decode_int): sin este chequeo, pos no avanza y el `while
            // (pos < len)` de arriba reintenta el mismo byte por siempre —
            // bucle infinito (o, peor, asignaciones repetidas sin fin antes
            // de volver a fallar). Cortar acá es la degradación segura.
            if (consumed == 0) break;
            pos += consumed;
            if (idx > 0 && idx < HPACK_STATIC_SIZE) {
                nyx_array_push_tagged(result, (int64_t)nyx_string_from_cstr(hpack_static[idx][0]), NYX_TAG_STRING);
                nyx_array_push_tagged(result, (int64_t)nyx_string_from_cstr(hpack_static[idx][1]), NYX_TAG_STRING);
            }
        } else if ((b & 0xC0) == 0x40) {
            // Literal with incremental indexing (§6.2.1)
            int name_idx = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, 6, &name_idx);
            if (consumed == 0) break;  // varint inválido — ver comentario arriba
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
                if (consumed == 0) break;  // varint inválido — ver comentario arriba
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
            if (consumed == 0) break;  // varint inválido — ver comentario arriba
            pos += consumed;
            if (pos + val_len > len) break;
            nyx_string* value;
            if (huffman_v) {
                value = huff_decode(data + pos, val_len);
            } else {
                value = nyx_string_from_ptr((char*)(data + pos), val_len);
            }
            pos += val_len;

            nyx_array_push_tagged(result, (int64_t)name, NYX_TAG_STRING);
            nyx_array_push_tagged(result, (int64_t)value, NYX_TAG_STRING);
        } else if ((b & 0xF0) == 0x00 || (b & 0xF0) == 0x10) {
            // Literal without indexing (§6.2.2) or never indexed (§6.2.3)
            int prefix = (b & 0xF0) == 0x00 ? 4 : 4;
            int name_idx = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, prefix, &name_idx);
            if (consumed == 0) break;  // varint inválido — ver comentario arriba
            pos += consumed;

            nyx_string* name;
            if (name_idx > 0 && name_idx < HPACK_STATIC_SIZE) {
                name = nyx_string_from_cstr(hpack_static[name_idx][0]);
            } else {
                if (pos >= len) break;
                int huffman = data[pos] & 0x80;
                int name_len = 0;
                consumed = hpack_decode_int(data + pos, len - pos, 7, &name_len);
                if (consumed == 0) break;  // varint inválido — ver comentario arriba
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
            if (consumed == 0) break;  // varint inválido — ver comentario arriba
            pos += consumed;
            if (pos + val_len > len) break;
            nyx_string* value;
            if (huffman_v) {
                value = huff_decode(data + pos, val_len);
            } else {
                value = nyx_string_from_ptr((char*)(data + pos), val_len);
            }
            pos += val_len;

            nyx_array_push_tagged(result, (int64_t)name, NYX_TAG_STRING);
            nyx_array_push_tagged(result, (int64_t)value, NYX_TAG_STRING);
        } else if ((b & 0xE0) == 0x20) {
            // Dynamic table size update (§6.3) — skip
            int new_size = 0;
            int consumed = hpack_decode_int(data + pos, len - pos, 5, &new_size);
            if (consumed == 0) break;  // varint inválido — ver comentario arriba
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

// Cota superior de bytes que hpack_encode_int puede escribir: 1 byte de
// prefijo + hasta 5 bytes de continuación (7 bits útiles cada uno cubren un
// int de 32 bits: 5*7 = 35 bits >= 32). Usado por los guards de escritura
// de nyx_h2_encode_headers para no depender SOLO del presupuesto ex-ante.
#define HPACK_INT_MAX_BYTES 6

#ifdef NYX_RUNTIME_TESTING
// Hook SOLO para tests unitarios (tests/runtime-unit/test_http2.c la usa vía
// `extern`), y SOLO existe cuando el runtime se compila con
// -DNYX_RUNTIME_TESTING (scripts/testing/run_runtime_tests.sh). El peor caso
// real de overhead por par (marcador + 2 varints de longitud) es 13 bytes
// contra los 16 presupuestados -- con el cálculo real de `total` el guard
// por-escritura de abajo es matemáticamente inalcanzable desde cualquier
// input legítimo, así que no hay forma de ejercitar por API pública el
// camino "presupuesto insuficiente a mitad de header". Este hook, si es > 0,
// reemplaza `total` por un valor fijo para poder forzar ese camino sobre la
// función real y probar que el guard rebobina a frontera de header en vez de
// dejar un fragmento colgando.
//
// GATEADO POR COMPILACIÓN A PROPÓSITO, no solo documentado como "no tocar":
// RUNTIME_SRCS (Makefile) es la MISMA lista de fuentes con la que se
// compilan nyx_bootstrap, nyx_build, nyx_repl y cualquier binario de
// `make run`/`make compile` -- no hay unidad de compilación separada para
// tests. Una variable global mutable, no thread-local, en un runtime con
// scheduler M:N, que si algo la escribiera (otra unidad `extern`, FFI,
// dlsym, corrupción de memoria en .bss) haría que el encoder trunque
// headers válidos en todos los hilos a la vez -- sería reintroducir
// exactamente la vulnerabilidad que esta task vino a cerrar, con una
// palanca nueva. Con el #ifdef, el símbolo NO EXISTE en ningún binario que
// no defina NYX_RUNTIME_TESTING explícitamente (verificado con `nm`, ver
// task-3-report.md).
size_t nyx_h2_test_force_budget = 0;
#endif

nyx_string* nyx_h2_encode_headers(nyx_array_t* headers) {
    if (!headers) return nyx_string_from_cstr("");

    int n = (int)headers->length;
    // El presupuesto sale del tamaño REAL de cada header, no de una constante:
    // cap = n*128 + 256 desbordaba con un solo par nombre+valor de >~250 bytes
    // (un set-cookie/authorization de 4 KB escribía kilobytes fuera del bloque,
    // con contenido controlado por el productor del header).
    // Overhead por par: hasta 1 byte de prefijo + 5 de longitud varint, ×2 (nombre
    // y valor) = 12; se redondea a 16 por par, más 256 de colchón.
    size_t total = 256;
    for (int i = 0; i + 1 < n; i += 2) {
        nyx_string* pn = (nyx_string*)(uintptr_t)nyx_array_get(headers, i);
        nyx_string* pv = (nyx_string*)(uintptr_t)nyx_array_get(headers, i + 1);
        if (!pn || !pv) continue;
        total += (size_t)pn->length + (size_t)pv->length + 16;
    }
#ifdef NYX_RUNTIME_TESTING
    if (nyx_h2_test_force_budget > 0) total = nyx_h2_test_force_budget;
#endif
    uint8_t* out = (uint8_t*)GC_malloc_atomic(total);
    if (!out) return nyx_string_from_cstr("");
    int opos = 0;

    for (int i = 0; i + 1 < n; i += 2) {
        int64_t name_raw = nyx_array_get(headers, i);
        int64_t value_raw = nyx_array_get(headers, i + 1);
        nyx_string* name = (nyx_string*)(uintptr_t)name_raw;
        nyx_string* value = (nyx_string*)(uintptr_t)value_raw;
        if (!name || !value) continue;

        // opos al entrar a esta iteración: si CUALQUIER guard de abajo corta
        // a mitad de header, rebobinamos opos hasta acá antes del `break`.
        // Sin esto, un guard posterior al primero de la iteración (p.ej. el
        // de los bytes del nombre, después de ya haber escrito el marcador
        // 0x00 y el varint de longitud) deja el bloque devuelto con un
        // fragmento de header colgando -- HPACK inválido que un peer
        // estricto puede interpretar mal o descartar entero, perdiendo
        // también los headers previos completos. El bloque devuelto SIEMPRE
        // debe terminar en frontera de header: o entra completo, o no entra.
        int header_start = opos;

        const char* n_str = nyx_string_to_cstr(name);
        const char* v_str = nyx_string_to_cstr(value);

        // Try full match in static table
        int idx = hpack_find_static(n_str, v_str);
        if (idx > 0) {
            // Guard: el presupuesto ex-ante (total) es la defensa primaria,
            // pero este chequeo por-escritura es la defensa real contra
            // desborde — no depende de que el cálculo de `total` siga
            // siendo correcto ante futuras ramas de codificación (Huffman,
            // etc). Si no entra, rebobinamos a header_start y cortamos:
            // degradación segura, nunca abort, nunca escritura fuera de
            // rango, y el bloque nunca queda con un header a medio escribir.
            if ((size_t)opos + HPACK_INT_MAX_BYTES > total) { opos = header_start; break; }
            // Indexed header field: 1-bit prefix + index
            opos += hpack_encode_int(out + opos, idx, 7, 0x80);
            continue;
        }

        // Try name-only match
        int name_idx = hpack_find_name(n_str);
        if (name_idx > 0) {
            // Literal without indexing, name referenced by index
            if ((size_t)opos + HPACK_INT_MAX_BYTES > total) { opos = header_start; break; }
            opos += hpack_encode_int(out + opos, name_idx, 4, 0x00);
        } else {
            // Literal without indexing, new name
            if ((size_t)opos + 1 > total) { opos = header_start; break; }
            out[opos++] = 0x00;  // no name index
            // Encode name as literal (no Huffman)
            if ((size_t)opos + HPACK_INT_MAX_BYTES > total) { opos = header_start; break; }
            opos += hpack_encode_int(out + opos, (int)name->length, 7, 0x00);
            if ((size_t)opos + (size_t)name->length > total) { opos = header_start; break; }
            memcpy(out + opos, name->data, name->length);
            opos += (int)name->length;
        }
        // Encode value as literal (no Huffman)
        if ((size_t)opos + HPACK_INT_MAX_BYTES > total) { opos = header_start; break; }
        opos += hpack_encode_int(out + opos, (int)value->length, 7, 0x00);
        if ((size_t)opos + (size_t)value->length > total) { opos = header_start; break; }
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

    nyx_array_push_tagged(result, (int64_t)type, NYX_TAG_INT);
    nyx_array_push_tagged(result, (int64_t)flags, NYX_TAG_INT);
    nyx_array_push_tagged(result, (int64_t)stream_id, NYX_TAG_INT);
    nyx_array_push_tagged(result, (int64_t)payload, NYX_TAG_STRING);

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

    os_iovec_t iov[2];
    int iovcnt = 1;
    iov[0].base = hdr;
    iov[0].len = 9;
    if (plen > 0 && payload) {
        iov[1].base = payload->data;
        iov[1].len = plen;
        iovcnt = 2;
    }

    // writev() crudo siempre da -1 en error (con errno aparte); os_sock_sendv
    // devuelve -errno -- coerción para preservar el valor EXACTO que cruza a
    // Nyx (mismo patrón que nyx_resp_write_bulk en net.c, Task 2).
    int64_t written = os_sock_sendv(fd, iov, iovcnt);
    return written < 0 ? -1 : written;
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

// ============================================================================
// Motor de conexión HTTP/2 de SERVIDOR, sin E/S (nyx_h2c_*)
// ============================================================================
// Entran bytes (nyx_h2c_feed), salen eventos (nyx_h2c_next_event) y bytes para
// el cliente (nyx_h2c_take_output). No toca sockets: lo mismo sirve sobre TLS
// (ALPN h2) que en claro (h2c), y se prueba sin red.
//
// Lo que las funciones de arriba (nyx_h2_decode_headers, nyx_h2_read_frame) no
// hacían y un navegador exige: tabla dinámica HPACK por conexión, control de
// flujo de envío por conexión y por flujo, CONTINUATION, estados de flujo y
// validación de cabeceras. Está pensado para un puerto expuesto a Internet,
// así que cada recurso que el cliente puede hacer crecer tiene tope:
//   - flujos abiertos (H2C_MAX_OPEN; el resto se rechaza con REFUSED_STREAM);
//   - bloque de cabeceras y lista decodificada (CONTINUATION sin fin, bomba
//     HPACK): H2C_MAX_HBLOCK / H2C_MAX_HLIST, error de conexión;
//   - cuerpo de petición por flujo (max_body) y por conexión (2 x max_body);
//   - frames de control (PING, SETTINGS, PRIORITY, RST_STREAM, DATA vacío) en
//     proporción a las peticiones reales, y RST_STREAM aparte («rapid reset»,
//     CVE-2023-44487): pasado el tope, GOAWAY ENHANCE_YOUR_CALM.
// EN: sans-IO HTTP/2 server connection engine. Bytes in, events and bytes out.
// Every client-growable resource is capped (see list above).

#define H2C_SLOTS        128
#define H2C_MAX_OPEN     100
#define H2C_MAX_FRAME    16384
#define H2C_MAX_HBLOCK   65536
#define H2C_MAX_HLIST    65536
#define H2C_DYN_MAX      4096
#define H2C_DYN_SLOTS    (H2C_DYN_MAX / 32)
#define H2C_WINDOW_MAX   2147483647LL

#define H2E_NO_ERROR        0
#define H2E_PROTOCOL        1
#define H2E_FLOW_CONTROL    3
#define H2E_STREAM_CLOSED   5
#define H2E_FRAME_SIZE      6
#define H2E_REFUSED_STREAM  7
#define H2E_COMPRESSION     9
#define H2E_CALM            11

typedef struct {
    int32_t  id;            // 0 = casilla libre
    uint8_t  remote_done;   // llegó END_STREAM del cliente (petición completa)
    uint8_t  delivered;     // la petición ya se entregó como evento
    uint8_t  head_sent;     // ya salieron las cabeceras de respuesta
    uint8_t  local_done;    // ya salió nuestro END_STREAM
    uint8_t  out_end;       // END_STREAM pendiente detrás de `out`
    int64_t  send_window;
    nyx_array_t* req_headers;
    uint8_t* body;  size_t body_len, body_cap;
    uint8_t* out;   size_t out_len, out_off, out_cap;
} H2cStream;

typedef struct {
    uint8_t* in;   size_t in_len, in_cap;
    uint8_t* out;  size_t out_len, out_cap;
    int      preface_done;
    int      fatal;          // error de conexión: GOAWAY encolado, cerrar
    int      goaway_sent;
    int      goaway_recv;
    int64_t  send_window;
    int64_t  peer_initial_window;
    int64_t  peer_max_frame;
    int32_t  last_stream_id;
    int      open_streams;
    int      rr;             // turno del reparto de ventana entre flujos
    // CONTINUATION en curso
    int32_t  cont_stream;
    int      cont_end_stream;
    uint8_t* hblock; size_t hblock_len, hblock_cap;
    // HPACK: tabla dinámica (anillo; dyn_head = la más nueva)
    nyx_string* dyn_name[H2C_DYN_SLOTS];
    nyx_string* dyn_value[H2C_DYN_SLOTS];
    int      dyn_head, dyn_count;
    size_t   dyn_size, dyn_max;
    // eventos pendientes
    nyx_array_t* events; int64_t ev_head;
    // topes
    int64_t  max_body, body_total;
    int64_t  n_streams, n_rst, n_ctrl;
    H2cStream streams[H2C_SLOTS];
} H2cConn;

// ---- buffers ----

static int h2c_reserve(uint8_t** buf, size_t* cap, size_t need) {
    if (need <= *cap) return 1;
    size_t ncap = *cap ? *cap : 1024;
    while (ncap < need) ncap *= 2;
    uint8_t* nb = (uint8_t*)GC_malloc_atomic(ncap);
    if (!nb) return 0;
    if (*buf && *cap) memcpy(nb, *buf, *cap);
    *buf = nb; *cap = ncap;
    return 1;
}

static void h2c_out(H2cConn* c, const uint8_t* p, size_t n) {
    if (!h2c_reserve(&c->out, &c->out_cap, c->out_len + n)) return;
    if (n) memcpy(c->out + c->out_len, p, n);
    c->out_len += n;
}

static void h2c_frame(H2cConn* c, int type, int flags, int32_t sid, const uint8_t* payload, size_t plen) {
    uint8_t h[9];
    h[0] = (plen >> 16) & 0xFF; h[1] = (plen >> 8) & 0xFF; h[2] = plen & 0xFF;
    h[3] = (uint8_t)type; h[4] = (uint8_t)flags;
    h[5] = (sid >> 24) & 0x7F; h[6] = (sid >> 16) & 0xFF; h[7] = (sid >> 8) & 0xFF; h[8] = sid & 0xFF;
    h2c_out(c, h, 9);
    h2c_out(c, payload, plen);
}

static void h2c_put32(uint8_t* p, uint32_t v) {
    p[0] = (v >> 24) & 0xFF; p[1] = (v >> 16) & 0xFF; p[2] = (v >> 8) & 0xFF; p[3] = v & 0xFF;
}
static uint32_t h2c_get32(const uint8_t* p) {
    return ((uint32_t)p[0] << 24) | ((uint32_t)p[1] << 16) | ((uint32_t)p[2] << 8) | (uint32_t)p[3];
}

static void h2c_window_update(H2cConn* c, int32_t sid, uint32_t n) {
    uint8_t p[4]; h2c_put32(p, n & 0x7FFFFFFF);
    h2c_frame(c, 8, 0, sid, p, 4);
}

static void h2c_rst(H2cConn* c, int32_t sid, uint32_t code) {
    uint8_t p[4]; h2c_put32(p, code);
    h2c_frame(c, 3, 0, sid, p, 4);
}

// Error de conexión: GOAWAY y no se procesa nada más.
static int h2c_die(H2cConn* c, uint32_t code) {
    if (!c->fatal) {
        uint8_t p[8];
        h2c_put32(p, (uint32_t)c->last_stream_id);
        h2c_put32(p + 4, code);
        h2c_frame(c, 7, 0, 0, p, 8);
        c->fatal = 1;
        c->goaway_sent = 1;
    }
    return -1;
}

// ---- flujos ----

static H2cStream* h2c_find(H2cConn* c, int32_t sid) {
    if (sid <= 0) return NULL;
    for (int i = 0; i < H2C_SLOTS; i++) if (c->streams[i].id == sid) return &c->streams[i];
    return NULL;
}

static void h2c_free_stream(H2cConn* c, H2cStream* s) {
    c->body_total -= (int64_t)s->body_len;
    if (c->body_total < 0) c->body_total = 0;
    memset(s, 0, sizeof(*s));
    if (c->open_streams > 0) c->open_streams--;
}

static H2cStream* h2c_new_stream(H2cConn* c, int32_t sid) {
    for (int i = 0; i < H2C_SLOTS; i++) {
        if (c->streams[i].id == 0) {
            H2cStream* s = &c->streams[i];
            memset(s, 0, sizeof(*s));
            s->id = sid;
            s->send_window = c->peer_initial_window;
            c->open_streams++;
            return s;
        }
    }
    return NULL;
}

static void h2c_event(H2cConn* c, int kind, int32_t sid, nyx_array_t* headers, nyx_string* body) {
    nyx_array_t* ev = nyx_array_new(4);
    nyx_array_push_tagged(ev, (int64_t)kind, NYX_TAG_INT);
    nyx_array_push_tagged(ev, (int64_t)sid, NYX_TAG_INT);
    nyx_array_push_tagged(ev, (int64_t)(uintptr_t)(headers ? headers : nyx_array_new(1)), NYX_TAG_ARRAY);
    nyx_array_push_tagged(ev, (int64_t)(uintptr_t)(body ? body : nyx_string_from_cstr("")), NYX_TAG_STRING);
    nyx_array_push_tagged(c->events, (int64_t)(uintptr_t)ev, NYX_TAG_ARRAY);
}

// Manda lo que las ventanas permitan de un flujo. Devuelve 1 si el flujo quedó
// cerrado y liberado.
static int h2c_flush_stream(H2cConn* c, H2cStream* s) {
    while (s->out_off < s->out_len) {
        int64_t n = (int64_t)(s->out_len - s->out_off);
        if (n > c->peer_max_frame) n = c->peer_max_frame;
        if (n > s->send_window) n = s->send_window;
        if (n > c->send_window) n = c->send_window;
        if (n <= 0) return 0;
        int last = (s->out_off + (size_t)n == s->out_len) && s->out_end;
        h2c_frame(c, 0, last ? 1 : 0, s->id, s->out + s->out_off, (size_t)n);
        s->out_off += (size_t)n;
        s->send_window -= n;
        c->send_window -= n;
        if (last) s->local_done = 1;
    }
    s->out_len = 0; s->out_off = 0;
    if (s->out_end && !s->local_done) {
        h2c_frame(c, 0, 1, s->id, NULL, 0);   // END_STREAM solo: no gasta ventana
        s->local_done = 1;
    }
    if (s->local_done) {
        // Respondimos antes de que el cliente terminara su petición: se le
        // avisa que deje de mandar (RFC 9113 §8.1).
        if (!s->remote_done) h2c_rst(c, s->id, H2E_NO_ERROR);
        h2c_free_stream(c, s);
        return 1;
    }
    return 0;
}

// Reparte la ventana de la conexión entre los flujos con datos pendientes,
// empezando cada vez por uno distinto para que ninguno se quede con todo.
static void h2c_flush_all(H2cConn* c) {
    int start = c->rr;
    c->rr = (c->rr + 1) % H2C_SLOTS;
    for (int k = 0; k < H2C_SLOTS; k++) {
        H2cStream* s = &c->streams[(start + k) % H2C_SLOTS];
        if (s->id == 0) continue;
        if (s->out_off < s->out_len || (s->out_end && !s->local_done)) h2c_flush_stream(c, s);
    }
}

// ---- HPACK con tabla dinámica ----

static void h2c_dyn_evict(H2cConn* c, size_t need) {
    while (c->dyn_count > 0 && c->dyn_size + need > c->dyn_max) {
        int oldest = (c->dyn_head + c->dyn_count - 1) % H2C_DYN_SLOTS;
        size_t sz = (size_t)c->dyn_name[oldest]->length + (size_t)c->dyn_value[oldest]->length + 32;
        c->dyn_size = c->dyn_size >= sz ? c->dyn_size - sz : 0;
        c->dyn_name[oldest] = NULL; c->dyn_value[oldest] = NULL;
        c->dyn_count--;
    }
}

static void h2c_dyn_add(H2cConn* c, nyx_string* name, nyx_string* value) {
    size_t sz = (size_t)name->length + (size_t)value->length + 32;
    h2c_dyn_evict(c, sz);
    if (sz > c->dyn_max || c->dyn_count >= H2C_DYN_SLOTS) return;   // no entra: la tabla queda vacía
    c->dyn_head = (c->dyn_head + H2C_DYN_SLOTS - 1) % H2C_DYN_SLOTS;
    c->dyn_name[c->dyn_head] = name;
    c->dyn_value[c->dyn_head] = value;
    c->dyn_count++;
    c->dyn_size += sz;
}

// Índice HPACK (1..61 estática, 62.. dinámica) a nombre/valor. 0 si no existe.
static int h2c_hpack_lookup(H2cConn* c, int idx, nyx_string** name, nyx_string** value) {
    if (idx <= 0) return 0;
    if (idx < HPACK_STATIC_SIZE) {
        *name = nyx_string_from_cstr(hpack_static[idx][0]);
        *value = nyx_string_from_cstr(hpack_static[idx][1]);
        return 1;
    }
    int d = idx - HPACK_STATIC_SIZE;
    if (d >= c->dyn_count) return 0;
    int slot = (c->dyn_head + d) % H2C_DYN_SLOTS;
    *name = c->dyn_name[slot];
    *value = c->dyn_value[slot];
    return 1;
}

// Huffman estricto: NULL si la entrada no es un código válido.
static nyx_string* h2c_huff(const uint8_t* data, int len) {
    char* out = (char*)GC_malloc_atomic((size_t)len * 2 + 1);
    if (!out) return NULL;
    int opos = 0;
    uint64_t bits = 0;
    int nbits = 0;
    for (int i = 0; i < len; i++) {
        bits = (bits << 8) | data[i];
        nbits += 8;
        while (nbits >= 5) {
            int found = 0;
            for (int sym = 0; sym < 256; sym++) {
                int slen = huff_table[sym].nbits;
                if (slen > nbits) continue;
                uint64_t top = (bits >> (nbits - slen)) & (((uint64_t)1 << slen) - 1);
                if (top == huff_table[sym].code) {
                    out[opos++] = (char)sym;
                    nbits -= slen;
                    bits &= ((uint64_t)1 << nbits) - 1;
                    found = 1;
                    break;
                }
            }
            if (!found) {
                if (nbits >= 30) return NULL;   // ningún código es tan largo: basura
                break;                          // faltan bits: seguir leyendo
            }
        }
    }
    // El relleno son como mucho 7 bits, todos en 1 (prefijo de EOS).
    if (nbits > 7) return NULL;
    if (nbits > 0 && bits != (((uint64_t)1 << nbits) - 1)) return NULL;
    out[opos] = '\0';
    return nyx_string_from_ptr(out, opos);
}

// Lee un string HPACK en `pos`. Devuelve bytes consumidos, 0 si es inválido.
static int h2c_hpack_string(const uint8_t* data, int len, int pos, nyx_string** out) {
    if (pos >= len) return 0;
    int huffman = data[pos] & 0x80;
    int slen = 0;
    int used = hpack_decode_int(data + pos, len - pos, 7, &slen);
    if (used == 0 || slen < 0 || slen > H2C_MAX_HLIST) return 0;
    if (pos + used + slen > len) return 0;
    if (huffman) *out = h2c_huff(data + pos + used, slen);
    else *out = nyx_string_from_ptr((const char*)data + pos + used, slen);
    if (!*out) return 0;
    return used + slen;
}

// Decodifica un bloque de cabeceras completo. NULL = error de compresión (o
// lista demasiado grande): la tabla dinámica ya no es de fiar y la conexión
// tiene que morir.
static nyx_array_t* h2c_hpack_decode(H2cConn* c, const uint8_t* data, int len) {
    nyx_array_t* res = nyx_array_new(16);
    size_t list = 0;
    int pos = 0;
    while (pos < len) {
        uint8_t b = data[pos];
        nyx_string* name = NULL; nyx_string* value = NULL;
        if (b & 0x80) {
            int idx = 0;
            int used = hpack_decode_int(data + pos, len - pos, 7, &idx);
            if (used == 0) return NULL;
            pos += used;
            if (!h2c_hpack_lookup(c, idx, &name, &value)) return NULL;
        } else if ((b & 0xE0) == 0x20) {
            int nsz = 0;
            int used = hpack_decode_int(data + pos, len - pos, 5, &nsz);
            if (used == 0 || nsz < 0 || nsz > H2C_DYN_MAX) return NULL;
            pos += used;
            c->dyn_max = (size_t)nsz;
            h2c_dyn_evict(c, 0);
            continue;
        } else {
            int indexar = (b & 0xC0) == 0x40;
            int prefix = indexar ? 6 : 4;
            int nidx = 0;
            int used = hpack_decode_int(data + pos, len - pos, prefix, &nidx);
            if (used == 0) return NULL;
            pos += used;
            if (nidx > 0) {
                nyx_string* ignorado = NULL;
                if (!h2c_hpack_lookup(c, nidx, &name, &ignorado)) return NULL;
            } else {
                used = h2c_hpack_string(data, len, pos, &name);
                if (used == 0) return NULL;
                pos += used;
            }
            used = h2c_hpack_string(data, len, pos, &value);
            if (used == 0) return NULL;
            pos += used;
            if (indexar) h2c_dyn_add(c, name, value);
        }
        list += (size_t)name->length + (size_t)value->length + 32;
        if (list > H2C_MAX_HLIST) return NULL;
        nyx_array_push_tagged(res, (int64_t)(uintptr_t)name, NYX_TAG_STRING);
        nyx_array_push_tagged(res, (int64_t)(uintptr_t)value, NYX_TAG_STRING);
    }
    return res;
}

// ---- validación de la petición (RFC 9113 §8.2 y §8.3) ----

static int h2c_eq(nyx_string* s, const char* lit) {
    size_t n = strlen(lit);
    return (size_t)s->length == n && memcmp(s->data, lit, n) == 0;
}

// Un nombre de cabecera válido en HTTP/2: token en minúsculas. Un valor: sin
// CR, LF ni NUL. Estos dos chequeos son los que impiden que una petición
// HTTP/2 se convierta en DOS peticiones al reescribirla como HTTP/1.1 hacia un
// backend (request smuggling).
static int h2c_name_ok(nyx_string* s, int pseudo) {
    int64_t i = pseudo ? 1 : 0;
    if (s->length <= i) return 0;
    for (; i < s->length; i++) {
        unsigned char ch = (unsigned char)s->data[i];
        if (ch >= 'a' && ch <= 'z') continue;
        if (ch >= '0' && ch <= '9') continue;
        if (strchr("!#$%&'*+-.^_`|~", ch) && ch != 0) continue;
        return 0;
    }
    return 1;
}
static int h2c_value_ok(nyx_string* s) {
    for (int64_t i = 0; i < s->length; i++) {
        unsigned char ch = (unsigned char)s->data[i];
        if (ch == '\r' || ch == '\n' || ch == 0) return 0;
    }
    return 1;
}
// :path y :method van a la línea de petición HTTP/1.1: además, sin espacios ni
// caracteres de control.
static int h2c_target_ok(nyx_string* s) {
    if (s->length == 0) return 0;
    for (int64_t i = 0; i < s->length; i++) {
        unsigned char ch = (unsigned char)s->data[i];
        if (ch <= 0x20 || ch == 0x7F) return 0;
    }
    return 1;
}

// :method: letras y guiones. CONNECT no se atiende (no hay túneles).
static int h2c_method_ok(nyx_string* s) {
    if (s->length == 0 || s->length > 32) return 0;
    for (int64_t i = 0; i < s->length; i++) {
        unsigned char ch = (unsigned char)s->data[i];
        if (!((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || ch == '-' || ch == '_')) return 0;
    }
    return !h2c_eq(s, "CONNECT");
}

static int h2c_request_ok(nyx_array_t* h) {
    int has_method = 0, has_path = 0, has_scheme = 0, has_auth = 0, regular = 0;
    for (int64_t i = 0; i + 1 < h->length; i += 2) {
        nyx_string* k = (nyx_string*)(uintptr_t)h->data[i];
        nyx_string* v = (nyx_string*)(uintptr_t)h->data[i + 1];
        if (!k || !v || k->length == 0) return 0;
        if (!h2c_value_ok(v)) return 0;
        if (k->data[0] == ':') {
            if (regular) return 0;                       // pseudo después de una común
            if (!h2c_name_ok(k, 1)) return 0;
            if (h2c_eq(k, ":method")) { if (has_method++ || !h2c_method_ok(v)) return 0; }
            else if (h2c_eq(k, ":path")) { if (has_path++ || !h2c_target_ok(v)) return 0; if (v->data[0] != '/' && !h2c_eq(v, "*")) return 0; }
            else if (h2c_eq(k, ":scheme")) { if (has_scheme++ || !h2c_target_ok(v)) return 0; }
            else if (h2c_eq(k, ":authority")) { if (has_auth++ || !h2c_target_ok(v)) return 0; }
            else return 0;                               // pseudo desconocida (o :status)
            continue;
        }
        regular = 1;
        if (!h2c_name_ok(k, 0)) return 0;
        if (h2c_eq(k, "connection") || h2c_eq(k, "keep-alive") || h2c_eq(k, "proxy-connection") ||
            h2c_eq(k, "transfer-encoding") || h2c_eq(k, "upgrade")) return 0;
        if (h2c_eq(k, "te") && !h2c_eq(v, "trailers")) return 0;
    }
    return has_method == 1 && has_path == 1 && has_scheme == 1;
}

// ---- frames de entrada ----

// ¿El cliente está mandando más control que trabajo? (inundación de PING /
// SETTINGS / PRIORITY, o abrir y cancelar flujos sin parar).
static int h2c_abuso(H2cConn* c) {
    if (c->n_ctrl > 1000 + 50 * c->n_streams) return 1;
    if (c->n_rst > 100 + (c->n_streams * 3) / 4) return 1;
    return 0;
}

static void h2c_request_done(H2cConn* c, H2cStream* s) {
    s->remote_done = 1;
    s->delivered = 1;
    nyx_string* body = nyx_string_from_ptr((const char*)(s->body ? s->body : (uint8_t*)""), (int64_t)s->body_len);
    c->body_total -= (int64_t)s->body_len;
    if (c->body_total < 0) c->body_total = 0;
    s->body = NULL; s->body_len = 0; s->body_cap = 0;
    h2c_event(c, 1, s->id, s->req_headers, body);
    s->req_headers = NULL;
}

// Bloque de cabeceras completo (HEADERS + sus CONTINUATION) del flujo `sid`.
static int h2c_headers_done(H2cConn* c, int32_t sid, int end_stream) {
    nyx_array_t* h = h2c_hpack_decode(c, c->hblock, (int)c->hblock_len);
    c->hblock_len = 0;
    if (!h) return h2c_die(c, H2E_COMPRESSION);

    H2cStream* s = h2c_find(c, sid);
    if (s) {
        // Trailers: cierran la petición. Su contenido no se usa.
        if (s->remote_done || !end_stream) {
            h2c_rst(c, sid, H2E_PROTOCOL);
            if (s->delivered) h2c_event(c, 2, sid, NULL, NULL);
            h2c_free_stream(c, s);
            c->n_ctrl++;
            return 0;
        }
        h2c_request_done(c, s);
        return 0;
    }
    if (sid <= c->last_stream_id) return h2c_die(c, H2E_STREAM_CLOSED);
    c->last_stream_id = sid;
    c->n_streams++;
    if (c->goaway_sent || c->open_streams >= H2C_MAX_OPEN) { h2c_rst(c, sid, H2E_REFUSED_STREAM); return 0; }
    if (!h2c_request_ok(h)) { h2c_rst(c, sid, H2E_PROTOCOL); c->n_ctrl++; return 0; }
    s = h2c_new_stream(c, sid);
    if (!s) { h2c_rst(c, sid, H2E_REFUSED_STREAM); return 0; }
    s->req_headers = h;
    if (end_stream) h2c_request_done(c, s);
    return 0;
}

static int h2c_on_frame(H2cConn* c, int type, int flags, int32_t sid, const uint8_t* p, size_t len) {
    if (c->cont_stream != 0 && (type != 9 || sid != c->cont_stream)) return h2c_die(c, H2E_PROTOCOL);

    switch (type) {
    case 0: {   // DATA
        if (sid == 0) return h2c_die(c, H2E_PROTOCOL);
        // El frame entero cuenta para la ventana de la conexión, se use o no.
        if (len > 0) h2c_window_update(c, 0, (uint32_t)len);
        const uint8_t* d = p; size_t dlen = len;
        if (flags & 0x8) {
            if (len < 1 || (size_t)p[0] >= len) return h2c_die(c, H2E_PROTOCOL);
            d = p + 1; dlen = len - 1 - p[0];
        }
        H2cStream* s = h2c_find(c, sid);
        if (!s) {
            if (sid > c->last_stream_id) return h2c_die(c, H2E_PROTOCOL);
            h2c_rst(c, sid, H2E_STREAM_CLOSED); c->n_ctrl++;
            break;
        }
        if (s->remote_done) { h2c_rst(c, sid, H2E_STREAM_CLOSED); h2c_free_stream(c, s); c->n_ctrl++; break; }
        if (dlen == 0 && !(flags & 0x1)) c->n_ctrl++;
        if ((int64_t)(s->body_len + dlen) > c->max_body || c->body_total + (int64_t)dlen > 2 * c->max_body) {
            // Cuerpo demasiado grande: 413 y se corta el flujo.
            if (!s->head_sent) {
                static const uint8_t r413[] = { 0x08, 0x03, '4', '1', '3' };   // :status: 413 (literal, nombre índice 8)
                h2c_frame(c, 1, 0x4 | 0x1, sid, r413, sizeof(r413));
            }
            h2c_rst(c, sid, H2E_NO_ERROR);
            h2c_free_stream(c, s);
            break;
        }
        if (dlen > 0) {
            if (!h2c_reserve(&s->body, &s->body_cap, s->body_len + dlen)) return h2c_die(c, H2E_CALM);
            memcpy(s->body + s->body_len, d, dlen);
            s->body_len += dlen;
            c->body_total += (int64_t)dlen;
        }
        if (flags & 0x1) h2c_request_done(c, s);
        else if (len > 0) h2c_window_update(c, sid, (uint32_t)len);
        break;
    }
    case 1: {   // HEADERS
        if (sid == 0 || (sid & 1) == 0) return h2c_die(c, H2E_PROTOCOL);
        const uint8_t* d = p; size_t dlen = len;
        size_t pad = 0;
        if (flags & 0x8) { if (dlen < 1) return h2c_die(c, H2E_PROTOCOL); pad = d[0]; d++; dlen--; }
        if (flags & 0x20) { if (dlen < 5) return h2c_die(c, H2E_PROTOCOL); d += 5; dlen -= 5; }
        if (pad > dlen) return h2c_die(c, H2E_PROTOCOL);
        dlen -= pad;
        if (dlen > H2C_MAX_HBLOCK) return h2c_die(c, H2E_CALM);
        if (!h2c_reserve(&c->hblock, &c->hblock_cap, dlen + 1)) return h2c_die(c, H2E_CALM);
        memcpy(c->hblock, d, dlen);
        c->hblock_len = dlen;
        if (flags & 0x4) return h2c_headers_done(c, sid, flags & 0x1);
        c->cont_stream = sid;
        c->cont_end_stream = flags & 0x1;
        break;
    }
    case 2:     // PRIORITY: se ignora
        if (sid == 0) return h2c_die(c, H2E_PROTOCOL);
        if (len != 5) return h2c_die(c, H2E_FRAME_SIZE);
        c->n_ctrl++;
        break;
    case 3: {   // RST_STREAM
        if (sid == 0) return h2c_die(c, H2E_PROTOCOL);
        if (len != 4) return h2c_die(c, H2E_FRAME_SIZE);
        if (sid > c->last_stream_id) return h2c_die(c, H2E_PROTOCOL);
        c->n_rst++;
        H2cStream* s = h2c_find(c, sid);
        if (s) {
            if (s->delivered) h2c_event(c, 2, sid, NULL, NULL);
            h2c_free_stream(c, s);
        }
        break;
    }
    case 4: {   // SETTINGS
        if (sid != 0) return h2c_die(c, H2E_PROTOCOL);
        if (flags & 0x1) { if (len != 0) return h2c_die(c, H2E_FRAME_SIZE); break; }
        if (len % 6 != 0) return h2c_die(c, H2E_FRAME_SIZE);
        c->n_ctrl++;
        for (size_t i = 0; i + 6 <= len; i += 6) {
            int id = (p[i] << 8) | p[i + 1];
            uint32_t v = h2c_get32(p + i + 2);
            if (id == 2 && v > 1) return h2c_die(c, H2E_PROTOCOL);
            if (id == 4) {
                if (v > 2147483647u) return h2c_die(c, H2E_FLOW_CONTROL);
                int64_t delta = (int64_t)v - c->peer_initial_window;
                c->peer_initial_window = (int64_t)v;
                for (int k = 0; k < H2C_SLOTS; k++) {
                    if (c->streams[k].id == 0) continue;
                    c->streams[k].send_window += delta;
                    if (c->streams[k].send_window > H2C_WINDOW_MAX) return h2c_die(c, H2E_FLOW_CONTROL);
                }
            }
            if (id == 5) {
                if (v < 16384 || v > 16777215) return h2c_die(c, H2E_PROTOCOL);
                c->peer_max_frame = (int64_t)v;
            }
        }
        h2c_frame(c, 4, 0x1, 0, NULL, 0);
        h2c_flush_all(c);
        break;
    }
    case 5:     // PUSH_PROMISE: un cliente no puede
        return h2c_die(c, H2E_PROTOCOL);
    case 6:     // PING
        if (sid != 0) return h2c_die(c, H2E_PROTOCOL);
        if (len != 8) return h2c_die(c, H2E_FRAME_SIZE);
        if (!(flags & 0x1)) { c->n_ctrl++; h2c_frame(c, 6, 0x1, 0, p, 8); }
        break;
    case 7:     // GOAWAY
        if (sid != 0) return h2c_die(c, H2E_PROTOCOL);
        if (len < 8) return h2c_die(c, H2E_FRAME_SIZE);
        c->goaway_recv = 1;
        break;
    case 8: {   // WINDOW_UPDATE
        if (len != 4) return h2c_die(c, H2E_FRAME_SIZE);
        int64_t inc = (int64_t)(h2c_get32(p) & 0x7FFFFFFF);
        if (sid == 0) {
            if (inc == 0) return h2c_die(c, H2E_PROTOCOL);
            c->send_window += inc;
            if (c->send_window > H2C_WINDOW_MAX) return h2c_die(c, H2E_FLOW_CONTROL);
            h2c_flush_all(c);
            break;
        }
        H2cStream* s = h2c_find(c, sid);
        if (!s) {
            if (sid > c->last_stream_id) return h2c_die(c, H2E_PROTOCOL);
            break;   // flujo ya cerrado: normal
        }
        if (inc == 0 || s->send_window + inc > H2C_WINDOW_MAX) {
            h2c_rst(c, sid, inc == 0 ? H2E_PROTOCOL : H2E_FLOW_CONTROL);
            if (s->delivered) h2c_event(c, 2, sid, NULL, NULL);
            h2c_free_stream(c, s);
            c->n_ctrl++;
            break;
        }
        s->send_window += inc;
        h2c_flush_stream(c, s);
        break;
    }
    case 9: {   // CONTINUATION
        if (c->cont_stream == 0 || sid != c->cont_stream) return h2c_die(c, H2E_PROTOCOL);
        if (c->hblock_len + len > H2C_MAX_HBLOCK) return h2c_die(c, H2E_CALM);
        if (!h2c_reserve(&c->hblock, &c->hblock_cap, c->hblock_len + len + 1)) return h2c_die(c, H2E_CALM);
        memcpy(c->hblock + c->hblock_len, p, len);
        c->hblock_len += len;
        if (len == 0) c->n_ctrl++;
        if (flags & 0x4) {
            int32_t cs = c->cont_stream; int ces = c->cont_end_stream;
            c->cont_stream = 0;
            return h2c_headers_done(c, cs, ces);
        }
        break;
    }
    default:    // tipo desconocido: se ignora (RFC 9113 §4.1)
        c->n_ctrl++;
        break;
    }
    if (h2c_abuso(c)) return h2c_die(c, H2E_CALM);
    return 0;
}

// ---- API ----

static H2cConn* h2c_of(int64_t h) { return (H2cConn*)(uintptr_t)h; }

// Conexión nueva de servidor. `max_body`: tope del cuerpo de una petición, en
// bytes. Deja encolado el SETTINGS inicial.
int64_t nyx_h2c_new(int64_t max_body) {
    H2cConn* c = (H2cConn*)GC_malloc(sizeof(H2cConn));
    if (!c) return 0;
    memset(c, 0, sizeof(*c));
    c->send_window = 65535;
    c->peer_initial_window = 65535;
    c->peer_max_frame = 16384;
    c->dyn_max = H2C_DYN_MAX;
    c->max_body = max_body > 0 ? max_body : 1048576;
    c->events = nyx_array_new(8);
    // MAX_CONCURRENT_STREAMS y MAX_HEADER_LIST_SIZE; el resto, los valores por
    // defecto del protocolo (ventana 65535, frame 16384, tabla 4096).
    uint8_t st[12];
    st[0] = 0; st[1] = 3; h2c_put32(st + 2, H2C_MAX_OPEN);
    st[6] = 0; st[7] = 6; h2c_put32(st + 8, H2C_MAX_HLIST);
    h2c_frame(c, 4, 0, 0, st, 12);
    return (int64_t)(uintptr_t)c;
}

// Bytes recibidos del cliente. 0 = bien; -1 = error de conexión (ya hay un
// GOAWAY en la salida: escribirla y cerrar).
int64_t nyx_h2c_feed(int64_t h, nyx_string* data) {
    H2cConn* c = h2c_of(h);
    if (!c) return -1;
    if (c->fatal) return -1;
    if (!data || data->length <= 0) return 0;
    if (!h2c_reserve(&c->in, &c->in_cap, c->in_len + (size_t)data->length)) return h2c_die(c, H2E_CALM);
    memcpy(c->in + c->in_len, data->data, (size_t)data->length);
    c->in_len += (size_t)data->length;

    size_t pos = 0;
    if (!c->preface_done) {
        static const char magic[] = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n";
        size_t have = c->in_len < 24 ? c->in_len : 24;
        if (memcmp(c->in, magic, have) != 0) return h2c_die(c, H2E_PROTOCOL);
        if (c->in_len < 24) return 0;
        c->preface_done = 1;
        pos = 24;
    }
    int rc = 0;
    while (c->in_len - pos >= 9) {
        const uint8_t* f = c->in + pos;
        size_t len = ((size_t)f[0] << 16) | ((size_t)f[1] << 8) | (size_t)f[2];
        if (len > H2C_MAX_FRAME) { rc = h2c_die(c, H2E_FRAME_SIZE); break; }
        if (c->in_len - pos < 9 + len) break;
        int32_t sid = (int32_t)(h2c_get32(f + 5) & 0x7FFFFFFF);
        rc = h2c_on_frame(c, f[3], f[4], sid, f + 9, len);
        pos += 9 + len;
        if (rc != 0) break;
    }
    if (pos > 0) {
        memmove(c->in, c->in + pos, c->in_len - pos);
        c->in_len -= pos;
    }
    return rc;
}

// Siguiente evento, o un Array vacío. [1, flujo, cabeceras, cuerpo] = petición
// completa (cabeceras en pares nombre/valor, con las pseudo-cabeceras);
// [2, flujo, [], ""] = el cliente canceló un flujo ya entregado.
nyx_array_t* nyx_h2c_next_event(int64_t h) {
    H2cConn* c = h2c_of(h);
    if (!c || c->ev_head >= c->events->length) return nyx_array_new(1);
    nyx_array_t* ev = (nyx_array_t*)(uintptr_t)c->events->data[c->ev_head];
    c->events->data[c->ev_head] = 0;
    c->ev_head++;
    if (c->ev_head >= c->events->length) { c->events = nyx_array_new(8); c->ev_head = 0; }
    return ev;
}

// Bytes listos para escribir al cliente (y los quita de la cola).
nyx_string* nyx_h2c_take_output(int64_t h) {
    H2cConn* c = h2c_of(h);
    if (!c || c->out_len == 0) return nyx_string_from_cstr("");
    nyx_string* s = nyx_string_from_ptr((const char*)c->out, (int64_t)c->out_len);
    c->out_len = 0;
    return s;
}

// Cabeceras de respuesta: pares nombre/valor, con ":status" primero. Los
// nombres se pasan a minúsculas y las cabeceras propias de una conexión
// HTTP/1.1 se descartan (en HTTP/2 son un error de protocolo). 0 bien, -1 si
// el flujo ya no existe.
int64_t nyx_h2c_send_headers(int64_t h, int64_t sid, nyx_array_t* headers, int64_t end_stream) {
    H2cConn* c = h2c_of(h);
    if (!c || c->fatal || !headers) return -1;
    H2cStream* s = h2c_find(c, (int32_t)sid);
    if (!s || s->head_sent || s->local_done) return -1;

    nyx_array_t* clean = nyx_array_new(headers->length + 2);
    for (int64_t i = 0; i + 1 < headers->length; i += 2) {
        nyx_string* k = (nyx_string*)(uintptr_t)headers->data[i];
        nyx_string* v = (nyx_string*)(uintptr_t)headers->data[i + 1];
        if (!k || !v || k->length == 0) continue;
        char* low = (char*)GC_malloc_atomic((size_t)k->length + 1);
        if (!low) return -1;
        for (int64_t j = 0; j < k->length; j++) {
            char ch = k->data[j];
            low[j] = (ch >= 'A' && ch <= 'Z') ? (char)(ch + 32) : ch;
        }
        low[k->length] = '\0';
        nyx_string* lk = nyx_string_from_ptr(low, k->length);
        if (h2c_eq(lk, "connection") || h2c_eq(lk, "keep-alive") || h2c_eq(lk, "proxy-connection") ||
            h2c_eq(lk, "transfer-encoding") || h2c_eq(lk, "upgrade")) continue;
        if (!h2c_name_ok(lk, lk->data[0] == ':') || !h2c_value_ok(v)) continue;
        nyx_array_push_tagged(clean, (int64_t)(uintptr_t)lk, NYX_TAG_STRING);
        nyx_array_push_tagged(clean, (int64_t)(uintptr_t)v, NYX_TAG_STRING);
    }
    nyx_string* block = nyx_h2_encode_headers(clean);
    if (!block || block->length == 0) return -1;

    size_t total = (size_t)block->length, off = 0;
    size_t maxf = (size_t)c->peer_max_frame;
    int first = 1;
    while (off < total || first) {
        size_t n = total - off;
        if (n > maxf) n = maxf;
        int last = (off + n == total);
        int fl = last ? 0x4 : 0;
        if (first && end_stream) fl |= 0x1;
        h2c_frame(c, first ? 1 : 9, fl, s->id, (const uint8_t*)block->data + off, n);
        off += n;
        first = 0;
    }
    s->head_sent = 1;
    if (end_stream) {
        s->local_done = 1;
        if (!s->remote_done) h2c_rst(c, s->id, H2E_NO_ERROR);
        h2c_free_stream(c, s);
    }
    return 0;
}

// Datos del cuerpo de la respuesta. Se encolan y salen cuando las ventanas del
// cliente lo permiten: quien llama mira nyx_h2c_pending para no encolar sin
// límite. 0 bien, -1 si el flujo ya no existe.
int64_t nyx_h2c_send_data(int64_t h, int64_t sid, nyx_string* data, int64_t end_stream) {
    H2cConn* c = h2c_of(h);
    if (!c || c->fatal) return -1;
    H2cStream* s = h2c_find(c, (int32_t)sid);
    if (!s || !s->head_sent || s->local_done || s->out_end) return -1;
    if (data && data->length > 0) {
        if (!h2c_reserve(&s->out, &s->out_cap, s->out_len + (size_t)data->length)) return -1;
        memcpy(s->out + s->out_len, data->data, (size_t)data->length);
        s->out_len += (size_t)data->length;
    }
    if (end_stream) s->out_end = 1;
    h2c_flush_stream(c, s);
    return 0;
}

// Corta un flujo con RST_STREAM (código de error HTTP/2; 8 = CANCEL).
int64_t nyx_h2c_reset(int64_t h, int64_t sid, int64_t code) {
    H2cConn* c = h2c_of(h);
    if (!c || c->fatal) return -1;
    H2cStream* s = h2c_find(c, (int32_t)sid);
    if (!s) return -1;
    h2c_rst(c, s->id, (uint32_t)code);
    h2c_free_stream(c, s);
    return 0;
}

// Bytes de cuerpo encolados sin mandar: de un flujo, o de todos con sid 0.
int64_t nyx_h2c_pending(int64_t h, int64_t sid) {
    H2cConn* c = h2c_of(h);
    if (!c) return 0;
    if (sid != 0) {
        H2cStream* s = h2c_find(c, (int32_t)sid);
        return s ? (int64_t)(s->out_len - s->out_off) : 0;
    }
    int64_t t = 0;
    for (int i = 0; i < H2C_SLOTS; i++) if (c->streams[i].id) t += (int64_t)(c->streams[i].out_len - c->streams[i].out_off);
    return t;
}

// ¿Sigue vivo el flujo? (1 mientras no se cerró ni lo canceló el cliente).
int64_t nyx_h2c_stream_open(int64_t h, int64_t sid) {
    H2cConn* c = h2c_of(h);
    return (c && h2c_find(c, (int32_t)sid)) ? 1 : 0;
}

// Cierre ordenado: GOAWAY sin error; los flujos en curso terminan, los nuevos
// se rechazan.
int64_t nyx_h2c_goaway(int64_t h, int64_t code) {
    H2cConn* c = h2c_of(h);
    if (!c || c->goaway_sent) return 0;
    uint8_t p[8];
    h2c_put32(p, (uint32_t)c->last_stream_id);
    h2c_put32(p + 4, (uint32_t)code);
    h2c_frame(c, 7, 0, 0, p, 8);
    c->goaway_sent = 1;
    return 0;
}

// 1 si hay que cerrar la conexión: error de protocolo, o alguno de los dos
// lados dijo GOAWAY y ya no quedan flujos.
int64_t nyx_h2c_closed(int64_t h) {
    H2cConn* c = h2c_of(h);
    if (!c || c->fatal) return 1;
    if ((c->goaway_recv || c->goaway_sent) && c->open_streams == 0) return 1;
    return 0;
}

int64_t nyx_h2c_open_streams(int64_t h) {
    H2cConn* c = h2c_of(h);
    return c ? (int64_t)c->open_streams : 0;
}

// ---- Despertador entre hilos, sobre un pipe (pipe_new) ----
// El bucle de una conexión espera con tls_wait_any sobre el cliente y el lado
// de lectura del pipe; un hilo auxiliar que terminó su trabajo escribe un byte
// en el otro lado. Así el bucle sigue siendo el único que escribe al cliente,
// sin candado sobre el TLS y sin despertarse por tiempo.
int64_t nyx_h2_wake_signal(int64_t wfd) {
    char b = 1;
    return os_fd_write((int)wfd, &b, 1) == 1 ? 0 : -1;
}

// Vacía los avisos pendientes (un read; el pipe estaba legible, no bloquea).
int64_t nyx_h2_wake_drain(int64_t rfd) {
    char buf[256];
    int64_t n = os_fd_read((int)rfd, buf, sizeof(buf));
    return n < 0 ? -1 : n;
}
