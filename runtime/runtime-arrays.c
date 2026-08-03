// ============================================
// RUNTIME-ARRAYS.C - Arrays Dinámicos para Nyx v0.8.1
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <gc.h>  // Boehm GC

// ===== ESTRUCTURA DE ARRAY DINÁMICO =====
// El struct y los tags de slot viven en runtime-arrays.h. Este .c DUPLICABA el
// typedef (deuda preexistente): al agregar el campo `tags` en la Etapa 1 de
// slots-tag las dos copias podían divergir en silencio, así que se unifica
// incluyendo el header — que además trae las constantes NYX_TAG_*.
#include "runtime-arrays.h"

// ===== CONSTANTES =====

#define NYX_ARRAY_INITIAL_CAPACITY 8
#define NYX_ARRAY_GROWTH_FACTOR 2

// ===== FUNCIONES DE ARRAYS DINÁMICOS =====

// Crear nuevo array con capacidad inicial
nyx_array_t* nyx_array_new(int64_t capacity) {
    if (capacity < 0) {
        fprintf(stderr, "💥 Runtime Error: Capacidad negativa: %" PRId64 "\n", capacity);
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

    // Etapa 1 slots-tag: tags paralelos, en CERO (= NYX_TAG_UNKNOWN) → un array
    // recién creado se comporta exactamente como antes hasta que alguien tagee.
    arr->tags = (uint8_t*)GC_malloc(sizeof(uint8_t) * capacity);
    if (!arr->tags) {
        fprintf(stderr, "💥 Runtime Error: No se pudo allocar tags de array\n");
        exit(1);
    }
    memset(arr->tags, NYX_TAG_UNKNOWN, sizeof(uint8_t) * capacity);

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
        fprintf(stderr, "💥 Runtime Error: Índice negativo: %" PRId64 "\n", index);
        exit(1);
    }
    
    if (index >= arr->length) {
        fprintf(stderr, "💥 Runtime Error: Índice %" PRId64 " fuera de rango [0..%" PRId64 ")\n", 
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

// v0.14: lectura tolerante para slots opcionales (line/col de ASTNode).
// Devuelve 0 en vez de abortar cuando el slot no existe — nodos sintéticos
// construidos como [type, data] (sin posición) leen line=0 = "desconocida".
int64_t nyx_array_get_or_zero(nyx_array_t* arr, int64_t index) {
    if (!arr || index < 0 || index >= (int64_t)arr->length) return 0;
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
    // Invariante slots-tag: escritura sin tipo → UNKNOWN (set_tagged escribe
    // el tag real justo después de llamar acá).
    if (arr->tags) {
        arr->tags[index] = NYX_TAG_UNKNOWN;
    }
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

    // Etapa 1 slots-tag: los tags crecen en paralelo; lo nuevo arranca UNKNOWN.
    int64_t old_capacity = arr->capacity;
    arr->tags = (uint8_t*)GC_REALLOC(arr->tags, sizeof(uint8_t) * new_capacity);
    if (!arr->tags) {
        fprintf(stderr, "💥 Runtime Error: No se pudo redimensionar tags de array\n");
        exit(1);
    }
    if (new_capacity > old_capacity) {
        memset(arr->tags + old_capacity, NYX_TAG_UNKNOWN,
               sizeof(uint8_t) * (new_capacity - old_capacity));
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
    // Invariante slots-tag: tags[i] describe SIEMPRE a data[i]. Un push sin
    // tipo resetea el tag del slot (podría quedar uno stale de un pop previo:
    // [str] → pop() → push(42) dejaría TAG_STRING sobre un int → SEGV al
    // dereferenciar). push_tagged sobreescribe este UNKNOWN justo después.
    if (arr->tags && arr->length < arr->capacity) {
        arr->tags[arr->length] = NYX_TAG_UNKNOWN;
    }
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
    // Invariante slots-tag: los tags viajan CON sus slots
    if (arr->tags) {
        memmove(arr->tags + 1, arr->tags, arr->length * sizeof(uint8_t));
        arr->tags[0] = NYX_TAG_UNKNOWN;
    }
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
    if (arr->tags) {
        memmove(arr->tags, arr->tags + 1, (arr->length - 1) * sizeof(uint8_t));
    }
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
        fprintf(stderr, "💥 Runtime Error: Índice de insert %" PRId64 " fuera de rango [0..%" PRId64 "]\n", 
                index, arr->length);
        exit(1);
    }
    
    // Verificar si necesita resize
    if (arr->length >= arr->capacity) {
        int64_t new_capacity = arr->capacity * NYX_ARRAY_GROWTH_FACTOR;
        nyx_array_resize(arr, new_capacity);
    }
    
    // Mover elementos hacia la derecha (tags en paralelo — invariante slots-tag)
    for (int64_t i = arr->length; i > index; i--) {
        arr->data[i] = arr->data[i - 1];
        if (arr->tags) arr->tags[i] = arr->tags[i - 1];
    }

    // Insertar elemento
    arr->data[index] = value;
    if (arr->tags) arr->tags[index] = NYX_TAG_UNKNOWN;
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
    
    // Mover elementos hacia la izquierda (tags en paralelo — invariante slots-tag)
    for (int64_t i = index; i < arr->length - 1; i++) {
        arr->data[i] = arr->data[i + 1];
        if (arr->tags) arr->tags[i] = arr->tags[i + 1];
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
    
    // Copiar elementos (y sus tags — el slice conserva los tipos del origen)
    for (int64_t i = 0; i < slice_length; i++) {
        slice->data[i] = arr->data[start + i];
        if (arr->tags && slice->tags) {
            slice->tags[i] = arr->tags[start + i];
        }
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
        printf("%" PRId64 "", arr->data[i]);
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
        if (arr->tags) {
            uint8_t ttag = arr->tags[left];
            arr->tags[left] = arr->tags[right];
            arr->tags[right] = ttag;
        }
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
        fprintf(stderr, "💥 Runtime Error: Índice negativo: %" PRId64 "\n", index);
        exit(1);
    }
    
    if (index >= length) {
        fprintf(stderr, "💥 Runtime Error: Índice %" PRId64 " fuera de rango [0..%" PRId64 ")\n", 
                index, length);
        exit(1);
    }
}

// Compatibilidad: print array estático
void nyx_print_array(int64_t* arr, int64_t length) {
    printf("[");
    for (int64_t i = 0; i < length; i++) {
        printf("%" PRId64 "", arr[i]);
        if (i < length - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}

// ===== TAGS DE SLOT (Etapa 1 slots-tag, 2026-07-26) =====
// Ver runtime-arrays.h para el porqué. Estas funciones son ADITIVAS: mientras
// nadie las use, todo array queda con NYX_TAG_UNKNOWN y el comportamiento es
// idéntico al previo. `tags` puede ser NULL en arrays construidos por vías que
// no pasan por nyx_array_new (defensivo: se degrada a UNKNOWN, nunca crashea).

void nyx_array_push_tagged(nyx_array_t* arr, int64_t value, int64_t tag) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    int64_t idx = arr->length;   // push escribe en la posición actual
    nyx_array_push(arr, value);  // reusa crecimiento/resize (que ya mueve tags)
    if (arr->tags && idx < arr->capacity) {
        arr->tags[idx] = (uint8_t)tag;
    }
}

void nyx_array_set_tagged(nyx_array_t* arr, int64_t index, int64_t value, int64_t tag) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    nyx_array_set(arr, index, value);   // valida bounds y aborta si corresponde
    if (arr->tags && index >= 0 && index < arr->capacity) {
        arr->tags[index] = (uint8_t)tag;
    }
}

int64_t nyx_array_get_tag(nyx_array_t* arr, int64_t index) {
    if (!arr || !arr->tags) return NYX_TAG_UNKNOWN;
    if (index < 0 || index >= arr->length) return NYX_TAG_UNKNOWN;
    return (int64_t)arr->tags[index];
}

// ===== Etapa 3 slots-tag: consumo del tag =====
// El codegen emite IR con tipos ESTÁTICOS, así que `arr[i]` no puede "tener
// tipo dinámico": el tag se consume en el punto donde el valor se INTERPRETA.
// El caso que motivó todo esto es la concatenación: `"x" + arr[i]` imprimía el
// PUNTERO como número mientras `arr[i] + "y"` funcionaba — el mismo valor con
// dos resultados según el orden de los operandos.
//
// Este helper centraliza la decisión en C (una llamada, sin ramificar el IR):
// con tag conocido convierte bien; con UNKNOWN conserva EXACTAMENTE el
// comportamiento previo (tratar el slot como int), así que un array no tagueado
// no cambia de conducta.
#include "strings.h"

nyx_string* nyx_string_from_tagged(int64_t value, int64_t tag, int64_t fallback_tag) {
    // Si el slot no está tagueado (array construido con push() sin tipo, o por
    // una vía no migrada), se usa el TIPO ESTÁTICO que el codegen conocía en el
    // call-site. Sin esto, un `Array<String>` llenado con push() perdería el
    // tipo y volvería a imprimir el puntero como número — la regresión exacta
    // que este trabajo elimina.
    int64_t eff = (tag == NYX_TAG_UNKNOWN) ? fallback_tag : tag;
    switch (eff) {
        case NYX_TAG_STRING:
            // El slot guarda el puntero a un nyx_string: devolverlo tal cual.
            return (nyx_string*)(intptr_t)value;
        case NYX_TAG_FLOAT: {
            double d;
            memcpy(&d, &value, sizeof(double));   // los bits del double viven en el slot
            return nyx_string_from_float(d);
        }
        case NYX_TAG_BOOL:
            return nyx_string_from_cstr(value ? "true" : "false");
        case NYX_TAG_INT:
        case NYX_TAG_UNKNOWN:
        default:
            // UNKNOWN = comportamiento histórico (el slot se lee como entero).
            return nyx_string_from_int(value);
    }
}

// ===== ETAPA 4 SLOTS-TAG: BÚSQUEDA POR CONTENIDO =====
// contains/index_of históricos comparan slots i64 crudos: correcto para ints,
// pero para Strings compara PUNTEROS (dos strings con el mismo contenido no
// matchean salvo que estén internados). Estas variantes reciben además el tipo
// ESTÁTICO del needle: si el needle es String Y el slot está tagueado STRING,
// comparan contenido con nyx_string_equals. La igualdad cruda se chequea
// PRIMERO en todos los casos (mismo puntero = mismo string; ints intactos), y
// un slot sin tag jamás se dereferencia — degrada a la conducta histórica.

int64_t nyx_array_index_of_tagged(nyx_array_t* arr, int64_t value, int64_t needle_tag) {
    if (!arr) return -1;
    for (int64_t i = 0; i < arr->length; i++) {
        if (arr->data[i] == value) return i;
        if (needle_tag == NYX_TAG_STRING && arr->tags
            && arr->tags[i] == NYX_TAG_STRING
            && value != 0 && arr->data[i] != 0
            && nyx_string_equals((nyx_string*)(intptr_t)arr->data[i],
                                 (nyx_string*)(intptr_t)value)) {
            return i;
        }
    }
    return -1;
}

// ===== LECTURA TIPADA CHEQUEADA (residuo post-Etapa 4) =====
// `let s: String = a[0]` de un slot int era SEGV (inttoptr de 42) y
// `let f: float = a[0]` de un slot int devolvía bits reinterpretados EN
// SILENCIO. Con el tag del slot, la contradicción se diagnostica ORDENADA.
//
// Política: solo gatean los tags de VALOR INEQUÍVOCO (INT/FLOAT/BOOL/STRING)
// cuando ambos lados son definidos y difieren. UNKNOWN y los tags opacos
// (PTR/ARRAY/MAP) hacen passthrough — un array llenado por una vía sin tags
// (runtime C) conserva el comportamiento histórico, y un i64 que transporta
// un puntero re-empacado jamás gatea porque esas vías no taguean i64 opacos:
// en push, un i64 se taguea INT solo con evidencia positiva de que ES un
// entero — literal numérico, ancho LLVM menor a 64 bits, o tipo de elemento
// entero del receptor (ver push_tag_resolved en codegen).
//
// CORRECCIÓN (2026-07-30): la versión anterior de este comentario afirmaba
// que "un `Array` PELADO es donde viven los punteros opacos", y esa creencia
// causó un bug real: un `Array<int>` **inferido del primer literal** también
// los transporta, así que taguear por el tipo de elemento del receptor pisaba
// el tag verdadero del slot de origen y producía aborts espurios y salida
// silenciosamente incorrecta. La precedencia correcta, ya implementada en
// `push_tag_resolved`, es: tipo LLVM inequívoco > tag del slot de origen
// (cuando el arg es un índice) > tipo de elemento del receptor > UNKNOWN.
// No asumir que la ausencia de `<T>` es lo que distingue a los punteros.

// Escape hatch (espejo de NYX_BORROW): NYX_SLOT_CHECK=off desactiva el abort
// de las lecturas chequeadas y restaura el comportamiento histórico completo.
// Existe para (a) recuperación del bootstrap si una política de tagueo nueva
// resulta en falsos positivos (pasó en el desarrollo: 9/11 módulos), y (b) que
// un usuario mordido por un falso positivo tenga salida inmediata mientras
// reporta. getenv por llamada, como NYX_HTTP_MAX_BODY.
static int nyx_slot_check_off(void) {
    const char* v = getenv("NYX_SLOT_CHECK");
    return v && strcmp(v, "off") == 0;
}

static const char* nyx_tag_name(int64_t t) {
    switch (t) {
        case NYX_TAG_INT:    return "int";
        case NYX_TAG_STRING: return "String";
        case NYX_TAG_FLOAT:  return "float";
        case NYX_TAG_BOOL:   return "bool";
        case NYX_TAG_ARRAY:  return "Array";
        case NYX_TAG_MAP:    return "Map";
        case NYX_TAG_PTR:    return "puntero";
        default:             return "(sin tag)";
    }
}

int64_t nyx_array_get_checked(nyx_array_t* arr, int64_t index, int64_t expected_tag) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    nyx_array_bounds_check(arr, index);
    if (arr->tags) {
        int64_t t = (int64_t)arr->tags[index];
        int definite_slot = (t == NYX_TAG_INT || t == NYX_TAG_FLOAT
                             || t == NYX_TAG_BOOL || t == NYX_TAG_STRING);
        int definite_want = (expected_tag == NYX_TAG_INT || expected_tag == NYX_TAG_FLOAT
                             || expected_tag == NYX_TAG_BOOL || expected_tag == NYX_TAG_STRING);
        if (definite_slot && definite_want && t != expected_tag
            && !nyx_slot_check_off()) {
            fprintf(stderr,
                "💥 Runtime Error: el slot %" PRId64 " del Array contiene %s (valor %" PRId64 ")"
                " pero se leyó como %s — anota el tipo real o convertí explícito"
                " (string_to_int/float, from_int, ...); NYX_SLOT_CHECK=off lo desactiva\n",
                index, nyx_tag_name(t), arr->data[index], nyx_tag_name(expected_tag));
            exit(1);
        }
    }
    return arr->data[index];
}

// Lectura FLOAT chequeada. La semántica histórica de `let f: float = a[i]`
// sobre un slot int era sitofp (widening numérico 1 → 1.0 — CORRECTO, se
// preserva). El bug era el slot que guarda BITS de double: el sitofp los
// reinterpretaba (1.5 → 4.6e18). Con tag: FLOAT → bits (el fix); INT/BOOL →
// widening; STRING → abort (bits de un puntero = basura garantizada);
// UNKNOWN/opacos → widening histórico.
double nyx_slot_as_float_checked(nyx_array_t* arr, int64_t index) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    nyx_array_bounds_check(arr, index);
    int64_t v = arr->data[index];
    int64_t t = arr->tags ? (int64_t)arr->tags[index] : NYX_TAG_UNKNOWN;
    if (t == NYX_TAG_FLOAT) {
        double d;
        memcpy(&d, &v, sizeof(double));
        return d;
    }
    if (t == NYX_TAG_STRING && !nyx_slot_check_off()) {
        fprintf(stderr,
            "💥 Runtime Error: el slot %" PRId64 " del Array contiene String pero se leyó como float"
            " — usa string_to_float() para convertir; NYX_SLOT_CHECK=off lo desactiva\n", index);
        exit(1);
    }
    return (double)v;
}

// Tag ESTÁTICO de fallback (spec 2026-08-03, arco "la anotación manda").
// Tabla de decisión completa en runtime-arrays.h. La regla estructural que
// evita una quinta ronda de precedencias: st SOLO gana ante rt UNKNOWN.
double nyx_slot_as_float_st(nyx_array_t* arr, int64_t index, int64_t static_tag) {
    if (!arr) {
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    nyx_array_bounds_check(arr, index);
    int64_t v = arr->data[index];
    int64_t t = arr->tags ? (int64_t)arr->tags[index] : NYX_TAG_UNKNOWN;
    if (t == NYX_TAG_FLOAT) {
        double d;
        memcpy(&d, &v, sizeof(double));
        return d;
    }
    // Widening numérico int→float es una conversión CORRECTA, no una
    // adivinanza — se preserva aunque st diga FLOAT (rt conocido manda).
    if (t == NYX_TAG_INT || t == NYX_TAG_BOOL) {
        return (double)v;
    }
    if (t != NYX_TAG_UNKNOWN && !nyx_slot_check_off()) {
        // STRING/ARRAY/MAP/PTR: los bits de un puntero como float son basura
        // garantizada — abort ordenado en vez de silently-wrong.
        fprintf(stderr,
            "💥 Runtime Error [NYX2008]: el slot %" PRId64 " del Array contiene %s"
            " pero se leyó como float — anota el tipo real o convertí explícito"
            " (string_to_float, ...); NYX_SLOT_CHECK=off lo desactiva\n",
            index, nyx_tag_name(t));
        exit(1);
    }
    if (t == NYX_TAG_UNKNOWN && static_tag == NYX_TAG_FLOAT) {
        // La anotación manda: el receptor está DECLARADO Array<float>, el
        // slot no tiene tag (vía de escritura no migrada) → los slots de un
        // Array<float> guardan bits de double, no ints.
        double d;
        memcpy(&d, &v, sizeof(double));
        return d;
    }
    return (double)v;
}

void nyx_array_retag_unknown(nyx_array_t* arr, int64_t tag) {
    if (!arr || !arr->tags) return;
    if (tag <= NYX_TAG_UNKNOWN || tag > NYX_TAG_PTR) return;
    for (int64_t i = 0; i < arr->length; i++) {
        if (arr->tags[i] == NYX_TAG_UNKNOWN) {
            arr->tags[i] = (uint8_t)tag;
        }
    }
}

int64_t nyx_array_contains_tagged(nyx_array_t* arr, int64_t value, int64_t needle_tag) {
    if (!arr) {
        // espeja el manejo de NULL de nyx_array_contains
        fprintf(stderr, "💥 Runtime Error: Array es NULL\n");
        exit(1);
    }
    return nyx_array_index_of_tagged(arr, value, needle_tag) >= 0 ? 1 : 0;
}
