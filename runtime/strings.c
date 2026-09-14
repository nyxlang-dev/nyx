// ============================================
// STRINGS.C - Runtime de Strings para Nyx v0.9.0
// ============================================
// Strings inmutables con Boehm GC

#include <stdio.h>
#include <stdlib.h>
#include <math.h>   // isnan/isinf/signbit de nyx_float_format
#include <float.h>  // DBL_MIN: subnormales al loop completo
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include <ctype.h>
#include <stdbool.h>
#include <gc.h>  // Boehm GC
#include "strings.h"

// ===== EMPTY STRING SINGLETON =====

static nyx_string* empty_string_singleton = NULL;

static nyx_string* get_empty_string(void) {
    if (!empty_string_singleton) {
        empty_string_singleton = (nyx_string*)GC_malloc(sizeof(nyx_string));
        empty_string_singleton->length = 0;
        empty_string_singleton->capacity = 1;
        empty_string_singleton->data = (char*)GC_malloc_atomic(1);
        empty_string_singleton->data[0] = '\0';
    }
    return empty_string_singleton;
}

// ===== CONSTRUCTORES =====

// Crear string desde literal C
nyx_string* nyx_string_from_cstr(const char* cstr) {
    if (!cstr || *cstr == '\0') {
        return get_empty_string();
    }

    size_t len = strlen(cstr);
    nyx_string* str = (nyx_string*)GC_malloc(sizeof(nyx_string));
    str->length = len;
    str->capacity = len + 1;
    str->data = (char*)GC_malloc_atomic(str->capacity);
    // memcpy with the exact computed length (capacity == len + 1) — bounded,
    // and consistent with nyx_string_from_ptr. Avoids unbounded strcpy.
    memcpy(str->data, cstr, len + 1);
    
    return str;
}

// Crear string desde puntero + longitud
// nyx_intern_cstr — memoiza un literal de String: lo construye UNA vez y cachea
// el puntero. `cache` apunta a un slot `nyx_string* = null` a nivel de módulo
// (uno por literal distinto, emitido por el codegen). La primera llamada
// construye vía from_cstr y guarda; las siguientes devuelven el puntero cacheado
// — evita re-alocar el nyx_string en cada evaluación (p.ej. un literal en un
// loop). Los strings son inmutables (contrato bytes), así que compartir el
// puntero es seguro. Carrera benigna: si dos threads tocan por primera vez el
// mismo literal, ambos pueden construir; cualquiera de los dos punteros guardados
// es un string idéntico y válido (el otro se leakea inofensivamente).
nyx_string* nyx_intern_cstr(nyx_string** cache, const char* cstr) {
    nyx_string* s = *cache;
    if (s) return s;
    // PERSISTENTE (fix 2026-07-22, test-wasm-12-arena): un intern vive PARA
    // SIEMPRE → construirlo con calloc CRUDO, nunca GC_malloc. Bajo el arena
    // two-region de wasm (runtime/wasi/nyx_arena.c), un literal cuyo PRIMER
    // uso caía dentro de un turno quedaba en la región RESETEABLE → el cache
    // apuntaba a memoria reusada tras el reset → puntero salvaje (OOB en
    // nyx_string_split con el delimitador ","). En nativo también es correcto
    // y más barato: inmortal fuera del heap GC (Boehm no necesita rastrearlo
    // — el string no apunta a memoria GC).
    size_t ilen = strlen(cstr);
    s = (nyx_string*)calloc(1, sizeof(nyx_string));
    s->length = (int64_t)ilen;
    s->capacity = (int64_t)ilen + 1;
    s->data = (char*)calloc(1, ilen + 1);
    memcpy(s->data, cstr, ilen);
    *cache = s;
    return s;
}

// nyx_intern_ptr — variante LENGTH-AWARE de nyx_intern_cstr (S1 campaña
// 2026-08-11, T4.2): el camino cstr hace strlen, así que un literal con NUL
// embebido ("a\0b") quedaba truncado a length 1 EN SILENCIO aunque el .ll
// llevara los 3 bytes. Mismo contrato de inmortalidad que intern_cstr
// (calloc crudo, nunca GC — ver el comentario de arriba) y misma carrera
// benigna entre threads.
nyx_string* nyx_intern_ptr(nyx_string** cache, const char* ptr, int64_t length) {
    nyx_string* s = *cache;
    if (s) return s;
    s = (nyx_string*)calloc(1, sizeof(nyx_string));
    s->length = length;
    s->capacity = length + 1;
    s->data = (char*)calloc(1, (size_t)length + 1);
    memcpy(s->data, ptr, (size_t)length);
    *cache = s;
    return s;
}

nyx_string* nyx_string_from_ptr(const char* ptr, int64_t length) {
    nyx_string* str = (nyx_string*)GC_malloc(sizeof(nyx_string));
    str->length = length;
    str->capacity = length + 1;
    str->data = (char*)GC_malloc_atomic(str->capacity);
    memcpy(str->data, ptr, length);
    str->data[length] = '\0';
    
    return str;
}

// Crear string vacío con capacidad específica
nyx_string* nyx_string_with_capacity(int64_t capacity) {
    nyx_string* str = (nyx_string*)GC_malloc(sizeof(nyx_string));
    str->length = 0;
    str->capacity = capacity;
    str->data = (char*)GC_malloc_atomic(capacity);
    str->data[0] = '\0';
    
    return str;
}

// ===== UTF-8 HELPERS =====

// Retorna el número de bytes que ocupa el code point que empieza con este byte.
// Sigue el estándar UTF-8: 0xxxxxxx=1, 110xxxxx=2, 1110xxxx=3, 11110xxx=4
static inline int utf8_char_len(unsigned char byte) {
    if (byte < 0x80) return 1;
    if ((byte & 0xE0) == 0xC0) return 2;
    if ((byte & 0xF0) == 0xE0) return 3;
    if ((byte & 0xF8) == 0xF0) return 4;
    return 1;  // byte de continuación o inválido — tratar como 1
}

