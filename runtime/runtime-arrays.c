// ============================================
// RUNTIME-ARRAYS.C - Arrays Dinámicos para Nyx v0.8.1
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <gc.h>  // Boehm GC

// ===== ESTRUCTURA DE ARRAY DINÁMICO =====

typedef struct {
    int64_t length;      // Número de elementos actuales
    int64_t capacity;    // Capacidad total asignada
    int64_t* data;       // Puntero a los datos
} nyx_array_t;

// ===== CONSTANTES =====

#define NYX_ARRAY_INITIAL_CAPACITY 8
#define NYX_ARRAY_GROWTH_FACTOR 2

// ===== FUNCIONES DE ARRAYS DINÁMICOS =====

// Crear nuevo array con capacidad inicial
nyx_array_t* nyx_array_new(int64_t capacity) {
    if (capacity < 0) {
        fprintf(stderr, "💥 Runtime Error: Capacidad negativa: %ld\n", capacity);
        exit(1);
    }
    
    // Si capacidad es 0, usar capacidad inicial por defecto
    if (capacity == 0) {
        capacity = NYX_ARRAY_INITIAL_CAPACITY;
    }
    
    // Allocar estructura con GC
    nyx_array_t* arr = (nyx_array_t*)GC_malloc(sizeof(nyx_array_t));
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: No se pudo allocar array\n");
        exit(1);
    }
    
    arr->length = 0;
    arr->capacity = capacity;
    
    // Allocar espacio para datos con GC
    arr->data = (int64_t*)GC_malloc(sizeof(int64_t) * capacity);
    if (!arr->data) {
        fprintf(stderr, "💥 Runtime Error: No se pudo allocar datos de array\n");
        exit(1);
    }
    
    return arr;
}

// Crear array desde literal con elementos iniciales
nyx_array_t* nyx_array_from_literal(int64_t* elements, int64_t length) {
    nyx_array_t* arr = nyx_array_new(length);
    arr->length = length;
    
    // Copiar elementos
    for (int64_t i = 0; i < length; i++) {
        arr->data[i] = elements[i];
    }
    
    return arr;
}

// Obtener longitud del array
int64_t nyx_array_length(nyx_array_t* arr) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    return arr->length;
}

// Obtener capacidad del array
int64_t nyx_array_capacity(nyx_array_t* arr) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    return arr->capacity;
}

// Bounds checking
static void nyx_array_bounds_check(nyx_array_t* arr, int64_t index) {
    if (index < 0) {
        fprintf(stderr, "💥 Runtime Error: Índice negativo: %ld\n", index);
        exit(1);
    }
    
    if (index >= arr->length) {
        fprintf(stderr, "💥 Runtime Error: Índice %ld fuera de rango [0..%ld)\n", 
                index, arr->length);
        exit(1);
    }
}

// Get: obtener elemento en índice
int64_t nyx_array_get(nyx_array_t* arr, int64_t index) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    nyx_array_bounds_check(arr, index);
    return arr->data[index];
}

// Set: establecer elemento en índice
void nyx_array_set(nyx_array_t* arr, int64_t index, int64_t value) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    nyx_array_bounds_check(arr, index);
    arr->data[index] = value;
}

// Resize: redimensionar array (interno)
static void nyx_array_resize(nyx_array_t* arr, int64_t new_capacity) {
    if (new_capacity <= arr->capacity) {
        return;  // No necesita resize
    }

    // GC_REALLOC reutiliza el bloque si hay espacio contiguo, evitando copia
    arr->data = (int64_t*)GC_REALLOC(arr->data, sizeof(int64_t) * new_capacity);
    if (!arr->data) {
        fprintf(stderr, "💥 Runtime Error: No se pudo redimensionar array\n");
        exit(1);
    }

    arr->capacity = new_capacity;
}

// Push: agregar elemento al final
void nyx_array_push(nyx_array_t* arr, int64_t value) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    // Verificar si necesita resize
    if (arr->length >= arr->capacity) {
        int64_t new_capacity = arr->capacity * NYX_ARRAY_GROWTH_FACTOR;
        nyx_array_resize(arr, new_capacity);
    }
    
    // Agregar elemento
    arr->data[arr->length] = value;
    arr->length++;
}

// Pop: quitar y retornar último elemento
int64_t nyx_array_pop(nyx_array_t* arr) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    if (arr->length == 0) {
        fprintf(stderr, "💥 Runtime Error: pop() en array vacío\n");
        exit(1);
    }
    
    arr->length--;
    return arr->data[arr->length];
}

