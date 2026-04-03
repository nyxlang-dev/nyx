// ============================================
// STRINGS.C - Runtime de Strings para Nyx v0.9.0
// ============================================
// Strings inmutables con Boehm GC

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
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
    strcpy(str->data, cstr);
    
    return str;
}

// Crear string desde puntero + longitud
nyx_string* nyx_string_from_ptr(const char* ptr, size_t length) {
    nyx_string* str = (nyx_string*)GC_malloc(sizeof(nyx_string));
    str->length = length;
    str->capacity = length + 1;
    str->data = (char*)GC_malloc_atomic(str->capacity);
    memcpy(str->data, ptr, length);
    str->data[length] = '\0';
    
    return str;
}

// Crear string vacío con capacidad específica
nyx_string* nyx_string_with_capacity(size_t capacity) {
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

// ===== PROPIEDADES BÁSICAS =====

// Obtener longitud en bytes — uso interno del runtime y del compilador bootstrap.
// NO cambiar a code points: el bootstrap usa esta función para calcular tamaños de
// literales en LLVM IR ([N x i8]) y debe devolver bytes.
size_t nyx_string_length(nyx_string* str) {
    if (!str) return 0;
    return str->length;
}

// Obtener longitud en bytes (alias explícito para uso interno).
size_t nyx_string_byte_length(nyx_string* str) {
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

// Comparar dos strings (igualdad)
bool nyx_string_equals(nyx_string* a, nyx_string* b) {
    if (a == b) return true;
    if (!a || !b) return false;
    if (a->length != b->length) return false;
    
    return strcmp(a->data, b->data) == 0;
}

// Comparar dos strings (orden lexicográfico)
int nyx_string_compare(nyx_string* a, nyx_string* b) {
    if (a == b) return 0;
    if (!a) return -1;
    if (!b) return 1;
    
    return strcmp(a->data, b->data);
}

// ===== SUBSTRING =====

// Obtener substring [start, end) por byte indices (byte-based para bootstrap).
nyx_string* nyx_string_substring(nyx_string* str, size_t start, size_t end) {
    if (!str) return nyx_string_from_cstr("");
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
nyx_string* nyx_string_substring_from(nyx_string* str, size_t start) {
    if (!str) return nyx_string_from_cstr("");
    return nyx_string_substring(str, start, utf8_count_codepoints(str));
}

// ===== BÚSQUEDA =====

// Verificar si contiene substring
bool nyx_string_contains(nyx_string* haystack, nyx_string* needle) {
    if (!haystack || !needle) return false;
    if (needle->length == 0) return true;
    if (needle->length > haystack->length) return false;
    
    return strstr(haystack->data, needle->data) != NULL;
}

// Encontrar índice de substring (-1 si no existe)
int64_t nyx_string_index_of(nyx_string* haystack, nyx_string* needle) {
    if (!haystack || !needle) return -1;
    if (needle->length == 0) return 0;
    
    char* pos = strstr(haystack->data, needle->data);
    if (!pos) return -1;
    
    return pos - haystack->data;
}

// Comienza con prefix
bool nyx_string_starts_with(nyx_string* str, nyx_string* prefix) {
    if (!str || !prefix) return false;
    if (prefix->length > str->length) return false;
    
    return strncmp(str->data, prefix->data, prefix->length) == 0;
}

// Termina con suffix
bool nyx_string_ends_with(nyx_string* str, nyx_string* suffix) {
    if (!str || !suffix) return false;
    if (suffix->length > str->length) return false;
    
    size_t offset = str->length - suffix->length;
    return strcmp(str->data + offset, suffix->data) == 0;
}

// ===== TRANSFORMACIONES =====

// Convertir a mayúsculas
nyx_string* nyx_string_to_upper(nyx_string* str) {
    if (!str) return nyx_string_from_cstr("");
    
    nyx_string* result = nyx_string_with_capacity(str->length + 1);
    result->length = str->length;
    
    for (size_t i = 0; i < str->length; i++) {
        result->data[i] = toupper(str->data[i]);
    }
    result->data[str->length] = '\0';
    
    return result;
}

// Convertir a minúsculas
nyx_string* nyx_string_to_lower(nyx_string* str) {
    if (!str) return nyx_string_from_cstr("");
    
    nyx_string* result = nyx_string_with_capacity(str->length + 1);
    result->length = str->length;
    
    for (size_t i = 0; i < str->length; i++) {
        result->data[i] = tolower(str->data[i]);
    }
    result->data[str->length] = '\0';
    
    return result;
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
    snprintf(buffer, sizeof(buffer), "%ld", value);
    return nyx_string_from_cstr(buffer);
}

// String desde float
nyx_string* nyx_string_from_float(double value) {
    char buffer[64];
    snprintf(buffer, sizeof(buffer), "%g", value);
    // Ensure float always has decimal point (e.g., 42.0 not 42)
    if (strchr(buffer, '.') == NULL && strchr(buffer, 'e') == NULL && strchr(buffer, 'E') == NULL) {
        strcat(buffer, ".0");
    }
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

// ===== IMPRESIÓN =====

// Imprimir string (para debugging)
void nyx_print_string_debug(nyx_string* str) {
    if (!str) {
        printf("<null>\n");
        return;
    }
    
    printf("\"%s\" (len=%zu, cap=%zu)\n", str->data, str->length, str->capacity);
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
nyx_string* nyx_string_repeat(nyx_string* str, size_t times) {
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
    
    // Contar ocurrencias
    size_t count = 0;
    char* pos = str->data;
    while ((pos = strstr(pos, old->data)) != NULL) {
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
    char* src = str->data;
    
    while ((pos = strstr(src, old->data)) != NULL) {
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
    
    // Copiar resto
    strcpy(dest, src);
    
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
        nyx_array_push(arr, (int64_t)str);
        return arr;
    }
    
    nyx_array_t* result = nyx_array_new(0);
    
    char* pos = str->data;
    char* start = str->data;
    
    while ((pos = strstr(start, delimiter->data)) != NULL) {
        // Crear substring desde start hasta pos
        size_t len = pos - start;
        nyx_string* part = nyx_string_from_ptr(start, len);
        nyx_array_push(result, (int64_t)part);
        
        // Avanzar después del delimitador
        start = pos + delimiter->length;
    }
    
    // Agregar último segmento
    nyx_string* last = nyx_string_from_cstr(start);
    nyx_array_push(result, (int64_t)last);
    
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
nyx_string* nyx_string_from_literal(const char* literal, size_t length) {
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
        fprintf(stderr, "💥 Runtime Error: charat() índice %ld fuera de rango [0..%zu)\n", 
                index, len);
        exit(1);
    }
    
    return str[index];
}

// Crear string desde un solo carácter - retorna nyx_string*
nyx_string* nyx_string_from_char(char c) {
    char buf[2] = { c, '\0' };
    return nyx_string_from_cstr(buf);
}

// Crear string desde un booleano
nyx_string* nyx_string_from_bool(int64_t value) {
    return nyx_string_from_cstr(value ? "true" : "false");
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
    int len = snprintf(buf, sizeof(buf), "%ld", n);
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