// Convierte un índice de code point a byte offset dentro de str->data.
// Retorna str->length si code_point_index >= longitud en code points.
static size_t utf8_byte_offset(const char* data, size_t byte_len, size_t code_point_index) {
    size_t byte_pos = 0;
    size_t cp = 0;
    while (byte_pos < byte_len && cp < code_point_index) {
        int char_bytes = utf8_char_len((unsigned char)data[byte_pos]);
        byte_pos += char_bytes;
        cp++;
    }
    return byte_pos;
}

// Cuenta los code points UTF-8 en un nyx_string.
static size_t utf8_count_codepoints(nyx_string* str) {
    if (!str || str->length == 0) return 0;
    size_t count = 0;
    size_t i = 0;
    while (i < str->length) {
        int char_bytes = utf8_char_len((unsigned char)str->data[i]);
        i += char_bytes;
        count++;
    }
    return count;
}

// E2 (campaña 2026-07-22): substring por CODEPOINTS UTF-8 — ADITIVA, el
// contrato bytes de la API (substring/length/indexOf) NO cambia. from/to en
// codepoints, semántica [from, to) espejo de substring; from<0 → 0, to más
// allá del final → fin del string, from >= to → "".
nyx_string* nyx_string_char_substring(nyx_string* str, int64_t from, int64_t to) {
    if (!str || str->length == 0) return nyx_string_from_cstr("");
    if (from < 0) from = 0;
    if (to < 0) to = 0;
    if (from >= to) return nyx_string_from_cstr("");
    size_t b_from = utf8_byte_offset(str->data, str->length, (size_t)from);
    size_t b_to = utf8_byte_offset(str->data, str->length, (size_t)to);
    if (b_from >= b_to) return nyx_string_from_cstr("");
    return nyx_string_from_ptr(str->data + b_from, (int64_t)(b_to - b_from));
}

// ===== PROPIEDADES BÁSICAS =====

// Obtener longitud en bytes — uso interno del runtime y del compilador bootstrap.
// NO cambiar a code points: el bootstrap usa esta función para calcular tamaños de
// literales en LLVM IR ([N x i8]) y debe devolver bytes.
int64_t nyx_string_length(nyx_string* str) {
    if (!str) return 0;
    return str->length;
}

// Obtener longitud en bytes (alias explícito para uso interno).
int64_t nyx_string_byte_length(nyx_string* str) {
    if (!str) return 0;
    return str->length;
}


// Obtener longitud en code points UTF-8 — función user-facing.
// Para ASCII, equivalente a nyx_string_length.
// Expuesta en Nyx como s.length() via dispatch codegen.
int64_t nyx_string_length_utf8(nyx_string* str) {
    if (!str) return 0;
    return (int64_t)utf8_count_codepoints(str);
}

// Verificar si está vacío
bool nyx_string_is_empty(nyx_string* str) {
    return !str || str->length == 0;
}

// Obtener C string (solo lectura)
const char* nyx_string_to_cstr(nyx_string* str) {
    if (!str) return "";
    return str->data;
}

// ===== CONCATENACIÓN =====

// Concatenar dos strings
nyx_string* nyx_string_concat(nyx_string* a, nyx_string* b) {
    if (!a) return b;
    if (!b) return a;

    size_t new_len = a->length + b->length;

    // Pre-alocar con capacidad extra (1.5x) para reducir futuras reallocaciones
    size_t new_cap = new_len + 1;
    if (new_cap < 64) new_cap = 64;
    else new_cap = new_cap + (new_cap >> 1);  // 1.5x

    nyx_string* result = (nyx_string*)GC_malloc(sizeof(nyx_string));
    result->length = new_len;
    result->capacity = new_cap;
    result->data = (char*)GC_malloc_atomic(new_cap);
    memcpy(result->data, a->data, a->length);
    memcpy(result->data + a->length, b->data, b->length);
    result->data[new_len] = '\0';

    return result;
}

// Concatenar múltiples strings (variadic)
nyx_string* nyx_string_concat_many(int count, ...) {
    va_list args;
    va_start(args, count);
    
    // Calcular longitud total
    size_t total_length = 0;
    nyx_string* strings[count];
    
    for (int i = 0; i < count; i++) {
        strings[i] = va_arg(args, nyx_string*);
        if (strings[i]) {
            total_length += strings[i]->length;
        }
    }
    va_end(args);
    
    // Crear resultado
    nyx_string* result = nyx_string_with_capacity(total_length + 1);
    result->length = total_length;
    
    // Concatenar
    size_t offset = 0;
    for (int i = 0; i < count; i++) {
        if (strings[i]) {
            memcpy(result->data + offset, strings[i]->data, strings[i]->length);
            offset += strings[i]->length;
        }
    }
    result->data[total_length] = '\0';
    
    return result;
}

// ===== COMPARACIÓN =====

// Búsqueda de sub-secuencia por LONGITUD (contrato "strings = bytes" v0.14:
// los NUL embebidos son datos, strstr/strcmp cortan en el primero). Helper
// propio porque memmem es extensión GNU (ausente/gated en wasi-libc).
// EN: length-based memmem — embedded NULs are data, libc memmem is non-portable.
static const char* nyx_memmem(const char* hay, size_t hay_len,
                              const char* needle, size_t needle_len) {
    if (needle_len == 0) return hay;
    if (needle_len > hay_len) return NULL;
    const char* last = hay + (hay_len - needle_len);
    for (const char* p = hay; p <= last; p++) {
        p = memchr(p, needle[0], (size_t)(last - p) + 1);
        if (!p) return NULL;
        if (memcmp(p, needle, needle_len) == 0) return p;
    }
    return NULL;
}

// Comparar dos strings (igualdad)
bool nyx_string_equals(nyx_string* a, nyx_string* b) {
    if (a == b) return true;
    if (!a || !b) return false;
    if (a->length != b->length) return false;

    return memcmp(a->data, b->data, a->length) == 0;
}

// Comparar dos strings (orden lexicográfico por bytes; el prefijo común
// manda y a igual prefijo gana la más corta — semántica memcmp+length)
int nyx_string_compare(nyx_string* a, nyx_string* b) {
    if (a == b) return 0;
    if (!a) return -1;
    if (!b) return 1;

    size_t min_len = a->length < b->length ? (size_t)a->length : (size_t)b->length;
    int c = memcmp(a->data, b->data, min_len);
    if (c != 0) return c;
    if (a->length == b->length) return 0;
    return a->length < b->length ? -1 : 1;
}

