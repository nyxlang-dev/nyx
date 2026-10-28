// runtime/compress.c — Compression bindings for Nyx (v4.4.0)
// Provides gzip/zlib compress/decompress; zlib se carga por os_dl_* (ni se
// enlaza ni se incluye <zlib.h>) / zlib is loaded via os_dl_*, not linked
// Also provides base64 encode/decode (pure C, no external dep)

#include "strings.h"
#include "os/nyx_os.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <gc/gc.h>

// ── zlib's `inflate` symbol vs Nyx's `pub fn inflate` — dlopen workaround ───
//
// std/compress.nx exposes `pub fn inflate(...)`, which the codegen emits as
// a GLOBAL LLVM/ELF symbol literally named `inflate` in the final binary.
// zlib (linked via -lz) ALSO exports a C function literally named `inflate`.
// When both are linked into the same executable, the linker resolves any
// direct C call to `inflate(...)` from THIS file against the LOCALLY
// DEFINED Nyx symbol (local definitions win over the dynamic library's),
// not zlib's — so a plain `inflate(&strm, Z_NO_FLUSH)` call silently calls
// the wrong function (wrong ABI entirely: nyx_string*/i64 vs z_streamp/int),
// producing garbage return codes with no forward progress (looked like an
// infinite loop in testing). `nyx_compress`/`nyx_decompress` sidestep this
// by calling zlib's `compress2`/`uncompress` instead of `compress`
// (Nyx's `pub fn compress` would collide the same way) — `inflate` has no
// such alternate entry point in the zlib API, so here we os_dl_open libz
// explicitly and os_dl_sym the three symbols we need FROM THAT HANDLE.
// Unlike a plain call (or dlsym(RTLD_DEFAULT, ...), which would hit the same
// executable-wide collision), os_dl_sym on a specific os_dl_open() handle
// resolves within that library's own symbol table, bypassing the collision.
// Same pattern as runtime/sqlite_adapter.c's os_dl_open of libsqlite3.
// ── Tipos de zlib declarados acá (sin <zlib.h>) ─────────────────────────────
//
// W5: <zlib.h> no existe en el entorno win32 y, con todo cargado por dl, ya no
// hace falta enlazar contra zlib NI tener sus headers para compilar. Se
// declara lo mínimo. El layout de z_stream es ABI público y estable de zlib
// 1.x (uLong = unsigned long: 32 bits en LLP64/Windows, 64 en LP64, igual que
// en la zlib de cada plataforma). inflateInit2_ solo verifica que version[0]
// == '1' y que stream_size == sizeof(z_stream); por eso ZLIB_VERSION fijo.
// EN: minimal local declarations; z_stream layout is zlib 1.x's stable public
// ABI. inflateInit2_ only checks version[0]=='1' and stream_size.
typedef unsigned char  Bytef;
typedef unsigned int   uInt;
typedef unsigned long  uLong;
typedef struct z_stream_s {
    const Bytef* next_in;  uInt avail_in;  uLong total_in;
    Bytef*       next_out; uInt avail_out; uLong total_out;
    const char*  msg;
    void*        state;
    void* (*zalloc)(void*, uInt, uInt);
    void  (*zfree)(void*, void*);
    void*        opaque;
    int          data_type;
    uLong        adler;
    uLong        reserved;
} z_stream;
typedef z_stream* z_streamp;
#define Z_OK            0
#define Z_STREAM_END    1
#define Z_NEED_DICT     2
#define Z_DATA_ERROR   (-3)
#define Z_MEM_ERROR    (-4)
#define Z_BUF_ERROR    (-5)
#define Z_NO_FLUSH      0
#define Z_DEFAULT_COMPRESSION (-1)
#define Z_NULL          0
#define ZLIB_VERSION   "1.2.11"

typedef int   (*fn_inflateInit2_)(z_streamp strm, int windowBits, const char* version, int stream_size);
typedef int   (*fn_inflate_call)(z_streamp strm, int flush);
typedef int   (*fn_inflateEnd_call)(z_streamp strm);
typedef int   (*fn_compress2_call)(Bytef* dest, uLong* destLen, const Bytef* source, uLong sourceLen, int level);
typedef uLong (*fn_compressBound_call)(uLong sourceLen);

static fn_inflateInit2_      g_zlib_inflateInit2_ = NULL;
static fn_inflate_call       g_zlib_inflate       = NULL;
static fn_inflateEnd_call    g_zlib_inflateEnd    = NULL;
static fn_compress2_call     g_zlib_compress2     = NULL;
static fn_compressBound_call g_zlib_compressBound = NULL;
static int g_zlib_loaded = 0; // 0=unloaded, 1=ok, 2=failed

// Avisa UNA vez, por stderr, por qué no hay zlib (antes: "" mudo).
// EN: warn once on stderr why zlib is unavailable (was a silent "").
static void zlib_warn(const char* what, const char* detail) {
    static int warned = 0;
    if (warned) return;
    warned = 1;
    fprintf(stderr, "compress: zlib no disponible (%s%s%s)\n",
            what, detail ? ": " : "", detail ? detail : "");
}

