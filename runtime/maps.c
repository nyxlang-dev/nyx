// ============================================
// MAPS.C - Hash Maps para Nyx v0.12.0
// Open addressing with Robin Hood hashing
// ============================================

#include <inttypes.h>
#include <gc.h>
#include "maps.h"

// ===== FUNCIONES DE HASH =====

// FNV-1a hash for strings (better distribution than djb2)
uint64_t nyx_hash_string(const char* str) {
    uint64_t hash = 0xcbf29ce484222325ULL;
    while (*str) {
        hash ^= (uint8_t)*str++;
        hash *= 0x100000001b3ULL;
    }
    return hash;
}

// Splitmix64 hash for integers
uint64_t nyx_hash_int(int64_t num) {
    uint64_t x = (uint64_t)num;
    x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9ULL;
    x = (x ^ (x >> 27)) * 0x94d049bb133111ebULL;
    x = x ^ (x >> 31);
    return x;
}

// ===== CONSTRUCCIÓN DE CLAVES =====

nyx_key_t nyx_key_from_string(const char* str) {
    nyx_key_t key;
    key.type = KEY_TYPE_STRING;
    size_t len = strlen(str);
    key.value.string_key = (char*)GC_malloc_atomic(len + 1);
    memcpy(key.value.string_key, str, len + 1);
    return key;
}

nyx_key_t nyx_key_from_int(int64_t num) {
    nyx_key_t key;
    key.type = KEY_TYPE_INT;
    key.value.int_key = num;
    return key;
}

// ===== COMPARACIÓN DE CLAVES =====

static inline bool key_equals_with_hash(nyx_key_t a, nyx_key_t b) {
    if (a.type != b.type) return false;
    if (a.type == KEY_TYPE_STRING)
        return strcmp(a.value.string_key, b.value.string_key) == 0;
    return a.value.int_key == b.value.int_key;
}

bool nyx_key_equals(nyx_key_t a, nyx_key_t b) {
    return key_equals_with_hash(a, b);
}

// ===== HASH HELPER =====

static inline uint64_t compute_hash(nyx_key_t key) {
    if (key.type == KEY_TYPE_STRING)
        return nyx_hash_string(key.value.string_key);
    return nyx_hash_int(key.value.int_key);
}

// ===== CONSTRUCTOR =====

nyx_map_t* nyx_map_new(nyx_key_type_t key_type) {
    nyx_map_t* map = (nyx_map_t*)GC_malloc(sizeof(nyx_map_t));
    map->capacity = NYX_MAP_INITIAL_CAPACITY;
    map->size = 0;
    map->key_type = key_type;

    // Allocate flat entry array — use GC_MALLOC_ATOMIC since we manage references
    map->entries = (nyx_map_entry_t*)GC_malloc(sizeof(nyx_map_entry_t) * map->capacity);
    // Mark all entries as empty
    for (int64_t i = 0; i < map->capacity; i++) {
        map->entries[i].probe_distance = -1;
    }
    return map;
}

// ===== RESIZE =====

void nyx_map_resize(nyx_map_t* map) {
    int64_t old_capacity = map->capacity;
    nyx_map_entry_t* old_entries = map->entries;

    map->capacity *= NYX_MAP_GROWTH_FACTOR;
    map->entries = (nyx_map_entry_t*)GC_malloc(sizeof(nyx_map_entry_t) * map->capacity);
    for (int64_t i = 0; i < map->capacity; i++) {
        map->entries[i].probe_distance = -1;
    }
    map->size = 0;

    // Re-insert all occupied entries
    for (int64_t i = 0; i < old_capacity; i++) {
        if (old_entries[i].probe_distance >= 0) {
            nyx_map_insert(map, old_entries[i].key, old_entries[i].value);
        }
    }
}

// ===== INSERT (Robin Hood) =====