// ===== SUBSTRING =====

// Obtener substring [start, end) por byte indices (byte-based para bootstrap).
nyx_string* nyx_string_substring(nyx_string* str, int64_t start, int64_t end) {
    if (!str) return nyx_string_from_cstr("");
    // Clamp inferior: los params son int64_t (antes size_t, donde un índice
    // negativo se envolvía a SIZE_MAX y caía en el clamp superior a length).
    // Sin esto, start<0 pasa a nyx_string_from_ptr(data + negativo, ...) → OOB.
    // EN: lower clamp — negative indices used to wrap to SIZE_MAX under size_t.
    if (start < 0) start = 0;
    if (end < 0) end = 0;
    if (start > str->length) start = str->length;
    if (end > str->length) end = str->length;
    if (start > end) start = end;
    size_t length = end - start;
    return nyx_string_from_ptr(str->data + start, length);
}

// Variante para código de usuario: toma y devuelve i8* (raw C string)
const char* nyx_string_substring_cstr(const char* str, int64_t start, int64_t end) {
    if (!str) return "";
    nyx_string* ns = nyx_string_from_cstr(str);
    nyx_string* result = nyx_string_substring(ns, (size_t)start, (size_t)end);
    return nyx_string_to_cstr(result);
}

// Obtener substring desde start hasta el final (start en code points)
nyx_string* nyx_string_substring_from(nyx_string* str, int64_t start) {
    if (!str) return nyx_string_from_cstr("");
    return nyx_string_substring(str, start, utf8_count_codepoints(str));
}

// ===== BÚSQUEDA =====

// Verificar si contiene substring
bool nyx_string_contains(nyx_string* haystack, nyx_string* needle) {
    if (!haystack || !needle) return false;
    if (needle->length == 0) return true;
    if (needle->length > haystack->length) return false;

    return nyx_memmem(haystack->data, haystack->length,
                      needle->data, needle->length) != NULL;
}

// Encontrar índice de substring (-1 si no existe)
int64_t nyx_string_index_of(nyx_string* haystack, nyx_string* needle) {
    if (!haystack || !needle) return -1;
    if (needle->length == 0) return 0;

    const char* pos = nyx_memmem(haystack->data, haystack->length,
                                 needle->data, needle->length);
    if (!pos) return -1;

    return pos - haystack->data;
}

// Encontrar índice de substring buscando desde `from` (índice ABSOLUTO del
// resultado, o -1). from<0 clampea a 0; from>length -> -1 (needle no vacío);
// needle vacío -> from clampeado a [0, length] (semántica JS indexOf).
int64_t nyx_string_index_of_from(nyx_string* haystack, nyx_string* needle, int64_t from) {
    if (!haystack || !needle) return -1;
    if (from < 0) from = 0;
    if (needle->length == 0) {
        return from > (int64_t)haystack->length ? (int64_t)haystack->length : from;
    }
    if (from > (int64_t)haystack->length) return -1;

    const char* pos = nyx_memmem(haystack->data + from, haystack->length - from,
                                 needle->data, needle->length);
    if (!pos) return -1;

    return pos - haystack->data;
}

// Comienza con prefix
bool nyx_string_starts_with(nyx_string* str, nyx_string* prefix) {
    if (!str || !prefix) return false;
    if (prefix->length > str->length) return false;

    return memcmp(str->data, prefix->data, prefix->length) == 0;
}

// Termina con suffix
bool nyx_string_ends_with(nyx_string* str, nyx_string* suffix) {
    if (!str || !suffix) return false;
    if (suffix->length > str->length) return false;

    size_t offset = str->length - suffix->length;
    return memcmp(str->data + offset, suffix->data, suffix->length) == 0;
}

// ===== TRANSFORMACIONES =====

// ---- Cambio de caja Unicode (fricción de nyxerp, 2026-09-10) ----------------
//
// `toLower`/`toUpper` convertían BYTE A BYTE con tolower()/toupper(), o sea solo
// ASCII. Con una letra acentuada devolvían el texto A MEDIO CONVERTIR y sin
// avisar: "FERRETERÍA".toLower() daba "ferreterÍa", con la Í en mayúscula en
// medio de una palabra en minúsculas, y "Ñandú".toLower() no tocaba la Ñ.
//
// Lo grave no era la limitación —es razonable que una stdlib joven empiece por
// ASCII— sino que el resultado no es ni el original ni el convertido: es una
// tercera cosa que no sirve para comparar y que SE VE CASI BIEN, así que el
// error sobrevive a la inspección visual. Quien reportó lo encontró buscando
// contactos en un ERP: «PEÑA» no encontraba «Peña».
//
// ALCANCE: ASCII + Latin-1 Supplement (U+00C0–U+00FF) + Latin Extended-A
// (U+0100–U+017F). Cubre español, portugués, francés, italiano, alemán, polaco,
// checo, croata, rumano, húngaro, turco (parcial), báltico. NO cubre griego,
// cirílico ni nada fuera de esos bloques: esos codepoints se dejan intactos, que
// es lo mismo que hacían antes y no empeora nada.
//
// Todos los pares mapeados viven en el mismo rango de longitud UTF-8 (ASCII→1
// byte, U+0080–U+07FF→2 bytes), así que la salida mide EXACTAMENTE lo mismo que
// la entrada. Eso no es casualidad y sostiene el resto del diseño: se puede
// escribir sobre un buffer del mismo tamaño, no cambia ningún índice de bytes
// que el llamador tuviera calculado, y no hay reasignación que pueda fallar.
//
// EXCLUIDOS A PROPÓSITO (cada uno rompería esa invariante o daría un resultado
// dependiente del idioma):
//   U+00DF ß  — su mayúscula es "SS", dos codepoints.
//   U+0149 ŉ, U+017F ſ — mayúsculas de largo distinto.
//   U+0130 İ, U+0131 ı — el par turco: la minúscula de İ son dos codepoints y la
//                        mayúscula de ı es 'I' de 1 byte. Además el mapeo
//                        correcto depende del idioma (en turco 'i'→'İ'), y una
//                        stdlib sin locale no puede decidirlo.
//   U+00B5 µ  — su mayúscula es la Mu griega, fuera del alcance.
//   U+00D7 ×, U+00F7 ÷ — son símbolos matemáticos, no letras.

