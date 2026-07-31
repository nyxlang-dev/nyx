// runtime/llama_api.h — subset curado de la API de llama.cpp (tag pinneado: b4689).
// COMPARTIDO por runtime/llama_adapter.c y tests/support/llama_stub/llama_stub.c —
// la consistencia adapter↔stub queda garantizada POR CONSTRUCCIÓN.
//
// Decisión de diseño (spec §2.2 + de-riesgo): los structs by-value de llama.h
// (llama_model_params / llama_context_params / llama_batch) se tratan como BLOBS
// OPACOS OVERSIZED. ABI-safe en AArch64 (AAPCS) y x86-64 (SysV): los agregados
// >16 bytes retornan por sret (el caller aloca el blob grande, el callee real
// escribe su tamaño real, menor) y se pasan by-value vía copia en memoria (el
// callee real lee solo su tamaño real del principio). El adapter NUNCA lee campos
// del blob, con UNA excepción documentada: n_ctx y n_batch son los DOS PRIMEROS
// uint32 de llama_context_params (layout estable desde 2023 — verificar contra el
// llama.h del tag en la demo real, ver scripts/llm-real-demo.sh).
#ifndef NYX_LLAMA_API_H
#define NYX_LLAMA_API_H

#include <stdint.h>
#include <stdbool.h>

typedef int32_t llama_token;

// Blobs opacos oversized (los structs reales son <=~128B; 512B da headroom).
typedef struct { unsigned char opaque[512]; } llama_mparams_blob;   // llama_model_params
typedef struct { unsigned char opaque[512]; } llama_cparams_blob;   // llama_context_params
typedef struct { unsigned char opaque[512]; } llama_batch_blob;     // llama_batch

// Punteros opacos reales
typedef struct llama_model   llama_model_t;
typedef struct llama_context llama_context_t;
typedef struct llama_vocab   llama_vocab_t;

// Firmas del subset (15 símbolos), como fn-ptr typedefs para dlsym:
typedef void               (*fn_backend_init)(void);
typedef llama_mparams_blob (*fn_model_default_params)(void);
typedef llama_model_t*     (*fn_model_load_from_file)(const char*, llama_mparams_blob);
typedef void               (*fn_model_free)(llama_model_t*);
typedef llama_cparams_blob (*fn_context_default_params)(void);
typedef llama_context_t*   (*fn_init_from_model)(llama_model_t*, llama_cparams_blob);
typedef void               (*fn_ctx_free)(llama_context_t*);
typedef const llama_vocab_t* (*fn_model_get_vocab)(const llama_model_t*);
typedef int32_t            (*fn_tokenize)(const llama_vocab_t*, const char*, int32_t,
                                          llama_token*, int32_t, bool, bool);
typedef int32_t            (*fn_decode)(llama_context_t*, llama_batch_blob);
typedef llama_batch_blob   (*fn_batch_get_one)(llama_token*, int32_t);
typedef float*             (*fn_get_logits_ith)(llama_context_t*, int32_t);
typedef int32_t            (*fn_vocab_n_tokens)(const llama_vocab_t*);
typedef int32_t            (*fn_token_to_piece)(const llama_vocab_t*, llama_token,
                                                char*, int32_t, int32_t, bool);
typedef bool               (*fn_vocab_is_eog)(const llama_vocab_t*, llama_token);

#endif