static int zlib_inflate_load(void) {
#ifdef __wasi__
    return -1; // no dlopen under wasi; nyx_inflate degrades to "" there.
#else
    if (g_zlib_loaded == 1) return 0;
    if (g_zlib_loaded == 2) return -1;

    // En Linux libz sigue siendo DT_NEEDED del binario (-lz sigue en los
    // enlaces), así que os_dl_open solo sube el refcount y devuelve el link
    // map existente — mismo comportamiento de siempre, orden intacto.
    // global=0 (RTLD_LOCAL): los símbolos se piden por ESTE handle, nunca por
    // el ámbito global, para no chocar con el `inflate` del ejecutable.
    // Nombres de Windows (solo win32, detrás): zlib1.dll es el de vcpkg/zlib
    // oficial; z.dll lo deja algún build de vcpkg/CMake; libz.dll, MinGW.
    // EN: Linux order untouched; Windows names appended on win32 only.
    static const char* const names[] = {
#ifdef _WIN32
        "zlib1.dll", "z.dll", "libz.dll",
#else
        "libz.so.1", "libz.so",
#endif
        NULL
    };
    os_dl_t lib = NULL;
    const char* last = NULL;
    for (int i = 0; names[i] && !lib; i++) { last = names[i]; lib = os_dl_open(names[i], 0); }
    if (!lib) {
        zlib_warn(last ? last : "?", os_dl_error());
        g_zlib_loaded = 2;
        return -1;
    }

    // inflateInit2() is a macro around the real exported symbol
    // inflateInit2_(strm, windowBits, ZLIB_VERSION, sizeof(z_stream)).
    static const struct { const char* name; void** slot; } syms[] = {
        { "inflateInit2_",  (void**)&g_zlib_inflateInit2_ },
        { "inflate",        (void**)&g_zlib_inflate },
        { "inflateEnd",     (void**)&g_zlib_inflateEnd },
        { "compress2",      (void**)&g_zlib_compress2 },
        { "compressBound",  (void**)&g_zlib_compressBound },
    };
    for (size_t i = 0; i < sizeof syms / sizeof syms[0]; i++) {
        void* p = os_dl_sym(lib, syms[i].name);
        if (!p) {
            for (size_t j = 0; j < sizeof syms / sizeof syms[0]; j++) *syms[j].slot = NULL;
            char msg[160];
            snprintf(msg, sizeof msg, "falta el simbolo '%s' en '%s'", syms[i].name, last);
            zlib_warn("biblioteca incompatible", msg);
            g_zlib_loaded = 2;
            return -1;
        }
        *syms[i].slot = p;
    }

    g_zlib_loaded = 1;
    return 0;
#endif
}

// ── zlib compress (deflate) ──────────────────────────────────────────────────

