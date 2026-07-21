// llama_stub.c — libllama FALSA para CI (spec §2.4). Implementa los 15 símbolos
// del subset (mismo runtime/llama_api.h que el adapter → ABI consistente POR
// CONSTRUCCIÓN) con comportamiento enlatado DETERMINISTA:
//   tokenize: split por espacios → ids 3+i; vocab fake de hasta 64 palabras.
//   generación: eco cíclico de los tokens del prompt, 2*n_words tokens, luego EOG.
//   piece(id): la palabra original + " ".  EOG = id 2.
//   frees: contadores; un destructor imprime "STUB_FREES model=<n> ctx=<n>" a
//   stderr al salir — el harness exige model=1 ctx=1 (drop afín EXACTAMENTE 1 vez).
// Compilar: clang -shared -fPIC -I<repo>/runtime llama_stub.c -o libllama_stub.so
#include "llama_api.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define MAX_WORDS 64
#define WORD_MAX  64
#define EOG_ID    2

static char    s_words[MAX_WORDS][WORD_MAX];
static int32_t s_n_words = 0;
static llama_token s_prompt[MAX_WORDS];
static int32_t s_n_prompt = 0;
static int32_t s_gen_count = 0;
static float   s_logits[256];
static int     s_model_frees = 0;
static int     s_ctx_frees = 0;

// batch payload que viaja DENTRO del blob (solo el stub lo lee/escribe)
typedef struct { int32_t n_tokens; llama_token* tokens; } stub_batch;

__attribute__((destructor))
static void stub_report(void) {
    fprintf(stderr, "STUB_FREES model=%d ctx=%d\n", s_model_frees, s_ctx_frees);
}

void llama_backend_init(void) {}

llama_mparams_blob llama_model_default_params(void) {
    llama_mparams_blob b; memset(&b, 0, sizeof(b)); return b;
}

llama_model_t* llama_model_load_from_file(const char* path, llama_mparams_blob params) {
    (void)path; (void)params;
    return (llama_model_t*)malloc(8);   // marker opaco
}

void llama_model_free(llama_model_t* m) { if (m) { s_model_frees++; free(m); } }

llama_cparams_blob llama_context_default_params(void) {
    llama_cparams_blob b; memset(&b, 0, sizeof(b)); return b;
}

llama_context_t* llama_init_from_model(llama_model_t* m, llama_cparams_blob params) {
    (void)m;
    uint32_t n_ctx = ((uint32_t*)params.opaque)[0];   // el adapter lo seteó
    if (n_ctx == 0) return NULL;                       // sanity del contrato n_ctx
    return (llama_context_t*)malloc(8);
}

void llama_free(llama_context_t* c) { if (c) { s_ctx_frees++; free(c); } }

const llama_vocab_t* llama_model_get_vocab(const llama_model_t* m) {
    (void)m;
    static int dummy;
    return (const llama_vocab_t*)&dummy;
}

int32_t llama_tokenize(const llama_vocab_t* v, const char* text, int32_t len,
                       llama_token* out, int32_t max, bool add_special, bool parse_special) {
    (void)v; (void)add_special; (void)parse_special;
    s_n_words = 0;
    int32_t n = 0, i = 0;
    while (i < len && n < max && s_n_words < MAX_WORDS) {
        while (i < len && text[i] == ' ') i++;
        if (i >= len) break;
        int32_t start = i;
        while (i < len && text[i] != ' ') i++;
        int32_t wl = i - start;
        if (wl >= WORD_MAX) wl = WORD_MAX - 1;
        memcpy(s_words[s_n_words], text + start, wl);
        s_words[s_n_words][wl] = 0;
        out[n++] = 3 + s_n_words;
        s_n_words++;
    }
    return n;
}

llama_batch_blob llama_batch_get_one(llama_token* tokens, int32_t n_tokens) {
    llama_batch_blob b; memset(&b, 0, sizeof(b));
    stub_batch sb; sb.n_tokens = n_tokens; sb.tokens = tokens;
    memcpy(b.opaque, &sb, sizeof(sb));
    return b;
}

int32_t llama_decode(llama_context_t* c, llama_batch_blob b) {
    (void)c;
    stub_batch sb; memcpy(&sb, b.opaque, sizeof(sb));
    if (sb.n_tokens > 1) {              // batch del prompt → resetear la generación
        s_n_prompt = sb.n_tokens;
        for (int32_t i = 0; i < sb.n_tokens && i < MAX_WORDS; i++) s_prompt[i] = sb.tokens[i];
        s_gen_count = 0;
    }
    return 0;
}

float* llama_get_logits_ith(llama_context_t* c, int32_t i) {
    (void)c; (void)i;
    memset(s_logits, 0, sizeof(s_logits));
    llama_token chosen;
    if (s_n_prompt > 0 && s_gen_count < 2 * s_n_prompt) {
        chosen = s_prompt[s_gen_count % s_n_prompt];   // eco cíclico
    } else {
        chosen = EOG_ID;
    }
    s_gen_count++;
    s_logits[chosen] = 1.0f;
    return s_logits;
}

int32_t llama_vocab_n_tokens(const llama_vocab_t* v) { (void)v; return 256; }

int32_t llama_token_to_piece(const llama_vocab_t* v, llama_token t, char* buf,
                             int32_t len, int32_t lstrip, bool special) {
    (void)v; (void)lstrip; (void)special;
    if (t < 3 || t >= 3 + s_n_words) { if (len > 0) buf[0] = 0; return 0; }
    int32_t wl = (int32_t)strlen(s_words[t - 3]);
    if (wl + 1 >= len) wl = len - 2;
    memcpy(buf, s_words[t - 3], wl);
    buf[wl] = ' ';                      // separador
    return wl + 1;
}

bool llama_vocab_is_eog(const llama_vocab_t* v, llama_token t) {
    (void)v; return t == EOG_ID;
}
