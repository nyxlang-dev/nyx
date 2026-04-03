#include <gc.h>
#include <stdint.h>
#include <stdio.h>
#include "iterators.h"
#include "runtime-arrays.h"

// ===== Option helpers =====
// Layout: { i64 tag, i8* data } — same as codegen enum

int8_t* nyx_option_some_val(int64_t val) {
    int64_t* buf = GC_malloc(sizeof(int64_t) + sizeof(void*));
    buf[0] = 0;  // tag = Some
    int64_t* data = GC_malloc(sizeof(int64_t));
    *data = val;
    ((void**)buf)[1] = data;
    return (int8_t*)buf;
}

int8_t* nyx_option_none_val(void) {
    int64_t* buf = GC_malloc(sizeof(int64_t) + sizeof(void*));
    buf[0] = 1;  // tag = None
    ((void**)buf)[1] = NULL;
    return (int8_t*)buf;
}

// ===== Closure caller =====
// ABI: if env_ptr is NULL, call fn(arg); else call fn(env, arg)

int64_t nyx_call_closure_i64(void* closure_pair, int64_t arg) {
    void** pair = (void**)closure_pair;
    void* fn_ptr = pair[0];
    void* env_ptr = pair[1];
    if (env_ptr == NULL) {
        return ((int64_t (*)(int64_t))fn_ptr)(arg);
    } else {
        return ((int64_t (*)(void*, int64_t))fn_ptr)(env_ptr, arg);
    }
}

// Bool-safe closure caller: masks result to low byte
// Needed because Nyx bool functions return i1 (only low byte is defined)
static int64_t nyx_call_closure_bool(void* closure_pair, int64_t arg) {
    return nyx_call_closure_i64(closure_pair, arg) & 0xFF;
}

// ===== Constructors =====

NyxIterator* nyx_iter_from_array(nyx_array_t* arr) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_ARRAY;
    it->source = arr;
    it->index = 0;
    it->end = 0;
    it->extra = 0;
    it->closure = NULL;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_from_range(int64_t start, int64_t end, int64_t inclusive) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_RANGE;
    it->source = NULL;
    it->index = start;
    it->end = end;
    it->extra = inclusive;
    it->closure = NULL;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

// ===== Core: next =====

int8_t* nyx_iter_next(NyxIterator* iter) {
    switch (iter->kind) {
        case NYX_ITER_ARRAY: {
            nyx_array_t* arr = (nyx_array_t*)iter->source;
            if (iter->index >= arr->length) {
                return nyx_option_none_val();
            }
            int64_t val = nyx_array_get(arr, iter->index);
            iter->index++;
            return nyx_option_some_val(val);
        }
        case NYX_ITER_RANGE: {
            int64_t inclusive = iter->extra;
            if (inclusive) {
                if (iter->index > iter->end) return nyx_option_none_val();
            } else {
                if (iter->index >= iter->end) return nyx_option_none_val();
            }
            int64_t val = iter->index;
            iter->index++;
            return nyx_option_some_val(val);
        }
        case NYX_ITER_MAP_A: {
            int8_t* inner = nyx_iter_next((NyxIterator*)iter->source);
            int64_t tag = *(int64_t*)inner;
            if (tag != 0) return inner;  // pass through None
            int64_t* data = *(int64_t**)((char*)inner + sizeof(int64_t));
            int64_t val = *data;
            int64_t mapped = nyx_call_closure_i64(iter->closure, val);
            return nyx_option_some_val(mapped);
        }
        case NYX_ITER_FILTER: {
            while (1) {
                int8_t* inner = nyx_iter_next((NyxIterator*)iter->source);
                int64_t tag = *(int64_t*)inner;
                if (tag != 0) return inner;  // None — exhausted
                int64_t* data = *(int64_t**)((char*)inner + sizeof(int64_t));
                int64_t val = *data;
                int64_t keep = nyx_call_closure_bool(iter->closure, val);
                if (keep) return nyx_option_some_val(val);
            }
        }
        case NYX_ITER_TAKE: {
            if (iter->extra <= 0) return nyx_option_none_val();
            iter->extra--;
            return nyx_iter_next((NyxIterator*)iter->source);
        }
        case NYX_ITER_SKIP: {
            if (!iter->skipped) {
                iter->skipped = 1;
                int64_t to_skip = iter->extra;
                for (int64_t i = 0; i < to_skip; i++) {
                    int8_t* inner = nyx_iter_next((NyxIterator*)iter->source);
                    int64_t tag = *(int64_t*)inner;
                    if (tag != 0) return inner;  // already exhausted
                }
            }
            return nyx_iter_next((NyxIterator*)iter->source);
        }
        case NYX_ITER_ENUMERATE: {
            // Returns the value from source, but index tracks position
            // User accesses index separately if needed
            int8_t* inner = nyx_iter_next((NyxIterator*)iter->source);
            int64_t tag = *(int64_t*)inner;
            if (tag != 0) return inner;
            iter->index++;
            return inner;
        }
        case NYX_ITER_CHAIN: {
            int8_t* inner = nyx_iter_next((NyxIterator*)iter->source);
            int64_t tag = *(int64_t*)inner;
            if (tag == 0) return inner;  // first iterator still has values
            // First exhausted, try second
            if (iter->source2 != NULL) {
                return nyx_iter_next((NyxIterator*)iter->source2);
            }
            return nyx_option_none_val();
        }
    }
    return nyx_option_none_val();
}

