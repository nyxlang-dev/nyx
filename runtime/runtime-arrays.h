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
} nyx_array_t;

// ===== FUNCIONES PÚBLICAS =====

// Constructor
nyx_array_t* nyx_array_new(int64_t capacity);
nyx_array_t* nyx_array_from_literal(int64_t* elements, int64_t length);

// Propiedades
int64_t nyx_array_length(nyx_array_t* arr);
int64_t nyx_array_capacity(nyx_array_t* arr);

// Acceso
int64_t nyx_array_get(nyx_array_t* arr, int64_t index);
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