// Unshift: insertar al inicio (O(n) memmove, sin nueva allocation)
void nyx_array_unshift(nyx_array_t* arr, int64_t value) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    if (arr->length >= arr->capacity) {
        int64_t new_capacity = arr->capacity * NYX_ARRAY_GROWTH_FACTOR;
        nyx_array_resize(arr, new_capacity);
    }
    memmove(arr->data + 1, arr->data, arr->length * sizeof(int64_t));
    arr->data[0] = value;
    arr->length++;
}

// Shift: remover y retornar primer elemento (O(n) memmove)
int64_t nyx_array_shift(nyx_array_t* arr) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    if (arr->length == 0) {
        return 0;
    }
    int64_t val = arr->data[0];
    memmove(arr->data, arr->data + 1, (arr->length - 1) * sizeof(int64_t));
    arr->length--;
    return val;
}

// Clear: vaciar array (mantiene capacidad)
void nyx_array_clear(nyx_array_t* arr) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    arr->length = 0;
}

// Contains: verificar si contiene valor
int64_t nyx_array_contains(nyx_array_t* arr, int64_t value) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    for (int64_t i = 0; i < arr->length; i++) {
        if (arr->data[i] == value) {
            return 1;  // true
        }
    }
    return 0;  // false
}

// Insert: insertar elemento en índice
void nyx_array_insert(nyx_array_t* arr, int64_t index, int64_t value) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    if (index < 0 || index > arr->length) {
        fprintf(stderr, "💥 Runtime Error: Índice de insert %ld fuera de rango [0..%ld]\n", 
                index, arr->length);
        exit(1);
    }
    
    // Verificar si necesita resize
    if (arr->length >= arr->capacity) {
        int64_t new_capacity = arr->capacity * NYX_ARRAY_GROWTH_FACTOR;
        nyx_array_resize(arr, new_capacity);
    }
    
    // Mover elementos hacia la derecha
    for (int64_t i = arr->length; i > index; i--) {
        arr->data[i] = arr->data[i - 1];
    }
    
    // Insertar elemento
    arr->data[index] = value;
    arr->length++;
}

// Remove: quitar elemento en índice
int64_t nyx_array_remove(nyx_array_t* arr, int64_t index) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    nyx_array_bounds_check(arr, index);
    
    int64_t removed = arr->data[index];
    
    // Mover elementos hacia la izquierda
    for (int64_t i = index; i < arr->length - 1; i++) {
        arr->data[i] = arr->data[i + 1];
    }
    
    arr->length--;
    return removed;
}

// Slice: crear sub-array
nyx_array_t* nyx_array_slice(nyx_array_t* arr, int64_t start, int64_t end) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    
    // Validar rangos
    if (start < 0) start = 0;
    if (end > arr->length) end = arr->length;
    if (start > end) start = end;
    
    int64_t slice_length = end - start;
    nyx_array_t* slice = nyx_array_new(slice_length);
    slice->length = slice_length;
    
    // Copiar elementos
    for (int64_t i = 0; i < slice_length; i++) {
        slice->data[i] = arr->data[start + i];
    }
    
    return slice;
}

// Print: imprimir array (para debugging)
void nyx_array_print(nyx_array_t* arr) {
    if (!arr) {
        printf("NULL\n");
        return;
    }
    
    printf("[");
    for (int64_t i = 0; i < arr->length; i++) {
        printf("%ld", arr->data[i]);
        if (i < arr->length - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}

// Reverse: revertir array in-place
void nyx_array_reverse(nyx_array_t* arr) {
    if (!arr || arr->length <= 1) return;
    int64_t left = 0;
    int64_t right = arr->length - 1;
    while (left < right) {
        int64_t tmp = arr->data[left];
        arr->data[left] = arr->data[right];
        arr->data[right] = tmp;
        left++;
        right--;
    }
}

// IndexOf: buscar valor en array, retorna indice o -1
int64_t nyx_array_index_of(nyx_array_t* arr, int64_t value) {
    if (!arr) return -1;
    for (int64_t i = 0; i < arr->length; i++) {
        if (arr->data[i] == value) return i;
    }
    return -1;
}

// ===== FUNCIONES DE COMPATIBILIDAD CON CÓDIGO ANTIGUO =====

// Compatibilidad: bounds check para arrays estáticos
void nyx_bounds_check(int64_t index, int64_t length) {
    if (index < 0) {
        fprintf(stderr, "💥 Runtime Error: Índice negativo: %ld\n", index);
        exit(1);
    }
    
    if (index >= length) {
        fprintf(stderr, "💥 Runtime Error: Índice %ld fuera de rango [0..%ld)\n", 
                index, length);
        exit(1);
    }
}

// Compatibilidad: print array estático
void nyx_print_array(int64_t* arr, int64_t length) {
    printf("[");
    for (int64_t i = 0; i < length; i++) {
        printf("%ld", arr[i]);
        if (i < length - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}