// Decodifica el codepoint que empieza en data[i]. Escribe en *len los bytes
// consumidos. Ante UTF-8 inválido devuelve -1 con len=1, y el llamador copia el
// byte tal cual: un string con bytes binarios no se corrompe al cambiar de caja.
static int32_t utf8_decode_at(const char* data, size_t n, size_t i, int* len) {
    unsigned char b0 = (unsigned char)data[i];
    int need = utf8_char_len(b0);
    if (need == 1) { *len = 1; return b0 < 0x80 ? (int32_t)b0 : -1; }
    if (i + (size_t)need > n) { *len = 1; return -1; }
    for (int k = 1; k < need; k++) {
        if (((unsigned char)data[i + k] & 0xC0) != 0x80) { *len = 1; return -1; }
    }
    *len = need;
    if (need == 2) {
        return (int32_t)(((b0 & 0x1F) << 6) | ((unsigned char)data[i+1] & 0x3F));
    }
    if (need == 3) {
        return (int32_t)(((b0 & 0x0F) << 12) | (((unsigned char)data[i+1] & 0x3F) << 6)
                         | ((unsigned char)data[i+2] & 0x3F));
    }
    return (int32_t)(((b0 & 0x07) << 18) | (((unsigned char)data[i+1] & 0x3F) << 12)
                     | (((unsigned char)data[i+2] & 0x3F) << 6)
                     | ((unsigned char)data[i+3] & 0x3F));
}

// Escribe cp en out (que tiene sitio de sobra) y devuelve los bytes escritos.
static int utf8_encode_to(uint32_t cp, char* out) {
    if (cp < 0x80) { out[0] = (char)cp; return 1; }
    if (cp < 0x800) {
        out[0] = (char)(0xC0 | (cp >> 6));
        out[1] = (char)(0x80 | (cp & 0x3F));
        return 2;
    }
    if (cp < 0x10000) {
        out[0] = (char)(0xE0 | (cp >> 12));
        out[1] = (char)(0x80 | ((cp >> 6) & 0x3F));
        out[2] = (char)(0x80 | (cp & 0x3F));
        return 3;
    }
    out[0] = (char)(0xF0 | (cp >> 18));
    out[1] = (char)(0x80 | ((cp >> 12) & 0x3F));
    out[2] = (char)(0x80 | ((cp >> 6) & 0x3F));
    out[3] = (char)(0x80 | (cp & 0x3F));
    return 4;
}

// Los bloques Latin Extended-A alternan mayúscula/minúscula de a pares, pero el
// pie cambia dos veces: U+0100–U+0137 y U+014A–U+0177 tienen la MAYÚSCULA en el
// codepoint par, mientras U+0139–U+0148 y U+0179–U+017E la tienen en el IMPAR.
// De ahí los cuatro rangos en vez de una sola regla.
static int latin_a_upper_is_even(uint32_t cp) {
    if (cp >= 0x100 && cp <= 0x137) return 1;
    if (cp >= 0x14A && cp <= 0x177) return 1;
    return 0;
}
static int latin_a_upper_is_odd(uint32_t cp) {
    if (cp >= 0x139 && cp <= 0x148) return 1;
    if (cp >= 0x179 && cp <= 0x17E) return 1;
    return 0;
}

static uint32_t nyx_cp_to_lower(uint32_t cp) {
    if (cp >= 'A' && cp <= 'Z') return cp + 32;
    if (cp >= 0xC0 && cp <= 0xDE && cp != 0xD7) return cp + 0x20;   /* À-Þ sin × */
    if (cp == 0x178) return 0xFF;                                   /* Ÿ → ÿ */
    if (cp == 0x130 || cp == 0x131) return cp;                      /* par turco */
    if (latin_a_upper_is_even(cp) && (cp % 2) == 0) return cp + 1;
    if (latin_a_upper_is_odd(cp) && (cp % 2) == 1) return cp + 1;
    return cp;
}

static uint32_t nyx_cp_to_upper(uint32_t cp) {
    if (cp >= 'a' && cp <= 'z') return cp - 32;
    if (cp >= 0xE0 && cp <= 0xFE && cp != 0xF7) return cp - 0x20;   /* à-þ sin ÷ */
    if (cp == 0xFF) return 0x178;                                   /* ÿ → Ÿ */
    if (cp == 0x130 || cp == 0x131) return cp;                      /* par turco */
    if (latin_a_upper_is_even(cp) && (cp % 2) == 1) return cp - 1;
    if (latin_a_upper_is_odd(cp) && (cp % 2) == 0) return cp - 1;
    return cp;
}

// Motor común de las dos. `to_upper` elige la tabla; el resto es idéntico.
static nyx_string* nyx_string_change_case(nyx_string* str, int to_upper) {
    if (!str) return nyx_string_from_cstr("");

    nyx_string* result = nyx_string_with_capacity(str->length + 1);
    result->length = str->length;

    size_t i = 0;
    size_t o = 0;
    while (i < str->length) {
        int len = 1;
        int32_t cp = utf8_decode_at(str->data, str->length, i, &len);
        if (cp < 0) {
            /* UTF-8 inválido: se copia el byte crudo, sin tocarlo */
            result->data[o++] = str->data[i++];
            continue;
        }
        uint32_t mapped = to_upper ? nyx_cp_to_upper((uint32_t)cp)
                                   : nyx_cp_to_lower((uint32_t)cp);
        if (mapped == (uint32_t)cp) {
            /* sin cambio: copiar los bytes originales, más barato y exacto */
            for (int k = 0; k < len; k++) result->data[o++] = str->data[i + k];
        } else {
            o += (size_t)utf8_encode_to(mapped, result->data + o);
        }
        i += (size_t)len;
    }
    /* Invariante del alcance elegido: todo par mapeado conserva la longitud en
       bytes. Si alguna vez deja de cumplirse, esto lo deja ver en vez de escribir
       fuera del buffer. */
    result->length = o;
    result->data[o] = '\0';

    return result;
}

// Convertir a mayúsculas
nyx_string* nyx_string_to_upper(nyx_string* str) {
    return nyx_string_change_case(str, 1);
}

