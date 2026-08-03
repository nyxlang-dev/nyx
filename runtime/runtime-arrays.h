// ============================================
// RUNTIME-ARRAYS.H - Header para Arrays Dinámicos
// ============================================

#ifndef NYX_RUNTIME_ARRAYS_H
#define NYX_RUNTIME_ARRAYS_H

#include <stdint.h>

// ===== ESTRUCTURA DE ARRAY DINÁMICO =====

typedef struct {
    int64_t length;      // Número de elementos actuales
    int64_t capacity;    // Capacidad total asignada
    int64_t* data;       // Puntero a los datos
    uint8_t* tags;       // Etapa 1 slots-tag: 1 byte de TIPO por slot, paralelo a data
} nyx_array_t;

// ===== TAGS DE SLOT (Etapa 1, 2026-07-26) =====
// Un slot de Array es un int64_t CRUDO: el compilador tenía que ADIVINAR si
// contiene un int, un puntero a String, un float bit-casteado, etc. Esa
// adivinanza es la raíz de una familia de bugs (concat inconsistente según el
// orden de operandos, contains comparando punteros, SEGV al leer con el tipo
// equivocado). Los tags viajan en un array PARALELO para no cambiar el layout
// de `data`: las ~34 funciones que solo transportan slots, los accesos crudos
// `->data[i]` de maps.c/persist.c/file-io.c y los serializadores siguen válidos.
//
// NYX_TAG_UNKNOWN es 0 A PROPÓSITO: memoria recién puesta a cero (o un array
// construido por una vía todavía no migrada) se comporta EXACTAMENTE como antes.
// Eso permite migrar por etapas con el repo verde en cada una.
#define NYX_TAG_UNKNOWN 0
#define NYX_TAG_INT     1
#define NYX_TAG_STRING  2
#define NYX_TAG_FLOAT   3
#define NYX_TAG_BOOL    4
#define NYX_TAG_ARRAY   5
#define NYX_TAG_MAP     6
#define NYX_TAG_PTR     7

// ===== FUNCIONES PÚBLICAS =====

// Constructor
nyx_array_t* nyx_array_new(int64_t capacity);
nyx_array_t* nyx_array_from_literal(int64_t* elements, int64_t length);

// Propiedades
int64_t nyx_array_length(nyx_array_t* arr);
int64_t nyx_array_capacity(nyx_array_t* arr);

// Etapa 3 slots-tag: consumo del tag. Convierte un slot a String según su tipo
// real; con NYX_TAG_UNKNOWN conserva el comportamiento histórico (leerlo como
// int). Declarada en strings.h junto al resto de la familia nyx_string_from_*.

// Tags de slot (Etapa 1)
void    nyx_array_push_tagged(nyx_array_t* arr, int64_t value, int64_t tag);
void    nyx_array_set_tagged(nyx_array_t* arr, int64_t index, int64_t value, int64_t tag);
int64_t nyx_array_get_tag(nyx_array_t* arr, int64_t index);

// Etapa 4 slots-tag: búsqueda por CONTENIDO. `needle_tag` es el tipo ESTÁTICO
// del valor buscado en el call-site. Con NYX_TAG_STRING, un slot que también
// tiene TAG_STRING se compara con nyx_string_equals (contenido); cualquier
// otra combinación conserva la comparación cruda por i64 — nunca se
// dereferencia un slot cuyo tipo no está garantizado por su tag.
int64_t nyx_array_contains_tagged(nyx_array_t* arr, int64_t value, int64_t needle_tag);
int64_t nyx_array_index_of_tagged(nyx_array_t* arr, int64_t value, int64_t needle_tag);

// Lectura tipada chequeada (residuo post-Etapa 4): como nyx_array_get, pero si
// el tag del slot y el tipo esperado son AMBOS definidos (int/String/float/bool)
// y difieren, aborta ordenado con diagnóstico en vez de SEGV/basura silenciosa.
// UNKNOWN y tags opacos (PTR/ARRAY/MAP) hacen passthrough histórico.
int64_t nyx_array_get_checked(nyx_array_t* arr, int64_t index, int64_t expected_tag);

// Lectura float chequeada: FLOAT → bits; INT/BOOL/UNKNOWN → widening histórico
// (sitofp); STRING → abort diagnosticado.
double nyx_slot_as_float_checked(nyx_array_t* arr, int64_t index);

// ===== TAG ESTÁTICO DE FALLBACK (spec 2026-08-03, "la anotación manda") =====
// El tipo DECLARADO del receptor viaja como static_tag y SOLO gana cuando el
// tag runtime es UNKNOWN — nunca pisa un tag conocido. Cierra la familia
// `arr[i] = 5.5` releído corrupto con `Array<float>` anotado.
//   rt FLOAT → bits · rt INT/BOOL → widening numérico (correcto, se preserva)
//   rt puntero (STRING/ARRAY/MAP/PTR) → abort NYX2008 (bits de puntero = basura)
//   rt UNKNOWN: st FLOAT → bits (la anotación manda); si no → widening histórico
double nyx_slot_as_float_st(nyx_array_t* arr, int64_t index, int64_t static_tag);

// Pisa los tags UNKNOWN de un array con el tipo DECLARADO de su destino (para
// literales con anotación: `var b: Array<String> = [src[1]]`). Solo UNKNOWN;
// tags conocidos quedan intactos. NULL/sin-tags = no-op.
void nyx_array_retag_unknown(nyx_array_t* arr, int64_t tag);

// Acceso
int64_t nyx_array_get(nyx_array_t* arr, int64_t index);
int64_t nyx_array_get_or_zero(nyx_array_t* arr, int64_t index);  // v0.14: OOB → 0 (slots opcionales)
void nyx_array_set(nyx_array_t* arr, int64_t index, int64_t value);

// Modificación
void nyx_array_push(nyx_array_t* arr, int64_t value);
int64_t nyx_array_pop(nyx_array_t* arr);
void nyx_array_clear(nyx_array_t* arr);
void nyx_array_insert(nyx_array_t* arr, int64_t index, int64_t value);
int64_t nyx_array_remove(nyx_array_t* arr, int64_t index);

// Shift/Unshift (O(n) memmove, no allocation)
void nyx_array_unshift(nyx_array_t* arr, int64_t value);
int64_t nyx_array_shift(nyx_array_t* arr);

// Búsqueda
int64_t nyx_array_contains(nyx_array_t* arr, int64_t value);

// Utilidades
nyx_array_t* nyx_array_slice(nyx_array_t* arr, int64_t start, int64_t end);
void nyx_array_reverse(nyx_array_t* arr);
int64_t nyx_array_index_of(nyx_array_t* arr, int64_t value);
void nyx_array_print(nyx_array_t* arr);

// Compatibilidad
void nyx_bounds_check(int64_t index, int64_t length);
void nyx_print_array(int64_t* arr, int64_t length);

#endif // NYX_RUNTIME_ARRAYS_H