void nyx_map_insert(nyx_map_t* map, nyx_key_t key, int64_t value) {
    if (!map) {
        fprintf(stderr, "Runtime Error: Map es NULL\n");
        exit(1);
    }

    // Check load factor
    if ((double)(map->size + 1) / map->capacity > NYX_MAP_LOAD_FACTOR) {
        nyx_map_resize(map);
    }

    uint64_t h = compute_hash(key);
    int64_t idx = (int64_t)(h % (uint64_t)map->capacity);
    int32_t dist = 0;

    nyx_map_entry_t incoming;
    incoming.key = key;
    incoming.value = value;
    incoming.hash = h;
    incoming.probe_distance = 0;

    while (1) {
        nyx_map_entry_t* slot = &map->entries[idx];

        // Empty slot — place here
        if (slot->probe_distance < 0) {
            incoming.probe_distance = dist;
            *slot = incoming;
            map->size++;
            return;
        }

        // Key already exists — update value
        if (slot->hash == h && key_equals_with_hash(slot->key, incoming.key)) {
            slot->value = incoming.value;
            return;
        }

        // Robin Hood: if current entry has shorter probe distance, swap
        if (slot->probe_distance < dist) {
            // Swap incoming with existing
            nyx_map_entry_t tmp = *slot;
            incoming.probe_distance = dist;
            *slot = incoming;
            incoming = tmp;
            dist = incoming.probe_distance;
        }

        dist++;
        idx = (idx + 1) % map->capacity;
    }
}

// ===== FIND (internal) =====

static inline int64_t find_slot(nyx_map_t* map, nyx_key_t key, uint64_t h) {
    int64_t idx = (int64_t)(h % (uint64_t)map->capacity);
    int32_t dist = 0;

    while (1) {
        nyx_map_entry_t* slot = &map->entries[idx];
        if (slot->probe_distance < 0 || dist > slot->probe_distance)
            return -1; // Not found
        if (slot->hash == h && key_equals_with_hash(slot->key, key))
            return idx;
        dist++;
        idx = (idx + 1) % map->capacity;
    }
}

// ===== GET =====

int64_t nyx_map_get(nyx_map_t* map, nyx_key_t key) {
    if (!map) {
        fprintf(stderr, "Runtime Error: Map es NULL\n");
        exit(1);
    }
    uint64_t h = compute_hash(key);
    int64_t idx = find_slot(map, key, h);
    if (idx < 0) {
        fprintf(stderr, "Runtime Error: Clave no encontrada en map\n");
        if (key.type == KEY_TYPE_STRING)
            fprintf(stderr, "   Clave: \"%s\"\n", key.value.string_key);
        else
            fprintf(stderr, "   Clave: %" PRId64 "\n", key.value.int_key);
        exit(1);
    }
    return map->entries[idx].value;
}

// ===== CONTAINS =====

bool nyx_map_contains(nyx_map_t* map, nyx_key_t key) {
    if (!map) return false;
    uint64_t h = compute_hash(key);
    return find_slot(map, key, h) >= 0;
}

// ===== REMOVE (backward shift) =====

int64_t nyx_map_remove(nyx_map_t* map, nyx_key_t key) {
    if (!map) {
        fprintf(stderr, "Runtime Error: Map es NULL\n");
        exit(1);
    }
    uint64_t h = compute_hash(key);
    int64_t idx = find_slot(map, key, h);
    if (idx < 0) {
        fprintf(stderr, "Runtime Error: Clave no encontrada en remove()\n");
        exit(1);
    }

    int64_t removed_value = map->entries[idx].value;

    // Backward shift deletion
    int64_t curr = idx;
    while (1) {
        int64_t next = (curr + 1) % map->capacity;
        nyx_map_entry_t* next_entry = &map->entries[next];
        if (next_entry->probe_distance <= 0) {
            // Next slot is empty or at home position — stop
            map->entries[curr].probe_distance = -1;
            break;
        }
        // Shift back
        map->entries[curr] = *next_entry;
        map->entries[curr].probe_distance--;
        curr = next;
    }

    map->size--;
    return removed_value;
}

// ===== CLEAR =====

void nyx_map_clear(nyx_map_t* map) {
    if (!map) return;
    for (int64_t i = 0; i < map->capacity; i++) {
        map->entries[i].probe_distance = -1;
    }
    map->size = 0;
}

