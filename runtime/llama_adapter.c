// runtime/llama_adapter.c — bindings llama.cpp para Nyx (spec 2026-07-17).
// Patrón sqlite_adapter.c: dlopen lazy + dlsym + API plana nyx_llm_*.
// La memoria del modelo/ctx vive 100% del lado C (malloc de llama.cpp) —
// jamás entra al heap Boehm; liberación determinista vía el Drop afín de
// std/llm.nx (nyx_llm_free). Un solo generate a la vez por handle (sin locks,
// como llama.cpp por contexto). Tag de llama.h pinneado: b4689 (ver llama_api.h).

#include "strings.h"
#include "llama_api.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <dlfcn.h>

static void* g_lib = NULL;
static int   g_loaded = 0;              // 0=no, 1=ok, 2=falló
static char  g_libpath[512] = "";
static char  g_err[512] = "";

static fn_backend_init          g_backend_init = NULL;
static fn_model_default_params  g_mparams = NULL;
static fn_model_load_from_file  g_load = NULL;
static fn_model_free            g_model_free = NULL;
static fn_context_default_params g_cparams = NULL;
static fn_init_from_model       g_ctx_new = NULL;
static fn_ctx_free              g_ctx_free = NULL;
static fn_model_get_vocab       g_get_vocab = NULL;
static fn_tokenize              g_tokenize = NULL;
static fn_decode                g_decode = NULL;
static fn_batch_get_one         g_batch1 = NULL;
static fn_get_logits_ith        g_logits = NULL;
static fn_vocab_n_tokens        g_n_vocab = NULL;
static fn_token_to_piece        g_piece = NULL;
static fn_vocab_is_eog          g_is_eog = NULL;

typedef struct { llama_model_t* model; llama_context_t* ctx; } nyx_llm_handle;

static void set_err(const char* msg) {
    snprintf(g_err, sizeof(g_err), "%s", msg);
}

// dlsym con error POR NOMBRE (spec §2.2: caza drift de ABI entre versiones).
static void* llm_sym(const char* name) {
    void* p = dlsym(g_lib, name);
    if (!p) {
        snprintf(g_err, sizeof(g_err),
                 "llama adapter: missing symbol '%s' in %s (ABI drift? pinned tag: b4689)",
                 name, g_libpath);
        g_loaded = 2;
    }
    return p;
}

static int llm_load_lib(void) {
    if (g_loaded == 1) return 0;
    if (g_loaded == 2) return -1;
    const char* env = getenv("NYX_LLAMA_SO");
    const char* path = (env && env[0]) ? env : "libllama.so";
    snprintf(g_libpath, sizeof(g_libpath), "%s", path);
    g_lib = dlopen(path, RTLD_LAZY | RTLD_GLOBAL);
    if (!g_lib) {
        snprintf(g_err, sizeof(g_err),
                 "llama adapter: cannot dlopen '%s' (%s) — set NYX_LLAMA_SO or install libllama",
                 path, dlerror());
        g_loaded = 2;
        return -1;
    }
    g_backend_init = (fn_backend_init)         llm_sym("llama_backend_init");
    g_mparams      = (fn_model_default_params) llm_sym("llama_model_default_params");
    g_load         = (fn_model_load_from_file) llm_sym("llama_model_load_from_file");
    g_model_free   = (fn_model_free)           llm_sym("llama_model_free");
    g_cparams      = (fn_context_default_params)llm_sym("llama_context_default_params");
    g_ctx_new      = (fn_init_from_model)      llm_sym("llama_init_from_model");
    g_ctx_free     = (fn_ctx_free)             llm_sym("llama_free");
    g_get_vocab    = (fn_model_get_vocab)      llm_sym("llama_model_get_vocab");
    g_tokenize     = (fn_tokenize)             llm_sym("llama_tokenize");
    g_decode       = (fn_decode)               llm_sym("llama_decode");
    g_batch1       = (fn_batch_get_one)        llm_sym("llama_batch_get_one");
    g_logits       = (fn_get_logits_ith)       llm_sym("llama_get_logits_ith");
    g_n_vocab      = (fn_vocab_n_tokens)       llm_sym("llama_vocab_n_tokens");
    g_piece        = (fn_token_to_piece)       llm_sym("llama_token_to_piece");
    g_is_eog       = (fn_vocab_is_eog)         llm_sym("llama_vocab_is_eog");
    if (g_loaded == 2) return -1;   // algún símbolo faltó (g_err ya tiene el nombre)
    g_backend_init();
    g_loaded = 1;
    return 0;
}

// nyx_llm_last_error() -> String  (vacío = sin error)
nyx_string* nyx_llm_last_error(void) {
    return nyx_string_from_cstr(g_err);
}