// ===== Adapters =====

NyxIterator* nyx_iter_map(NyxIterator* source, void* closure) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_MAP_A;
    it->source = source;
    it->index = 0;
    it->end = 0;
    it->extra = 0;
    it->closure = closure;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_filter(NyxIterator* source, void* closure) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_FILTER;
    it->source = source;
    it->index = 0;
    it->end = 0;
    it->extra = 0;
    it->closure = closure;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_take(NyxIterator* source, int64_t n) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_TAKE;
    it->source = source;
    it->index = 0;
    it->end = 0;
    it->extra = n;
    it->closure = NULL;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_skip(NyxIterator* source, int64_t n) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_SKIP;
    it->source = source;
    it->index = 0;
    it->end = 0;
    it->extra = n;
    it->closure = NULL;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_enumerate(NyxIterator* source) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_ENUMERATE;
    it->source = source;
    it->index = 0;
    it->end = 0;
    it->extra = 0;
    it->closure = NULL;
    it->source2 = NULL;
    it->skipped = 0;
    return it;
}

NyxIterator* nyx_iter_chain(NyxIterator* first, NyxIterator* second) {
    NyxIterator* it = GC_malloc(sizeof(NyxIterator));
    it->kind = NYX_ITER_CHAIN;
    it->source = first;
    it->index = 0;
    it->end = 0;
    it->extra = 0;
    it->closure = NULL;
    it->source2 = second;
    it->skipped = 0;
    return it;
}

// ===== Terminals =====

nyx_array_t* nyx_iter_collect(NyxIterator* iter) {
    nyx_array_t* arr = nyx_array_new(8);
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) break;
        int64_t* data = *(int64_t**)((char*)opt + sizeof(int64_t));
        nyx_array_push(arr, *data);
    }
    return arr;
}

int64_t nyx_iter_fold(NyxIterator* iter, int64_t init, void* closure) {
    int64_t acc = init;
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) break;
        int64_t* data = *(int64_t**)((char*)opt + sizeof(int64_t));
        // fold closure takes (acc, val) — we pack as two separate calls
        // Actually, fold closure is fn(acc, val) -> acc
        // We need a 2-arg closure caller
        void** pair = (void**)closure;
        void* fn_ptr = pair[0];
        void* env_ptr = pair[1];
        if (env_ptr == NULL) {
            acc = ((int64_t (*)(int64_t, int64_t))fn_ptr)(acc, *data);
        } else {
            acc = ((int64_t (*)(void*, int64_t, int64_t))fn_ptr)(env_ptr, acc, *data);
        }
    }
    return acc;
}

int64_t nyx_iter_sum(NyxIterator* iter) {
    int64_t total = 0;
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) break;
        int64_t* data = *(int64_t**)((char*)opt + sizeof(int64_t));
        total += *data;
    }
    return total;
}

int64_t nyx_iter_count(NyxIterator* iter) {
    int64_t n = 0;
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) break;
        n++;
    }
    return n;
}

int64_t nyx_iter_any(NyxIterator* iter, void* closure) {
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) return 0;  // exhausted, none matched
        int64_t* data = *(int64_t**)((char*)opt + sizeof(int64_t));
        int64_t result = nyx_call_closure_bool(closure, *data);
        if (result) return 1;
    }
}

int64_t nyx_iter_all(NyxIterator* iter, void* closure) {
    while (1) {
        int8_t* opt = nyx_iter_next(iter);
        int64_t tag = *(int64_t*)opt;
        if (tag != 0) return 1;  // exhausted, all matched
        int64_t* data = *(int64_t**)((char*)opt + sizeof(int64_t));
        int64_t result = nyx_call_closure_bool(closure, *data);
        if (!result) return 0;
    }
}