// ===== PROPIEDADES =====

int64_t nyx_map_length(nyx_map_t* map) {
    return map ? map->size : 0;
}

bool nyx_map_is_empty(nyx_map_t* map) {
    return !map || map->size == 0;
}

// ===== FREE =====

void nyx_map_free(nyx_map_t* map) {
    // GC handles deallocation — no-op
    (void)map;
}

// ===== ITERACIÓN =====

void nyx_map_keys(nyx_map_t* map, nyx_key_t** keys_out, int64_t* length_out) {
    if (!map || map->size == 0) {
        *keys_out = NULL;
        *length_out = 0;
        return;
    }
    nyx_key_t* keys = (nyx_key_t*)GC_malloc(sizeof(nyx_key_t) * map->size);
    int64_t index = 0;
    for (int64_t i = 0; i < map->capacity; i++) {
        if (map->entries[i].probe_distance >= 0) {
            keys[index++] = map->entries[i].key;
        }
    }
    *keys_out = keys;
    *length_out = map->size;
}

void nyx_map_values(nyx_map_t* map, int64_t** values_out, int64_t* length_out) {
    if (!map || map->size == 0) {
        *values_out = NULL;
        *length_out = 0;
        return;
    }
    int64_t* values = (int64_t*)GC_malloc(sizeof(int64_t) * map->size);
    int64_t index = 0;
    for (int64_t i = 0; i < map->capacity; i++) {
        if (map->entries[i].probe_distance >= 0) {
            values[index++] = map->entries[i].value;
        }
    }
    *values_out = values;
    *length_out = map->size;
}

// ===== MAP KEYS/VALUES AS ARRAYS =====

#include "strings.h"
#include "runtime-arrays.h"

nyx_array_t* nyx_map_keys_array(nyx_map_t* map) {
    nyx_array_t* arr = nyx_array_new(map ? map->size : 0);
    if (!map || map->size == 0) return arr;
    for (int64_t i = 0; i < map->capacity; i++) {
        if (map->entries[i].probe_distance >= 0) {
            if (map->entries[i].key.type == KEY_TYPE_STRING) {
                nyx_string* s = nyx_string_from_cstr(map->entries[i].key.value.string_key);
                nyx_array_push_tagged(arr, (int64_t)s, NYX_TAG_STRING);
            } else {
                nyx_array_push_tagged(arr, map->entries[i].key.value.int_key, NYX_TAG_INT);
            }
        }
    }
    return arr;
}

nyx_array_t* nyx_map_values_array(nyx_map_t* map) {
    nyx_array_t* arr = nyx_array_new(map ? map->size : 0);
    if (!map || map->size == 0) return arr;
    for (int64_t i = 0; i < map->capacity; i++) {
        if (map->entries[i].probe_distance >= 0) {
            // Sin slot-tag A PROPÓSITO: el value de un Map es un i64 opaco
            // (int o puntero según cómo se insertó) — afirmar un tag sería
            // adivinar. Las KEYS sí se taguean (su tipo es del propio Map).
            nyx_array_push(arr, map->entries[i].value);
        }
    }
    return arr;
}

// ===== PRINT (DEBUG) =====

void nyx_map_print(nyx_map_t* map) {
    if (!map) {
        printf("NULL\n");
        return;
    }
    printf("Map { size: %" PRId64 ", capacity: %" PRId64 " }\n", map->size, map->capacity);
    printf("{\n");
    for (int64_t i = 0; i < map->capacity; i++) {
        if (map->entries[i].probe_distance >= 0) {
            printf("  ");
            if (map->entries[i].key.type == KEY_TYPE_STRING)
                printf("\"%s\"", map->entries[i].key.value.string_key);
            else
                printf("%" PRId64 "", map->entries[i].key.value.int_key);
            printf(": %" PRId64 "\n", map->entries[i].value);
        }
    }
    printf("}\n");
}

// ===== WRAPPERS PARA LLVM =====