// Convertir a minúsculas
nyx_string* nyx_string_to_lower(nyx_string* str) {
    return nyx_string_change_case(str, 0);
}

// Trim (eliminar espacios al inicio y final)
nyx_string* nyx_string_trim(nyx_string* str) {
    if (!str || str->length == 0) return nyx_string_from_cstr("");
    
    // Encontrar inicio (sin espacios)
    size_t start = 0;
    while (start < str->length && isspace(str->data[start])) {
        start++;
    }
    
    // Encontrar final (sin espacios)
    size_t end = str->length;
    while (end > start && isspace(str->data[end - 1])) {
        end--;
    }
    
    return nyx_string_substring(str, start, end);
}

// ===== CONVERSIONES =====

// String desde entero
nyx_string* nyx_string_from_int(int64_t value) {
    char buffer[32];
    snprintf(buffer, sizeof(buffer), "%" PRId64 "", value);
    return nyx_string_from_cstr(buffer);
}

// Los dígitos MÍNIMOS que releen al mismo double, no las 6 cifras de %g.
//
// POR QUÉ (fricción de nyxerp, 2026-09-13): con %g, `0.013426971` salía
// `0.013427` y `123456789.0` salía `1.23457e+08`. Un double guarda unas 17
// cifras; imprimirlo tiraba 11 en silencio, y un embedding leído de JSON y
// reescrito vía float cambiaba cada componente. Rust, Go, JS y Python emiten
// la representación más corta de ida y vuelta; ahora Nyx también.
//
// Dígitos: se prueba con 1..17 cifras significativas y se toma la primera que
// `strtod` devuelve IDÉNTICA (17 siempre alcanzan para IEEE 754 double).
// Notación: la de `repr` de Python — decimal fija si el exponente decimal está
// en [-4, 16), científica fuera de ahí —, así 1000000.0 no sale `1e+06`.
// Medido sobre 2M de doubles (bits crudos, decimales, subnormales): 0 fallos
// de ida y vuelta, salida más larga 24 bytes. Revisión del 2026-09-13: la
// científica va con %.*e (con %.*g y 17 cifras elegía fija para exponente 16),
// y el camino rápido 15→16→17 + recorte de ceros baja el peor caso de ~25x a
// ~6x frente a %g, idéntico al loop completo salvo en subnormales, que usan el
// loop completo. Un f32 busca entre 1 y 9 cifras con strtof: formatearlo como
// el double al que se ensancha imprimía 0.1f como 0.10000000149011612.
static void nff_emitir(double value, int digits, int exp10, char* buf, size_t size) {
    if (exp10 < -4 || exp10 >= 16) {
        snprintf(buf, size, "%.*e", digits - 1, value);
    } else {
        int decimals = digits - 1 - exp10;
        if (decimals < 0) decimals = 0;
        snprintf(buf, size, "%.*f", decimals, value);
    }
    if (strchr(buf, '.') == NULL && strchr(buf, 'e') == NULL) {
        size_t blen = strlen(buf);
        if (blen + 3 <= size) { buf[blen] = '.'; buf[blen + 1] = '0'; buf[blen + 2] = '\0'; }
    }
}

void nyx_float_format(double value, char* buf, size_t size) {
    if (isnan(value) || isinf(value)) { snprintf(buf, size, "%g", value); return; }
    if (value == 0.0) { snprintf(buf, size, "%s", signbit(value) ? "-0.0" : "0.0"); return; }
    char sci[40];
    int digits;
    if (fabs(value) < DBL_MIN) {
        for (digits = 1; digits <= 17; digits++) {
            snprintf(sci, sizeof(sci), "%.*e", digits - 1, value);
            if (strtod(sci, NULL) == value) break;
        }
        if (digits > 17) digits = 17;
    } else {
        for (digits = 15; digits <= 17; digits++) {
            snprintf(sci, sizeof(sci), "%.*e", digits - 1, value);
            if (strtod(sci, NULL) == value) break;
        }
        if (digits > 17) digits = 17;
        char* q = strchr(sci, 'e') - 1;
        while (digits > 1 && *q == '0') { digits--; q--; }
    }
    int exp10 = atoi(strchr(sci, 'e') + 1);
    nff_emitir(value, digits, exp10, buf, size);
}

void nyx_float32_format(float value, char* buf, size_t size) {
    if (isnan(value) || isinf(value)) { snprintf(buf, size, "%g", (double)value); return; }
    if (value == 0.0f) { snprintf(buf, size, "%s", signbit(value) ? "-0.0" : "0.0"); return; }
    char sci[40];
    int digits;
    for (digits = 1; digits <= 9; digits++) {
        snprintf(sci, sizeof(sci), "%.*e", digits - 1, (double)value);
        if (strtof(sci, NULL) == value) break;
    }
    if (digits > 9) digits = 9;
    int exp10 = atoi(strchr(sci, 'e') + 1);
    nff_emitir((double)value, digits, exp10, buf, size);
}

nyx_string* nyx_string_from_float32(float value) {
    char buffer[64];
    nyx_float32_format(value, buffer, sizeof(buffer));
    return nyx_string_from_cstr(buffer);
}

// String desde float
nyx_string* nyx_string_from_float(double value) {
    char buffer[64];
    nyx_float_format(value, buffer, sizeof(buffer));
    return nyx_string_from_cstr(buffer);
}

// Convertir string a entero
int64_t nyx_string_to_int(nyx_string* str) {
    if (!str || str->length == 0) {
        fprintf(stderr, "💥 Runtime Error: No se puede convertir string vacío a int\n");
        exit(1);
    }
    
    char* endptr;
    int64_t result = strtoll(str->data, &endptr, 10);
    
    if (*endptr != '\0') {
        fprintf(stderr, "💥 Runtime Error: String '%s' no es un número válido\n", str->data);
        exit(1);
    }
    
    return result;
}

// Convertir string a float
double nyx_string_to_float(nyx_string* str) {
    if (!str || str->length == 0) {
        fprintf(stderr, "💥 Runtime Error: No se puede convertir string vacío a float\n");
        exit(1);
    }

    char* endptr;
    double result = strtod(str->data, &endptr);

    if (*endptr != '\0') {
        fprintf(stderr, "💥 Runtime Error: String '%s' no es un número válido\n", str->data);
        exit(1);
    }

    return result;
}