// nyx_llm_open(path: String, n_ctx: int) -> *i8   (NULL si falla; ver last_error)
void* nyx_llm_open(nyx_string* path, int64_t n_ctx) {
    g_err[0] = 0;
    if (llm_load_lib() < 0) return NULL;
    if (!path || !path->data || path->length == 0) { set_err("llama adapter: empty model path"); return NULL; }
    llama_mparams_blob mp = g_mparams();
    llama_model_t* model = g_load(path->data, mp);
    if (!model) { set_err("llama adapter: failed to load model (bad path or corrupt GGUF)"); return NULL; }
    llama_cparams_blob cp = g_cparams();
    // ÚNICA lectura/escritura de campos de blob (ver llama_api.h): n_ctx y
    // n_batch son los dos primeros uint32 de llama_context_params.
    if (n_ctx < 8) n_ctx = 8;
    ((uint32_t*)cp.opaque)[0] = (uint32_t)n_ctx;   // n_ctx
    ((uint32_t*)cp.opaque)[1] = (uint32_t)n_ctx;   // n_batch (>= tokens del prompt)
    llama_context_t* ctx = g_ctx_new(model, cp);
    if (!ctx) { g_model_free(model); set_err("llama adapter: failed to create context"); return NULL; }
    nyx_llm_handle* h = (nyx_llm_handle*)malloc(sizeof(nyx_llm_handle));
    h->model = model;
    h->ctx = ctx;
    return (void*)h;
}

// nyx_llm_generate(h, prompt, max_tokens, cb) -> String
// Greedy argmax. cb: void(*)(const char*) o NULL — se invoca por cada piece
// (streaming C→Nyx vía c_fn_ptr). Devuelve SIEMPRE un nyx_string (vacío en
// fallo, con last_error poblado) — nunca NULL, para no romper el ABI String.
nyx_string* nyx_llm_generate(void* hv, nyx_string* prompt, int64_t max_tokens, void* cb) {
    g_err[0] = 0;
    typedef void (*piece_cb)(const char*);
    if (!hv) { set_err("llama adapter: null handle"); return nyx_string_from_cstr(""); }
    nyx_llm_handle* h = (nyx_llm_handle*)hv;
    const llama_vocab_t* vocab = g_get_vocab(h->model);
    int32_t n_vocab = g_n_vocab(vocab);

    // tokenizar el prompt
    int32_t cap = 4096;
    llama_token* toks = (llama_token*)malloc(sizeof(llama_token) * cap);
    int32_t n = g_tokenize(vocab, prompt ? prompt->data : "", prompt ? (int32_t)prompt->length : 0,
                           toks, cap, true, true);
    if (n <= 0) { free(toks); set_err("llama adapter: tokenize failed"); return nyx_string_from_cstr(""); }

    llama_batch_blob batch = g_batch1(toks, n);
    if (g_decode(h->ctx, batch) != 0) { free(toks); set_err("llama adapter: decode(prompt) failed"); return nyx_string_from_cstr(""); }

    // buffer de salida growable
    int64_t out_cap = 1024, out_len = 0;
    char* out = (char*)malloc(out_cap);

    llama_token cur = 0;
    for (int64_t i = 0; i < max_tokens; i++) {
        float* logits = g_logits(h->ctx, -1);
        if (!logits) { set_err("llama adapter: null logits"); break; }
        // greedy argmax
        int32_t best = 0;
        float best_v = logits[0];
        for (int32_t t = 1; t < n_vocab; t++) {
            if (logits[t] > best_v) { best_v = logits[t]; best = t; }
        }
        if (g_is_eog(vocab, best)) break;
        char piece[512];
        int32_t plen = g_piece(vocab, best, piece, (int32_t)sizeof(piece) - 1, 0, true);
        if (plen < 0) { set_err("llama adapter: token_to_piece failed"); break; }
        piece[plen] = 0;
        if (out_len + plen + 1 > out_cap) {
            out_cap = (out_len + plen + 1) * 2;
            out = (char*)realloc(out, out_cap);
        }
        memcpy(out + out_len, piece, plen);
        out_len += plen;
        if (cb) ((piece_cb)cb)(piece);
        cur = best;
        batch = g_batch1(&cur, 1);
        if (g_decode(h->ctx, batch) != 0) { set_err("llama adapter: decode(step) failed"); break; }
    }
    free(toks);
    nyx_string* result = nyx_string_from_ptr(out, out_len);   // binary-safe (length-based); nyx_string_from_ptr copia (GC_malloc_atomic+memcpy), free(out) es correcto
    free(out);
    return result;
}

// nyx_llm_free(h) — libera ctx + model + handle. Idempotente ante NULL.
void nyx_llm_free(void* hv) {
    if (!hv) return;
    nyx_llm_handle* h = (nyx_llm_handle*)hv;
    if (h->ctx)   g_ctx_free(h->ctx);
    if (h->model) g_model_free(h->model);
    free(h);
}