void nyx_map_insert_str(nyx_map_t* map, const char* key_str, const char* value_str) {
    nyx_key_t key;
    key.type = KEY_TYPE_STRING;
    // Copy key string with GC
    size_t len = strlen(key_str);
    key.value.string_key = (char*)GC_malloc_atomic(len + 1);
    memcpy(key.value.string_key, key_str, len + 1);
    nyx_map_insert(map, key, (int64_t)value_str);
}

char* nyx_map_get_str(nyx_map_t* map, const char* key_str) {
    if (!map) {
        fprintf(stderr, "Runtime Error: Map es NULL\n");
        exit(1);
    }
    // Avoid allocating a key — compute hash and search inline
    uint64_t h = nyx_hash_string(key_str);
    int64_t idx = (int64_t)(h % (uint64_t)map->capacity);
    int32_t dist = 0;
    while (1) {
        nyx_map_entry_t* slot = &map->entries[idx];
        if (slot->probe_distance < 0 || dist > slot->probe_distance) {
            fprintf(stderr, "Runtime Error: Clave '%s' no encontrada en map\n", key_str);
            exit(1);
        }
        if (slot->hash == h && slot->key.type == KEY_TYPE_STRING &&
            strcmp(slot->key.value.string_key, key_str) == 0) {
            return (char*)slot->value;
        }
        dist++;
        idx = (idx + 1) % map->capacity;
    }
}

bool nyx_map_contains_str(nyx_map_t* map, const char* key_str) {
    if (!map) return false;
    uint64_t h = nyx_hash_string(key_str);
    int64_t idx = (int64_t)(h % (uint64_t)map->capacity);
    int32_t dist = 0;
    while (1) {
        nyx_map_entry_t* slot = &map->entries[idx];
        if (slot->probe_distance < 0 || dist > slot->probe_distance)
            return false;
        if (slot->hash == h && slot->key.type == KEY_TYPE_STRING &&
            strcmp(slot->key.value.string_key, key_str) == 0)
            return true;
        dist++;
        idx = (idx + 1) % map->capacity;
    }
}

void nyx_map_insert_int(nyx_map_t* map, const char* key_str, int64_t value) {
    nyx_key_t key;
    key.type = KEY_TYPE_STRING;
    size_t len = strlen(key_str);
    key.value.string_key = (char*)GC_malloc_atomic(len + 1);
    memcpy(key.value.string_key, key_str, len + 1);
    nyx_map_insert(map, key, value);
}

int64_t nyx_map_remove_str(nyx_map_t* map, const char* key_str) {
    if (!map) return 0;
    nyx_key_t key;
    key.type = KEY_TYPE_STRING;
    // Temporary key — no allocation needed, find_slot only reads
    key.value.string_key = (char*)key_str;
    uint64_t h = compute_hash(key);
    int64_t idx = find_slot(map, key, h);
    if (idx < 0) return 0;  // Key not found — return 0 (not an error)

    int64_t removed_value = map->entries[idx].value;

    // Backward shift deletion (same as nyx_map_remove)
    int64_t curr = idx;
    while (1) {
        int64_t next = (curr + 1) % map->capacity;
        nyx_map_entry_t* next_entry = &map->entries[next];
        if (next_entry->probe_distance <= 0) {
            map->entries[curr].probe_distance = -1;
            break;
        }
        map->entries[curr] = *next_entry;
        map->entries[curr].probe_distance--;
        curr = next;
    }

    map->size--;
    return 1;  // Return 1 = key was removed
}

int64_t nyx_map_get_int(nyx_map_t* map, const char* key_str) {
    if (!map) {
        fprintf(stderr, "Runtime Error: Map es NULL\n");
        exit(1);
    }
    uint64_t h = nyx_hash_string(key_str);
    int64_t idx = (int64_t)(h % (uint64_t)map->capacity);
    int32_t dist = 0;
    while (1) {
        nyx_map_entry_t* slot = &map->entries[idx];
        if (slot->probe_distance < 0 || dist > slot->probe_distance) {
            fprintf(stderr, "Runtime Error: Clave '%s' no encontrada en map\n", key_str);
            exit(1);
        }
        if (slot->hash == h && slot->key.type == KEY_TYPE_STRING &&
            strcmp(slot->key.value.string_key, key_str) == 0) {
            return slot->value;
        }
        dist++;
        idx = (idx + 1) % map->capacity;
    }
}