// Compress src data, returns compressed bytes as nyx_string (may contain NUL)
// Returns nyx_string with .length = compressed size, .data = compressed bytes
nyx_string* nyx_compress(nyx_string* src) {
    if (!src || !src->data || src->length == 0) {
        return nyx_string_from_cstr("");
    }

    if (zlib_inflate_load() != 0) return nyx_string_from_cstr("");

    uLong src_len = (uLong)src->length;
    uLong dest_len = g_zlib_compressBound(src_len);
    Bytef* dest = (Bytef*)GC_malloc(dest_len + 1);
    if (!dest) return nyx_string_from_cstr("");

    int rc = g_zlib_compress2(dest, &dest_len, (const Bytef*)src->data, src_len, Z_DEFAULT_COMPRESSION);
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

// Decompress zlib-compressed data.
//
// sp3-bug-1 (arreglado 2026-08-05): la versión anterior llamaba uncompress()
// de zlib DIRECTO — pero uncompress() llama internamente a inflate() vía PLT,
// y ese símbolo resuelve contra la `pub fn inflate` de std/compress (las
// definiciones del ejecutable ganan sobre la lib dinámica) → ABI distinto →
// uncompress devolvía != Z_OK y esto retornaba "" EN SILENCIO en todo binario
// que importara std/compress. compress() funcionaba; decompress() no.
// Fix: delegar en el camino streaming (nyx_inflate modo 3 = zlib estricto),
// que ya resuelve los símbolos por os_dl_open/os_dl_sym sobre el handle de libz
// (patrón D1) y es inmune a la colisión. Bonus: original_size deja de ser
// necesario (el buffer crece solo) — se conserva en la firma por
// compatibilidad ABI con los seeds, como hint ignorado.
nyx_string* nyx_inflate(nyx_string* src, int64_t mode);

nyx_string* nyx_decompress(nyx_string* src, int64_t original_size) {
    (void)original_size;
    return nyx_inflate(src, 3);
}

// ── zlib inflate (streaming, no original_size required) ─────────────────────
//
// Unlike nyx_decompress (uncompress()), this uses the zlib STREAM API so it
// does not need to know the decompressed size up front — the output buffer
// grows as needed. This is what makes it usable for HTTP responses, where
// Content-Length only tells you the *compressed* size.
//
// mode selects the window bits passed to inflateInit2, i.e. which container
// format is expected:
//   0 = auto-detect zlib (RFC 1950) or gzip (RFC 1952)   -> wbits = 15 + 32
//   1 = gzip only (RFC 1952)                              -> wbits = 15 + 16
//   2 = raw deflate, no header (RFC 1951)                 -> wbits = -15
//   3 = zlib only (RFC 1950)                               -> wbits = 15
//
// HTTP note: Content-Encoding: gzip -> use gunzip() (mode 1, or mode 0 auto).
// Content-Encoding: deflate is ambiguous in the wild: most servers send a
// raw zlib stream (RFC 1950) despite the name, but a few send truly raw
// deflate (RFC 1951, no header). Try inflate() (mode 0, auto zlib/gzip)
// first; if that returns "", fall back to inflate_raw() (mode 2).
//
// On any failure (corrupt input, wrong mode, truncated stream, NULL src)
// this returns an empty nyx_string ("") rather than aborting — the caller
// distinguishes "legitimately empty" from "failed" by checking length == 0
// AND that the input was non-empty (documented in std/compress.nx).
nyx_string* nyx_inflate(nyx_string* src, int64_t mode) {
    if (!src || !src->data || src->length == 0) {
        return nyx_string_from_cstr("");
    }

    if (zlib_inflate_load() != 0) {
        return nyx_string_from_cstr("");
    }

    int wbits;
    switch (mode) {
        case 1: wbits = 15 + 16; break; // gzip
        case 2: wbits = -15;     break; // raw deflate
        case 3: wbits = 15;      break; // zlib
        default: wbits = 15 + 32; break; // auto zlib|gzip
    }

    z_stream strm;
    memset(&strm, 0, sizeof(strm));
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    strm.avail_in = 0;
    strm.next_in = Z_NULL;

    if (g_zlib_inflateInit2_(&strm, wbits, ZLIB_VERSION, (int)sizeof(z_stream)) != Z_OK) {
        return nyx_string_from_cstr("");
    }

    strm.next_in = (Bytef*)src->data;
    strm.avail_in = (uInt)src->length;

    // Fixed-size scratch chunk reused across inflate() calls (zlib's own
    // zpipe.c pattern) — next_out/avail_out always point at the START of
    // this chunk, so there is never a stale pointer to worry about after a
    // realloc of the OUTPUT buffer below. Heap-allocated (not a stack VLA):
    // Nyx goroutines run on small stackful-coroutine stacks (M:N scheduler),
    // and a 64KB stack frame blew one — inflate() came back with garbage
    // return codes from corrupted adjacent stack memory (z_stream itself).
    #define NYX_INFLATE_CHUNK 65536
    unsigned char* chunk = (unsigned char*)GC_malloc(NYX_INFLATE_CHUNK);
    if (!chunk) {
        g_zlib_inflateEnd(&strm);
        return nyx_string_from_cstr("");
    }

    // Growable output buffer, doubled on demand. `buf`/`cap` are always
    // re-read fresh before use, so growing (which may move the block) is
    // safe — nothing holds a pointer into the old block across a grow.
    size_t cap = (size_t)src->length * 4;
    if (cap < NYX_INFLATE_CHUNK) cap = NYX_INFLATE_CHUNK;
    size_t used = 0;
    unsigned char* buf = (unsigned char*)GC_malloc(cap);
    if (!buf) {
        g_zlib_inflateEnd(&strm);
        return nyx_string_from_cstr("");
    }

    int rc = Z_OK;
    int failed = 0;
    do {
        strm.next_out = chunk;
        strm.avail_out = (uInt)NYX_INFLATE_CHUNK;

        rc = g_zlib_inflate(&strm, Z_NO_FLUSH);

        if (rc == Z_NEED_DICT || rc == Z_DATA_ERROR || rc == Z_MEM_ERROR) {
            failed = 1;
            break;
        }

        size_t have = NYX_INFLATE_CHUNK - strm.avail_out;
        if (have > 0) {
            if (used + have > cap) {
                size_t new_cap = cap * 2;
                while (new_cap < used + have) new_cap *= 2;
                unsigned char* new_buf = (unsigned char*)GC_malloc(new_cap);
                if (!new_buf) {
                    failed = 1;
                    break;
                }
                memcpy(new_buf, buf, used);
                buf = new_buf;
                cap = new_cap;
            }
            memcpy(buf + used, chunk, have);
            used += have;
        } else if (rc == Z_BUF_ERROR) {
            // No progress at all this call (no input left to consume, no
            // output produced) and the stream never hit Z_STREAM_END ->
            // truncated/corrupt input, not merely "need a bigger buffer"
            // (we always hand inflate() a full CHUNK of room).
            failed = 1;
            break;
        }
    } while (rc != Z_STREAM_END);

    g_zlib_inflateEnd(&strm);

    if (failed) {
        return nyx_string_from_cstr("");
    }

    return nyx_string_from_ptr((const char*)buf, (int64_t)used);
}
#undef NYX_INFLATE_CHUNK

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
