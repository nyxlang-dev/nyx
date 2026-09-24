// ============================================
// STRINGS.H - Header de Strings para Nyx
// ============================================

#ifndef NYX_STRINGS_H
#define NYX_STRINGS_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>  
#include <ctype.h>
#include "runtime-arrays.h" 

// ===== ESTRUCTURA DE STRING =====
typedef struct {
    int64_t length;   // int64 fijo: ABI estable con el IR ({i64,i64,i8*}) también en wasm32
    int64_t capacity;
    char* data;
} nyx_string;

// ===== DECLARACIONES DE FUNCIONES =====

// Constructores
nyx_string* nyx_string_from_cstr(const char* cstr);

// ¿el texto es un booleano / un entero que el conversor aceptaría? Preguntan sin
// abortar (arco derive-fila-sin-abortar). Comparten la tabla de reconocimiento
// con nyx_bool_from_text, no la copian.
int64_t nyx_bool_text_ok(nyx_string* s);
int64_t nyx_int_text_ok(nyx_string* s);
// El conversor que SÍ aborta, declarado acá junto a su sondeo para que los tests
// puedan ejercer los dos contra la misma tabla. Su llamador real es el IR que
// genera `#[derive(Fields)]`, no otro .c.
int64_t nyx_bool_from_text(nyx_string* s);
// Etapa 3 slots-tag: convierte un slot de Array a String según su TAG de tipo
// (runtime-arrays.h). Con NYX_TAG_UNKNOWN conserva el comportamiento histórico
// de leer el slot como entero, así que un array no tagueado no cambia de conducta.
nyx_string* nyx_string_from_tagged(int64_t value, int64_t tag, int64_t fallback_tag);
nyx_string* nyx_string_from_ptr(const char* ptr, int64_t length);
nyx_string* nyx_string_with_capacity(int64_t capacity);
nyx_string* nyx_string_from_literal(const char* literal, int64_t length);

// Propiedades
int64_t nyx_string_length(nyx_string* str);       // longitud en bytes (uso interno / bootstrap)
int64_t nyx_string_byte_length(nyx_string* str);  // alias explícito para bytes
int64_t nyx_string_length_utf8(nyx_string* str);  // longitud en code points UTF-8 (user API)
bool nyx_string_is_empty(nyx_string* str);
const char* nyx_string_to_cstr(nyx_string* str);

// Concatenación
nyx_string* nyx_string_concat(nyx_string* a, nyx_string* b);
nyx_string* nyx_string_concat_many(int count, ...);

// Comparación
bool nyx_string_equals(nyx_string* a, nyx_string* b);
int nyx_string_compare(nyx_string* a, nyx_string* b);

// Substring
nyx_string* nyx_string_substring(nyx_string* str, int64_t start, int64_t end);
// E2: substring por codepoints UTF-8 (aditiva; [from, to) en codepoints).
nyx_string* nyx_string_char_substring(nyx_string* str, int64_t from, int64_t to);
nyx_string* nyx_string_substring_from(nyx_string* str, int64_t start);
const char* nyx_string_substring_cstr(const char* str, int64_t start, int64_t end);

// Búsqueda
bool nyx_string_contains(nyx_string* haystack, nyx_string* needle);
int64_t nyx_string_index_of(nyx_string* haystack, nyx_string* needle);
int64_t nyx_string_index_of_from(nyx_string* haystack, nyx_string* needle, int64_t from);
bool nyx_string_starts_with(nyx_string* str, nyx_string* prefix);
bool nyx_string_ends_with(nyx_string* str, nyx_string* suffix);

// Para LLVM codegen (acepta i8* directamente)
int nyx_string_contains_cstr(const char* haystack, const char* needle);
const char* nyx_string_substring_cstr(const char* str, int64_t start, int64_t end);
const char* nyx_string_to_upper_cstr(const char* str);
const char* nyx_string_to_lower_cstr(const char* str);
int nyx_string_starts_with_cstr(const char* str, const char* prefix);
int nyx_string_ends_with_cstr(const char* str, const char* suffix);
int64_t nyx_string_indexof_cstr(const char* haystack, const char* needle);

// Transformaciones
nyx_string* nyx_string_to_upper(nyx_string* str);
nyx_string* nyx_string_to_lower(nyx_string* str);
nyx_string* nyx_string_trim(nyx_string* str);

// Conversiones
nyx_string* nyx_string_from_int(int64_t value);
nyx_string* nyx_string_from_float(double value);
// Formato ÚNICO de un double como texto, compartido por float_to_string,
// la interpolación y print(float): los dígitos mínimos que releen al mismo
// double. Escribe en `buf` (64 bytes alcanzan: la salida más larga medida
// es de 24).
void nyx_float_format(double value, char* buf, size_t size);
void nyx_float32_format(float value, char* buf, size_t size);
nyx_string* nyx_string_from_float32(float value);
nyx_string* nyx_string_from_bool(int64_t value);
int64_t nyx_string_to_int(nyx_string* str);
double nyx_string_to_float(nyx_string* str);
// Safe variants: return `def` on empty/invalid input instead of exit(1).
int64_t nyx_string_to_int_or(nyx_string* str, int64_t def);
double nyx_string_to_float_or(nyx_string* str, double def);

// Impresión
void nyx_print_string_debug(nyx_string* str);
void nyx_print_nyx_string(nyx_string* str);

// Utilidades
nyx_string* nyx_string_repeat(nyx_string* str, int64_t times);
nyx_string* nyx_string_replace(nyx_string* str, nyx_string* old, nyx_string* new);

// ===== STRING METHODS v0.17 =====

// Obtener carácter en índice
char nyx_string_char_at(nyx_string* str, int64_t index);
nyx_string* nyx_string_from_char(char c);

// Dividir string por delimitador
nyx_array_t* nyx_string_split(nyx_string* str, nyx_string* delimiter);

// Unir array de strings con separador
nyx_string* nyx_string_join(nyx_array_t* strings, nyx_string* separator);

// String interpolation
nyx_string* nyx_string_format(nyx_string* template, int arg_count, ...);

// I/O para REPL
nyx_string* nyx_read_line();
// Lee TODA la entrada estándar de una, binary-safe (bytes 0 incluidos) —
// expuesta a Nyx vía std/io.nx (extern "C"), no builtin. Ver runtime.c.
nyx_string* nyx_read_stdin_all(void);
void nyx_print_no_newline(nyx_string* str);

// ===== STRING BUILDER (v0.12.0+) =====
typedef struct {
    char* data;
    int64_t length;
    int64_t capacity;
} nyx_string_builder;

nyx_string* nyx_intern_cstr(nyx_string** cache, const char* cstr);
nyx_string* nyx_intern_ptr(nyx_string** cache, const char* ptr, int64_t length);

nyx_string_builder* nyx_sb_new(int64_t initial_capacity);
void nyx_sb_append(nyx_string_builder* sb, nyx_string* s);
void nyx_sb_append_char(nyx_string_builder* sb, char c);
void nyx_sb_append_cstr(nyx_string_builder* sb, const char* s);
void nyx_sb_append_int(nyx_string_builder* sb, int64_t n);
nyx_string* nyx_sb_to_string(nyx_string_builder* sb);
void nyx_sb_clear(nyx_string_builder* sb);

// Bytes ↔ String (portables: también en wasm32-wasi).
int64_t nyx_crc32_bytes(nyx_array_t* arr);
nyx_string* nyx_string_from_bytes(nyx_array_t* arr, int64_t offset, int64_t len);
int64_t nyx_constant_time_eq(nyx_string* a, nyx_string* b);

#endif // NYX_STRINGS_H