// Safe variants: return `def` instead of aborting the process on empty/invalid
// input. Same strict parse as the aborting versions (trailing garbage → invalid),
// but a corrupt datum degrades to a default instead of killing the process (the
// nyx-venezuelainfo incident: chunk framing reached string_to_float → exit 1).
int64_t nyx_string_to_int_or(nyx_string* str, int64_t def) {
    if (!str || str->length == 0) return def;
    char* endptr;
    int64_t result = strtoll(str->data, &endptr, 10);
    if (*endptr != '\0') return def;
    return result;
}

double nyx_string_to_float_or(nyx_string* str, double def) {
    if (!str || str->length == 0) return def;
    char* endptr;
    double result = strtod(str->data, &endptr);
    if (*endptr != '\0') return def;
    return result;
}

// ===== IMPRESIÓN =====

// Imprimir string (para debugging)
void nyx_print_string_debug(nyx_string* str) {
    if (!str) {
        printf("<null>\n");
        return;
    }
    
    printf("\"%s\" (len=%" PRId64 ", cap=%" PRId64 ")\n", str->data, str->length, str->capacity);
}

// Imprimir string (actualizar la existente en runtime.c)
void nyx_print_nyx_string(nyx_string* str) {
    if (!str) {
        printf("(null)");
        return;
    }
    printf("%s", str->data);
}

// ===== UTILIDADES =====

// Repetir string n veces
nyx_string* nyx_string_repeat(nyx_string* str, int64_t times) {
    if (!str || times == 0) return nyx_string_from_cstr("");
    
    size_t new_length = str->length * times;
    nyx_string* result = nyx_string_with_capacity(new_length + 1);
    result->length = new_length;
    
    for (size_t i = 0; i < times; i++) {
        memcpy(result->data + (i * str->length), str->data, str->length);
    }
    result->data[new_length] = '\0';
    
    return result;
}

// Reemplazar substring
nyx_string* nyx_string_replace(nyx_string* str, nyx_string* old, nyx_string* new) {
    if (!str || !old || !new) return str;
    if (old->length == 0) return str;
    
    // Contar ocurrencias (por longitud — un NUL embebido no corta la búsqueda)
    const char* hay_end = str->data + str->length;
    size_t count = 0;
    const char* pos = str->data;
    while ((pos = nyx_memmem(pos, (size_t)(hay_end - pos), old->data, old->length)) != NULL) {
        count++;
        pos += old->length;
    }

    if (count == 0) return str;

    // Calcular nueva longitud
    size_t new_length = str->length + count * (new->length - old->length);
    nyx_string* result = nyx_string_with_capacity(new_length + 1);
    result->length = new_length;

    // Construir resultado
    char* dest = result->data;
    const char* src = str->data;

    while ((pos = nyx_memmem(src, (size_t)(hay_end - src), old->data, old->length)) != NULL) {
        // Copiar hasta la ocurrencia
        size_t prefix_len = pos - src;
        memcpy(dest, src, prefix_len);
        dest += prefix_len;

        // Copiar replacement
        memcpy(dest, new->data, new->length);
        dest += new->length;

        // Avanzar source
        src = pos + old->length;
    }

    // Copiar resto (bounded: por construcción quedan exactamente
    // (hay_end - src) + 1 bytes libres en el buffer de new_length+1).
    size_t rest = (size_t)(hay_end - src);
    memcpy(dest, src, rest);
    result->data[new_length] = '\0';

    return result;
}



// Obtener carácter en posición (byte-based para bootstrap).
char nyx_string_char_at(nyx_string* str, int64_t index) {
    if (!str || index < 0 || index >= (int64_t)str->length) {
        fprintf(stderr, "💥 Runtime Error: charAt() índice fuera de rango\n");
        exit(1);
    }
    return str->data[index];
}

// Split: dividir string por delimitador
// Retorna un dynamic array de strings
nyx_array_t* nyx_string_split(nyx_string* str, nyx_string* delimiter) {
    if (!str) return nyx_array_new(0);
    if (!delimiter || delimiter->length == 0) {
        // Sin delimitador, retornar array con el string completo
        nyx_array_t* arr = nyx_array_new(0);
        nyx_array_push_tagged(arr, (int64_t)str, NYX_TAG_STRING);
        return arr;
    }
    
    nyx_array_t* result = nyx_array_new(0);

    // Por longitud, no strstr/from_cstr: los NUL embebidos son datos (v0.14)
    const char* hay_end = str->data + str->length;
    const char* start = str->data;
    const char* pos;

    while ((pos = nyx_memmem(start, (size_t)(hay_end - start),
                             delimiter->data, delimiter->length)) != NULL) {
        // Crear substring desde start hasta pos
        size_t len = pos - start;
        nyx_string* part = nyx_string_from_ptr(start, len);
        nyx_array_push_tagged(result, (int64_t)part, NYX_TAG_STRING);

        // Avanzar después del delimitador
        start = pos + delimiter->length;
    }

    // Agregar último segmento
    nyx_string* last = nyx_string_from_ptr(start, (int64_t)(hay_end - start));
    nyx_array_push_tagged(result, (int64_t)last, NYX_TAG_STRING);

    return result;
}

// Join: unir array de strings con separador
nyx_string* nyx_string_join(nyx_array_t* strings, nyx_string* separator) {
    if (!strings || strings->length == 0) {
        return nyx_string_from_cstr("");
    }
    
    if (!separator) separator = nyx_string_from_cstr("");
    
    // Calcular longitud total
    size_t total_length = 0;
    for (size_t i = 0; i < strings->length; i++) {
        nyx_string* str = (nyx_string*)strings->data[i];
        if (str) total_length += str->length;
        
        if (i < strings->length - 1) {
            total_length += separator->length;
        }
    }
    
    // Construir resultado
    nyx_string* result = nyx_string_with_capacity(total_length + 1);
    result->length = total_length;
    
    char* dest = result->data;
    for (size_t i = 0; i < strings->length; i++) {
        nyx_string* str = (nyx_string*)strings->data[i];
        if (str) {
            memcpy(dest, str->data, str->length);
            dest += str->length;
        }
        
        if (i < strings->length - 1) {
            memcpy(dest, separator->data, separator->length);
            dest += separator->length;
        }
    }
    *dest = '\0';
    
    return result;
}