// ===== SCAN — cursor estable ante resize (spec 2026-07-21) =====
// dictScan de Redis (reverse-binary-increment, algoritmo de Pieter Noordhuis)
// adaptado a open addressing Robin Hood: el cursor enumera HOME buckets; una
// entrada con home h vive en h+probe (contigua desde h hasta el primer slot
// vacío), así que se escanea el run desde el bucket filtrando por home ==
// bucket. Al crecer la tabla 2^n → 2^(n+1) cada bucket b se parte EXACTO en
// b y b+2^n, y el orden reverse-binary visita ambos hijos de los buckets aún
// no visitados → una key presente durante TODO el scan aparece >= 1 vez
// (garantía débil de Redis; duplicados permitidos tras un resize).
// PRECONDICIÓN: capacidad potencia de 2 — hoy siempre (16 × growth 2, sin
// shrink); blindada con el check de abajo.
// EN: Redis dictScan (reverse-binary cursor) adapted to Robin Hood probing.

static uint64_t nyx_rev64(uint64_t v) {
    v = ((v >> 1)  & 0x5555555555555555ULL) | ((v & 0x5555555555555555ULL) << 1);
    v = ((v >> 2)  & 0x3333333333333333ULL) | ((v & 0x3333333333333333ULL) << 2);
    v = ((v >> 4)  & 0x0F0F0F0F0F0F0F0FULL) | ((v & 0x0F0F0F0F0F0F0F0FULL) << 4);
    v = ((v >> 8)  & 0x00FF00FF00FF00FFULL) | ((v & 0x00FF00FF00FF00FFULL) << 8);
    v = ((v >> 16) & 0x0000FFFF0000FFFFULL) | ((v & 0x0000FFFF0000FFFFULL) << 16);
    v = (v >> 32) | (v << 32);
    return v;
}

int64_t nyx_map_scan(nyx_map_t* map, int64_t cursor, void* out_v) {
    nyx_array_t* out = (nyx_array_t*)out_v;
    if (!map || !out) return 0;
    if (map->size == 0) return 0;
    if (map->capacity <= 0) return 0;
    if ((map->capacity & (map->capacity - 1)) != 0) return 0;  // pow2 requerido

    uint64_t c = (uint64_t)cursor;
    uint64_t mask = (uint64_t)map->capacity - 1;
    uint64_t bucket = c & mask;

    // Emitir las entradas con home == bucket: escanear el run contiguo desde
    // el bucket hasta el primer slot vacío (Robin Hood: slot = home + probe,
    // sin huecos antes del home). Guard de vuelta completa (tabla llena).
    for (int64_t i = 0; i < map->capacity; i++) {
        int64_t idx = (int64_t)((bucket + (uint64_t)i) & mask);
        nyx_map_entry_t* slot = &map->entries[idx];
        if (slot->probe_distance < 0) break;
        if ((slot->hash & mask) == bucket) {
            if (map->key_type == KEY_TYPE_STRING) {
                nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(slot->key.value.string_key), NYX_TAG_STRING);
            } else {
                nyx_array_push_tagged(out, slot->key.value.int_key, NYX_TAG_INT);
            }
        }
    }

    // Cursor siguiente: reverse-binary increment (Redis dictScan) — 0 = fin
    c |= ~mask;
    c = nyx_rev64(c);
    c++;
    c = nyx_rev64(c);
    return (int64_t)c;
}

// Wrapper del builtin `map_scan(m, cursor)`: devuelve UNA página como Array
// [next_cursor, key1, key2, ...] — el codegen emite una sola llamada.
void* nyx_map_scan_page(nyx_map_t* map, int64_t cursor) {
    nyx_array_t* out = nyx_array_new(4);
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);  // slot 0 = next_cursor (se rellena abajo)
    int64_t next = nyx_map_scan(map, cursor, out);
    out->data[0] = next;
    return out;
}
