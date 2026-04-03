// ============================================
// MAPS.H - Hash Maps para Nyx v0.12.0
// Open addressing with Robin Hood hashing
// ============================================

#ifndef NYX_MAPS_H
#define NYX_MAPS_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

// ===== CONFIGURACIÓN =====

#define NYX_MAP_INITIAL_CAPACITY 16
#define NYX_MAP_LOAD_FACTOR 0.7
#define NYX_MAP_GROWTH_FACTOR 2

// ===== TIPOS DE CLAVE =====

typedef enum {
    KEY_TYPE_STRING,
    KEY_TYPE_INT
} nyx_key_type_t;

// ===== ENTRADA DEL MAP =====

// Unión para almacenar diferentes tipos de claves
typedef union {
    char* string_key;
    int64_t int_key;
} nyx_key_value_t;

// Estructura de clave con tipo
typedef struct {
    nyx_key_type_t type;
    nyx_key_value_t value;
} nyx_key_t;

// Entry for open addressing (flat array, no pointers)
typedef struct nyx_map_entry {
    nyx_key_t key;
    int64_t value;
    uint64_t hash;          // cached hash
    int32_t probe_distance; // Robin Hood probe distance (-1 = empty)
} nyx_map_entry_t;

// ===== ESTRUCTURA PRINCIPAL =====

typedef struct {
    nyx_map_entry_t* entries;   // Flat array of entries (open addressing)
    int64_t size;               // Número de entradas
    int64_t capacity;           // Capacidad del array
    nyx_key_type_t key_type;    // Tipo de clave (homogéneo)
} nyx_map_t;

// ===== FUNCIONES PÚBLICAS =====

// Constructor y destructor
nyx_map_t* nyx_map_new(nyx_key_type_t key_type);
void nyx_map_free(nyx_map_t* map);

// Operaciones básicas
void nyx_map_insert(nyx_map_t* map, nyx_key_t key, int64_t value);
int64_t nyx_map_get(nyx_map_t* map, nyx_key_t key);
bool nyx_map_contains(nyx_map_t* map, nyx_key_t key);
int64_t nyx_map_remove(nyx_map_t* map, nyx_key_t key);
void nyx_map_clear(nyx_map_t* map);

// Propiedades
int64_t nyx_map_length(nyx_map_t* map);
bool nyx_map_is_empty(nyx_map_t* map);

// Iteración
void nyx_map_keys(nyx_map_t* map, nyx_key_t** keys_out, int64_t* length_out);
void nyx_map_values(nyx_map_t* map, int64_t** values_out, int64_t* length_out);

// Utilidades
void nyx_map_print(nyx_map_t* map);

// ===== FUNCIONES DE CONSTRUCCIÓN DE CLAVES =====

nyx_key_t nyx_key_from_string(const char* str);
nyx_key_t nyx_key_from_int(int64_t num);

// ===== FUNCIONES INTERNAS (NO EXPORTAR) =====

uint64_t nyx_hash_string(const char* str);
uint64_t nyx_hash_int(int64_t num);
bool nyx_key_equals(nyx_key_t a, nyx_key_t b);
void nyx_map_resize(nyx_map_t* map);

// Wrappers para LLVM
void nyx_map_insert_str(nyx_map_t* map, const char* key_str, const char* value_str);
char* nyx_map_get_str(nyx_map_t* map, const char* key_str);
bool nyx_map_contains_str(nyx_map_t* map, const char* key_str);

// Wrappers para LLVM - integers
void nyx_map_insert_int(nyx_map_t* map, const char* key_str, int64_t value);
int64_t nyx_map_get_int(nyx_map_t* map, const char* key_str);

// Wrappers para LLVM - remove/clear
int64_t nyx_map_remove_str(nyx_map_t* map, const char* key_str);

#endif // NYX_MAPS_H
