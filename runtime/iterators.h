#ifndef NYX_ITERATORS_H
#define NYX_ITERATORS_H

#include <stdint.h>
#include "runtime-arrays.h"

// Iterator kinds
#define NYX_ITER_ARRAY     0
#define NYX_ITER_RANGE     1
#define NYX_ITER_MAP_A     2
#define NYX_ITER_FILTER    3
#define NYX_ITER_TAKE      4
#define NYX_ITER_SKIP      5
#define NYX_ITER_ENUMERATE 6
#define NYX_ITER_CHAIN     7

typedef struct {
    int64_t kind;
    void* source;       // array ptr OR source iterator ptr
    int64_t index;
    int64_t end;        // for range
    int64_t extra;      // inclusive flag for range, count for take/skip
    void* closure;      // i8* closure pair for map/filter
    void* source2;      // second iterator for chain
    int64_t skipped;    // whether skip has been applied
} NyxIterator;

// Constructors
NyxIterator* nyx_iter_from_array(nyx_array_t* arr);
NyxIterator* nyx_iter_from_range(int64_t start, int64_t end, int64_t inclusive);

// Core
int8_t* nyx_iter_next(NyxIterator* iter);

// Option helpers (produce same layout as codegen enum: {i64, i8*}*)
int8_t* nyx_option_some_val(int64_t val);
int8_t* nyx_option_none_val(void);

// Closure caller (matches codegen ABI: env first)
int64_t nyx_call_closure_i64(void* closure_pair, int64_t arg);

// Adapters
NyxIterator* nyx_iter_map(NyxIterator* source, void* closure);
NyxIterator* nyx_iter_filter(NyxIterator* source, void* closure);
NyxIterator* nyx_iter_take(NyxIterator* source, int64_t n);
NyxIterator* nyx_iter_skip(NyxIterator* source, int64_t n);
NyxIterator* nyx_iter_enumerate(NyxIterator* source);
NyxIterator* nyx_iter_chain(NyxIterator* first, NyxIterator* second);

// Terminals
nyx_array_t* nyx_iter_collect(NyxIterator* iter);
int64_t nyx_iter_fold(NyxIterator* iter, int64_t init, void* closure);
int64_t nyx_iter_sum(NyxIterator* iter);
int64_t nyx_iter_count(NyxIterator* iter);
int64_t nyx_iter_any(NyxIterator* iter, void* closure);
int64_t nyx_iter_all(NyxIterator* iter, void* closure);

#endif