// Format: interpolación de strings estilo Python
// format("Hello {0}, you are {1}", name, age)
// Acepta hasta 10 argumentos
nyx_string* nyx_string_format(nyx_string* template, int arg_count, ...) {
    if (!template) return nyx_string_from_cstr("");
    
    va_list args;
    va_start(args, arg_count);
    
    // Guardar argumentos
    nyx_string* arg_strings[10];
    for (int i = 0; i < arg_count && i < 10; i++) {
        void* arg = va_arg(args, void*);
        // Asumir que ya viene como nyx_string*
        arg_strings[i] = (nyx_string*)arg;
    }
    va_end(args);
    
    // Calcular tamaño resultado (aproximado)
    size_t result_capacity = template->length * 2;
    nyx_string* result = nyx_string_with_capacity(result_capacity);
    
    char* src = template->data;
    char* dest = result->data;
    size_t dest_offset = 0;
    
    while (*src) {
        if (*src == '{' && *(src + 1) >= '0' && *(src + 1) <= '9' && *(src + 2) == '}') {
            // Encontrado {N}
            int index = *(src + 1) - '0';
            
            if (index < arg_count && arg_strings[index]) {
                // Asegurar capacidad
                size_t needed = dest_offset + arg_strings[index]->length + 1;
                if (needed > result->capacity) {
                    result->capacity = needed * 2;
                    result->data = (char*)GC_realloc(result->data, result->capacity);
                    dest = result->data + dest_offset;
                }
                
                // Copiar argumento
                memcpy(dest, arg_strings[index]->data, arg_strings[index]->length);
                dest += arg_strings[index]->length;
                dest_offset += arg_strings[index]->length;
            }
            
            src += 3;  // Saltar {N}
        } else {
            // Carácter normal
            if (dest_offset + 1 >= result->capacity) {
                result->capacity *= 2;
                result->data = (char*)GC_realloc(result->data, result->capacity);
                dest = result->data + dest_offset;
            }
            
            *dest++ = *src++;
            dest_offset++;
        }
    }
    
    *dest = '\0';
    result->length = dest_offset;
    
    return result;
}




// ===== FUNCIONES PARA LLVM =====

// Wrapper para crear desde literal (usado en codegen)
nyx_string* nyx_string_from_literal(const char* literal, int64_t length) {
    return nyx_string_from_ptr(literal, length);
}


// Versión para LLVM que acepta char* directamente
int nyx_string_contains_cstr(const char* haystack, const char* needle) {
    if (!haystack || !needle) return 0;
    if (needle[0] == '\0') return 1;
    return (strstr(haystack, needle) != NULL) ? 1 : 0;
}

// ===== ALIASES PARA LLVM CODEGEN =====

// Alias para charAt (sin guión bajo) - acepta i8* directamente
char nyx_string_charat(const char* str, int64_t index) {
    if (!str) {
        fprintf(stderr, "💥 Runtime Error: charat() en string null\n");
        exit(1);
    }
    
    size_t len = strlen(str);
    if (index < 0 || index >= (int64_t)len) {
        fprintf(stderr, "💥 Runtime Error: charat() índice %" PRId64 " fuera de rango [0..%zu)\n", 
                index, len);
        exit(1);
    }
    
    return str[index];
}

// Crear string desde un solo carácter - retorna nyx_string*
// Longitud explícita (nyx_string_from_ptr), NO via nyx_string_from_cstr/strlen:
// chr(0) debe producir el byte NUL real (length 1), no truncar a length 0.
nyx_string* nyx_string_from_char(char c) {
    return nyx_string_from_ptr(&c, 1);
}

// Crear string desde un booleano
// nyx_panic vive en runtime.c: con un try activo se vuelve throw capturable.
void nyx_panic(nyx_string* msg);

nyx_string* nyx_string_from_bool(int64_t value) {
    return nyx_string_from_cstr(value ? "true" : "false");
}

// Texto → bool para `#[derive(Fields)]::desde_fila` (arco struct-campos-
// reflexion, 2026-09-09). Acepta las formas que producen los DOS productores de
// esas filas:
//   - `<S>_valores()` emite "true"/"false" (nyx_string_from_bool, arriba);
//   - PostgreSQL, en formato TEXT del protocolo v3, emite "t"/"f" — que es la
//     trampa que un ORM se come al leer una fila REAL de la base.
// Se aceptan también "1"/"0", que es lo que devuelven SQLite y varios drivers.
//
// Cualquier otra cosa ABORTA nombrando el valor, en vez de asumir `false`: un
// booleano que no se entiende no es `false`, y asumirlo escribiría una decisión
// equivocada en un sistema que factura. Es la misma regla que gobierna todo
// este derive — ningún camino inventa un valor.
// LA TABLA, una sola vez. `*ok` sale en 1 si el texto se reconoció, 0 si no;
// el valor booleano va en el retorno y solo vale cuando *ok es 1.
//
// Existe separada porque hay DOS consumidores con conductas opuestas —el que
// aborta y el que pregunta (arco derive-fila-sin-abortar)— y duplicar el
// reconocimiento entre ambos es la trampa que este repo pisó tres veces en una
// semana: la lista de builtins void, la de módulos del prelude y la de builtins
// globales. Las tres derivaron, y las tres costaron un bug publicado o un índice
// vacío. Acá se comparte por construcción: si alguien agrega "sí"/"no", los dos
// caminos lo aprenden juntos.
static int64_t nyx_bool_text_parse(nyx_string* s, int* ok) {
    *ok = 0;
    if (!s || !s->data) return 0;
    const char* d = s->data;
    int64_t n = s->length;
    *ok = 1;
    if (n == 4 && strncmp(d, "true", 4) == 0) return 1;
    if (n == 1 && (d[0] == 't' || d[0] == 'T' || d[0] == '1')) return 1;
    if (n == 5 && strncmp(d, "false", 5) == 0) return 0;
    if (n == 1 && (d[0] == 'f' || d[0] == 'F' || d[0] == '0')) return 0;
    if (n == 4 && strncmp(d, "TRUE", 4) == 0) return 1;
    if (n == 5 && strncmp(d, "FALSE", 5) == 0) return 0;
    *ok = 0;
    return 0;
}

int64_t nyx_bool_from_text(nyx_string* s) {
    if (!s || !s->data) {
        nyx_panic(nyx_string_from_cstr(
            "desde_fila: campo booleano ausente (celda nula) — usa pg_is_null antes de convertir"));
        return 0;
    }
    int ok = 0;
    int64_t v = nyx_bool_text_parse(s, &ok);
    if (ok) return v;
    {
        char buf[256];
        snprintf(buf, sizeof(buf),
                 "desde_fila: valor booleano no reconocido: '%.*s' — se aceptan true/false, t/f, 1/0",
                 (int)(s->length > 64 ? 64 : s->length), s->data);
        nyx_panic(nyx_string_from_cstr(buf));
    }
    return 0;
}

// ¿`s` es un booleano que `nyx_bool_from_text` sabría convertir? Pregunta sin
// morir. Una celda nula responde 0: no es convertible, que es la respuesta
// correcta (la que aborta la trata aparte porque puede decir algo más útil).
int64_t nyx_bool_text_ok(nyx_string* s) {
    int ok = 0;
    nyx_bool_text_parse(s, &ok);
    return ok ? 1 : 0;
}

// ¿`s` es un entero decimal que `nyx_string_to_int` convertiría sin abortar?
// Acepta signo y dígitos, y NADA más — ni espacios, ni vacío, ni sufijos: es
// exactamente lo que el conversor exige, dicho en forma de pregunta.
int64_t nyx_int_text_ok(nyx_string* s) {
    if (!s || !s->data || s->length == 0) return 0;
    const char* d = s->data;
    int64_t n = s->length;
    int64_t i = 0;
    if (d[0] == '-' || d[0] == '+') {
        if (n == 1) return 0;   /* solo el signo no es un número */
        i = 1;
    }
    for (; i < n; i++) {
        if (d[i] < '0' || d[i] > '9') return 0;
    }
    return 1;
}

// ===== WRAPPERS i8* PARA CODEGEN (métodos de string) =====

const char* nyx_string_to_upper_cstr(const char* str) {
    if (!str) return "";
    nyx_string* ns = nyx_string_from_cstr(str);
    nyx_string* result = nyx_string_to_upper(ns);
    return nyx_string_to_cstr(result);
}

const char* nyx_string_to_lower_cstr(const char* str) {
    if (!str) return "";
    nyx_string* ns = nyx_string_from_cstr(str);
    nyx_string* result = nyx_string_to_lower(ns);
    return nyx_string_to_cstr(result);
}

int nyx_string_starts_with_cstr(const char* str, const char* prefix) {
    if (!str || !prefix) return 0;
    size_t plen = strlen(prefix);
    if (plen == 0) return 1;
    return strncmp(str, prefix, plen) == 0 ? 1 : 0;
}

int nyx_string_ends_with_cstr(const char* str, const char* suffix) {
    if (!str || !suffix) return 0;
    size_t slen = strlen(str);
    size_t suflen = strlen(suffix);
    if (suflen == 0) return 1;
    if (suflen > slen) return 0;
    return strcmp(str + slen - suflen, suffix) == 0 ? 1 : 0;
}

int64_t nyx_string_indexof_cstr(const char* haystack, const char* needle) {
    if (!haystack || !needle) return -1;
    const char* pos = strstr(haystack, needle);
    if (!pos) return -1;
    return (int64_t)(pos - haystack);
}

// ===== STRING BUILDER (v0.12.0+) =====
// O(n) amortizado para concatenación, vs O(n²) con nyx_string_concat en loop.

nyx_string_builder* nyx_sb_new(int64_t initial_capacity) {
    if (initial_capacity < 64) initial_capacity = 64;
    nyx_string_builder* sb = (nyx_string_builder*)GC_malloc(sizeof(nyx_string_builder));
    sb->data = (char*)GC_malloc_atomic(initial_capacity);
    sb->length = 0;
    sb->capacity = initial_capacity;
    sb->data[0] = '\0';
    return sb;
}

static void sb_ensure_capacity(nyx_string_builder* sb, int64_t additional) {
    int64_t needed = sb->length + additional + 1;
    if (needed <= sb->capacity) return;
    int64_t new_cap = sb->capacity * 2;
    if (new_cap < needed) new_cap = needed;
    sb->data = (char*)GC_REALLOC(sb->data, new_cap);
    sb->capacity = new_cap;
}

void nyx_sb_append(nyx_string_builder* sb, nyx_string* s) {
    if (!sb || !s || s->length == 0) return;
    sb_ensure_capacity(sb, (int64_t)s->length);
    memcpy(sb->data + sb->length, s->data, s->length);
    sb->length += (int64_t)s->length;
    sb->data[sb->length] = '\0';
}

void nyx_sb_append_char(nyx_string_builder* sb, char c) {
    if (!sb) return;
    sb_ensure_capacity(sb, 1);
    sb->data[sb->length++] = c;
    sb->data[sb->length] = '\0';
}

void nyx_sb_append_cstr(nyx_string_builder* sb, const char* s) {
    if (!sb || !s) return;
    int64_t len = (int64_t)strlen(s);
    if (len == 0) return;
    sb_ensure_capacity(sb, len);
    memcpy(sb->data + sb->length, s, len);
    sb->length += len;
    sb->data[sb->length] = '\0';
}

void nyx_sb_append_int(nyx_string_builder* sb, int64_t n) {
    if (!sb) return;
    char buf[32];
    int len = snprintf(buf, sizeof(buf), "%" PRId64 "", n);
    sb_ensure_capacity(sb, len);
    memcpy(sb->data + sb->length, buf, len);
    sb->length += len;
    sb->data[sb->length] = '\0';
}

nyx_string* nyx_sb_to_string(nyx_string_builder* sb) {
    if (!sb) return nyx_string_from_cstr("");
    return nyx_string_from_ptr(sb->data, (size_t)sb->length);
}

void nyx_sb_clear(nyx_string_builder* sb) {
    if (!sb) return;
    sb->length = 0;
    sb->data[0] = '\0';
}