// ============================================
// RUNTIME.C - Runtime de Nyx v0.8.1
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <unistd.h>
#ifndef __wasi__
// WASI: sin señales, sin setjmp/longjmp (sjlj no estándar), sin ioctl.
// EN: WASI has no signals, no setjmp/longjmp (sjlj not standardized), no ioctl.
#include <signal.h>
#include <setjmp.h>
#include <sys/ioctl.h>
#endif
#include <gc.h>  // Boehm GC (en wasm32-wasi: shim runtime/wasi/gc.h vía -Iruntime/wasi)
#include "strings.h"

// ===== INICIALIZACIÓN =====

// A6 (friction-browser): OOM ORDENADO en vez de SEGV bajo presión de allocación.
// Boehm invoca GC_oom_fn cuando NO puede satisfacer una petición (heap agotado o
// tope GC_MAXIMUM_HEAP_SIZE alcanzado) *antes* de devolver NULL al llamador. El
// runtime de strings/maps/etc. deref-eaba ese NULL sin chequear → SIGSEGV seco
// (sin traza, sin mensaje) — el crash que reportó [dogfooding:friction-browser]
// con ~272k strings tiny vivas por ronda. Interceptando en este único punto de
// choque, CUALQUIER alloc site (strings.c, arrays, maps, iterators…) degrada a un
// abort diagnosticable en vez de un deref de puntero nulo.
// _exit (no exit): Boehm tiene el lock de allocación tomado al llamar aquí; correr
// atexit handlers o flushes que reintenten allocar podría reentrar el GC y colgar.
// stderr es sin buffer, pero fflush explícito garantiza que el mensaje salga.
// EN: ordered OOM instead of raw SIGSEGV. Boehm calls GC_oom_fn (with the alloc
// lock held) before returning NULL; our string/map runtime dereferenced that NULL
// unchecked → segfault. Aborting here turns any exhausted alloc into a diagnostic.
static void* nyx_gc_oom_handler(size_t bytes_requested) {
    fprintf(stderr,
        "\xF0\x9F\x92\xA5 Runtime Error: out of memory (GC heap exhausted) "
        "requesting %zu bytes\n"
        "   Error de ejecución: memoria agotada (heap del GC) al pedir %zu bytes\n"
        "   Hint: demasiadas allocaciones vivas a la vez — procesá en bloques, o "
        "ajustá el tope con GC_MAXIMUM_HEAP_SIZE.\n",
        bytes_requested, bytes_requested);
    fflush(stderr);
    _exit(1);
    return NULL;  // inalcanzable — placa el prototipo GC_oom_func
}

// Constructor: instala el OOM handler ANTES de main. Necesario porque el `main`
// generado por el codegen NO llama a nyx_runtime_init (el GC arranca lazy en la
// primera allocación) — sin esto, GC_set_oom_fn nunca corre y un heap agotado
// devuelve NULL con el oom_fn default, que el runtime deref-ea (SIGSEGV seco).
// Correr como constructor lo instala sin tocar el codegen (fix runtime-only, sin
// fixed point). GC_INIT es idempotente y este es el lugar recomendado por Boehm
// para inicializar (thread principal, antes de crear threads). NO fijamos aquí
// max_heap_size / free_space_divisor / incremental: eso cambiaría el techo/perfil
// de memoria de TODOS los binarios (gateway, kv…) y excede el alcance de A6 —
// el tope sigue siendo tuneable vía el env GC_MAXIMUM_HEAP_SIZE que Boehm ya lee.
__attribute__((constructor))
static void nyx_gc_install_oom_handler(void) {
    GC_INIT();
    GC_set_oom_fn(nyx_gc_oom_handler);
}

// Retenido para llamadas explícitas (hoy sin call sites). Aplica el tuning de GC
// que originalmente se pensó para el server (cap, divisor, incremental). El OOM
// handler ya lo instaló el constructor de arriba; se re-afirma acá por si algún
// entry point lo invoca en el futuro.
void nyx_runtime_init() {
    GC_INIT();
    GC_set_oom_fn(nyx_gc_oom_handler);
    // Collect less frequently: keep more free space before triggering GC
    GC_set_free_space_divisor(2);
    // Cap heap at 512MB to avoid unbounded growth — salvo que el usuario fije
    // GC_MAXIMUM_HEAP_SIZE (Boehm ya lo aplicó en su init). Antes este override
    // incondicional habría pisado esa palanca.
    if (!getenv("GC_MAXIMUM_HEAP_SIZE")) {
        GC_set_max_heap_size(512 * 1024 * 1024);
    }
    // Incremental GC — shorter pauses for server workloads
    GC_enable_incremental();
}

// ===== FUNCIONES DE IMPRESIÓN =====

void nyx_print_int(int64_t value) {
    printf("%" PRId64 "\n", value);
}

void nyx_print_float(double value) {
    char buffer[64];
    snprintf(buffer, sizeof(buffer), "%g", value);
    // Ensure float always has decimal point (e.g., 42.0 not 42).
    // Bounded append of ".0" — avoids unbounded strcat.
    if (strchr(buffer, '.') == NULL && strchr(buffer, 'e') == NULL && strchr(buffer, 'E') == NULL) {
        size_t blen = strlen(buffer);
        if (blen + 3 <= sizeof(buffer)) {
            buffer[blen] = '.';
            buffer[blen + 1] = '0';
            buffer[blen + 2] = '\0';
        }
    }
    printf("%s\n", buffer);
}

void nyx_print_string(const char* str) {
    printf("%s\n", str);
}

void nyx_print_bool(int value) {
    printf("%s\n", value ? "true" : "false");
}

// C3 (2026-08-11, fricción ERP/serve): esta fn era DOS llamadas stdio
// (printf "%s" + printf "\n") y fue citada por un reporte como "print no es
// line-atomic". El diagnóstico era INCORRECTO en dos niveles: (1) esta fn es
// CÓDIGO MUERTO — codegen emite nyx_print_string (un solo printf, atómico
// bajo el lock de stream de glibc) para print(s); (2) verificación empírica
// 2026-08-11: 8 threads × 500 prints concurrentes = 4000/4000 líneas
// intactas, cero intercaladas. Se deja single-write igual (una llamada, por
// longitud — NUL-safe) para que no vuelva a inducir el mal diagnóstico ni
// muerda si algo la linkea algún día. El flush ante pipes (journald) sigue
// siendo responsabilidad del caller: term_write + term_flush.
void nyx_print_hstring(nyx_string* str) {
    if (!str) {
        fwrite("(null)\n", 1, 7, stdout);
        return;
    }
    size_t len = (size_t)str->length;
    char stack_buf[1024];
    char* buf = (len + 1 <= sizeof(stack_buf)) ? stack_buf
                                               : (char*)GC_MALLOC_ATOMIC(len + 1);
    memcpy(buf, str->data, len);
    buf[len] = '\n';
    fwrite(buf, 1, len + 1, stdout);
}

// Imprime sin newline final (útil para prompts en el REPL)
void nyx_print_no_newline(nyx_string* str) {
    if (str && str->data) {
        fputs(str->data, stdout);
        fflush(stdout);
    }
}

// Escribe a stdout SIN flush — para render bufferizado (un frame = un write).
// fwrite con length explícito (contrato strings=bytes: puede haber cualquier byte).
void nyx_term_write(nyx_string* str) {
    if (str && str->data && str->length > 0) {
        fwrite(str->data, 1, (size_t)str->length, stdout);
    }
}

void nyx_term_flush(void) {
    fflush(stdout);
}

// Lee una línea de stdin; retorna ":EOF:" en EOF
// stdin_eof() — la señal INEQUÍVOCA de fin de stdin (fricción MCP-stdio,
// 2026-08-06): el sentinel ":EOF:" de read_line es ambiguo con una línea
// literal. feof(stdin) se activa tras la LECTURA que tocó el EOF — el patrón
// es leer y DESPUÉS preguntar.
int64_t nyx_stdin_eof() {
    return feof(stdin) ? 1 : 0;
}

nyx_string* nyx_read_line() {
    char buf[4096];
    if (fgets(buf, sizeof(buf), stdin) == NULL) {
        return nyx_string_from_cstr(":EOF:");
    }
    // Strip trailing newline
    size_t len = strlen(buf);
    if (len > 0 && buf[len-1] == '\n') {
        buf[len-1] = '\0';
        len--;
    }
    if (len > 0 && buf[len-1] == '\r') {
        buf[len-1] = '\0';
    }
    return nyx_string_from_cstr(buf);
}


// ===== FUNCIONES DE CONVERSIÓN =====

nyx_string* nyx_int_to_string(int64_t value) {
    return nyx_string_from_int(value);
}

nyx_string* nyx_float_to_string(double value) {
    return nyx_string_from_float(value);
}

int64_t nyx_string_parse_int(nyx_string* str) {
    return nyx_string_to_int(str);
}

double nyx_string_parse_float(nyx_string* str) {
    return nyx_string_to_float(str);
}


// ===== FORMAT STRINGS =====

// format("Hello {}, age {}", args_array) where args_array contains nyx_string* values
nyx_string* nyx_format(nyx_string* fmt, nyx_array_t* args) {
    if (!fmt || !fmt->data) return nyx_string_from_cstr("");

    const char* src = fmt->data;
    size_t src_len = fmt->length;

    // Calculate output size estimate
    size_t est_size = src_len * 2 + 128;
    char* buf = GC_MALLOC(est_size);
    size_t buf_pos = 0;
    size_t arg_idx = 0;

    for (size_t i = 0; i < src_len; i++) {
        // Ensure buffer space for one char
        if (buf_pos + 1 >= est_size) {
            est_size *= 2;
            char* new_buf = GC_MALLOC(est_size);
            memcpy(new_buf, buf, buf_pos);
            buf = new_buf;
        }
        if (src[i] == '{') {
            // {{ — escaped literal '{'
            if (i + 1 < src_len && src[i+1] == '{') {
                buf[buf_pos++] = '{';
                i++; // skip second '{'
                continue;
            }
            // Find matching '}' — handles both {} and {:spec}
            size_t j = i + 1;
            while (j < src_len && src[j] != '}') j++;
            if (j < src_len) {
                // Placeholder found — substitute with next arg
                if (args && arg_idx < (size_t)args->length) {
                    nyx_string* arg_str = (nyx_string*)((void**)args->data)[arg_idx];
                    if (arg_str && arg_str->data) {
                        size_t need = buf_pos + arg_str->length + 64;
                        if (need > est_size) {
                            est_size = need * 2;
                            char* new_buf = GC_MALLOC(est_size);
                            memcpy(new_buf, buf, buf_pos);
                            buf = new_buf;
                        }
                        memcpy(buf + buf_pos, arg_str->data, arg_str->length);
                        buf_pos += arg_str->length;
                    }
                    arg_idx++;
                }
                i = j; // skip to '}'
            } else {
                // No closing '}' — emit '{' literally
                buf[buf_pos++] = src[i];
            }
        } else if (src[i] == '}' && i + 1 < src_len && src[i+1] == '}') {
            // }} — escaped literal '}'
            buf[buf_pos++] = '}';
            i++; // skip second '}'
        } else {
            buf[buf_pos++] = src[i];
        }
    }
    buf[buf_pos] = '\0';

    nyx_string* result = GC_MALLOC(sizeof(nyx_string));
    result->data = buf;
    result->length = buf_pos;
    result->capacity = est_size;
    return result;
}

// ===== FORMAT SPECIFIERS =====

// {:x} — hex lowercase
nyx_string* nyx_int_to_hex(int64_t n) {
    char buf[32];
    snprintf(buf, sizeof(buf), "%llx", (unsigned long long)n);
    return nyx_string_from_cstr(buf);
}

// {:X} — hex uppercase
nyx_string* nyx_int_to_hex_upper(int64_t n) {
    char buf[32];
    snprintf(buf, sizeof(buf), "%llX", (unsigned long long)n);
    return nyx_string_from_cstr(buf);
}

// {:o} — octal
nyx_string* nyx_int_to_oct(int64_t n) {
    char buf[32];
    snprintf(buf, sizeof(buf), "%llo", (unsigned long long)n);
    return nyx_string_from_cstr(buf);
}

// {:b} — binary
nyx_string* nyx_int_to_bin(int64_t n) {
    if (n == 0) return nyx_string_from_cstr("0");
    char buf[65]; int pos = 64; buf[64] = '\0';
    uint64_t u = (uint64_t)n;
    while (u > 0) { buf[--pos] = '0' + (u & 1); u >>= 1; }
    return nyx_string_from_cstr(buf + pos);
}

// {:.Nf} — float with precision N (prec_str = "2" for "%.2lf")
nyx_string* nyx_float_to_prec(double f, nyx_string* prec_str) {
    int prec = prec_str ? (int)atoi(prec_str->data) : 6;
    char fmt[16], buf[64];
    snprintf(fmt, sizeof(fmt), "%%.%dlf", prec);
    snprintf(buf, sizeof(buf), fmt, f);
    return nyx_string_from_cstr(buf);
}

// {:Nd} or {:0Nd} — integer with width spec string (e.g. "5" or "05")
nyx_string* nyx_int_to_width(int64_t n, nyx_string* width_str) {
    if (!width_str || !width_str->data) return nyx_string_from_cstr("");
    const char* s = width_str->data;
    int zero_pad = (s[0] == '0') ? 1 : 0;
    int width = (int)atoi(s);
    char fmt[16], buf[64];
    if (zero_pad) snprintf(fmt, sizeof(fmt), "%%0%dlld", width);
    else          snprintf(fmt, sizeof(fmt), "%%%dlld",  width);
    snprintf(buf, sizeof(buf), fmt, n);
    return nyx_string_from_cstr(buf);
}

// Ancla la dirección de un alloca para que mem2reg NO lo promueva a registro:
// los locals modificados entre setjmp y longjmp quedan indeterminados tras el
// longjmp si viven en registros (clobbering clásico; returns_twice no alcanza
// con -O2). El codegen llama esto por cada var viva antes del setjmp de un try.
// EN: opaque escape hatch — keeps allocas in memory across setjmp/longjmp.
void nyx_var_anchor(void* p) { (void)p; }

// ===== TRY-CATCH EXCEPTION HANDLING =====

#define NYX_TRY_STACK_MAX 64

static _Thread_local int __nyx_try_depth = 0;
static _Thread_local nyx_string* __nyx_exception_msg = NULL;

#ifndef __wasi__
static _Thread_local jmp_buf __nyx_try_stack[NYX_TRY_STACK_MAX];

// Push a jmp_buf onto the try stack, return pointer for setjmp
void* nyx_try_push() {
    if (__nyx_try_depth >= NYX_TRY_STACK_MAX) {
        fprintf(stderr, "panic: try-catch nesting too deep\n");
        exit(1);
    }
    return (void*)&__nyx_try_stack[__nyx_try_depth++];
}

// Pop the try stack after successful try block completion
void nyx_try_pop() {
    if (__nyx_try_depth > 0) {
        __nyx_try_depth--;
    }
}

// Throw an exception (longjmp to nearest try block)
void nyx_throw(nyx_string* msg) {
    if (__nyx_try_depth > 0) {
        __nyx_exception_msg = msg;
        longjmp(__nyx_try_stack[--__nyx_try_depth], 1);
    } else {
        fprintf(stderr, "uncaught exception: %.*s\n", (int)msg->length, msg->data);
        exit(1);
    }
}
#else
// WASI: sin setjmp/longjmp → try/catch no soportado; fail-fast con mensaje claro.
// EN: no setjmp/longjmp on WASI → try/catch unsupported; fail fast with a clear message.
void* nyx_try_push() {
    fprintf(stderr, "error: try/catch is not supported on wasm32-wasi\n");
    exit(1);
}

void nyx_try_pop() {}

void nyx_throw(nyx_string* msg) {
    fprintf(stderr, "uncaught exception: %.*s\n", (int)msg->length, msg->data);
    exit(1);
}
#endif

// Get the exception message after catching
nyx_string* nyx_get_exception() {
    return __nyx_exception_msg;
}

// ===== PANIC =====

void nyx_panic(nyx_string* msg) {
    if (__nyx_try_depth > 0) {
        // Inside a try block: throw instead of abort
        nyx_throw(msg);
    } else {
        fprintf(stderr, "panic: %.*s\n", (int)msg->length, msg->data);
        exit(1);
    }
}

// ===== TEST FRAMEWORK =====

// Global flag used by assert to signal test failure
int64_t __nyx_test_failed = 0;

// v0.14: 1 cuando corre el test runner generado por `nyx test` (lo setea el
// main del runner). En ese modo un assert fallido NO aborta — marca el flag
// y el runner reporta por-test y termina con exit 1. Fuera del runner, un
// assert fallido ABORTA con exit(1): antes solo imprimía y seguía (exit 0),
// así suites .nx rotas se veían verdes (causa del off-by-8 invisible).
int64_t __nyx_test_mode = 0;

// Assert: si condition es false, imprime mensaje, marca el fallo y aborta
// (salvo en test mode — ver __nyx_test_mode).
void nyx_assert_fail(const char* msg) {
    fprintf(stderr, "  ASSERTION FAILED: %s\n", msg);
    __nyx_test_failed = 1;
    if (!__nyx_test_mode) exit(1);
}

// assert_eq para enteros
void nyx_assert_eq_int(int64_t expected, int64_t actual, const char* msg) {
    if (expected != actual) {
        fprintf(stderr, "  ASSERTION FAILED: %s — expected %" PRId64 ", got %" PRId64 "\n", msg, expected, actual);
        __nyx_test_failed = 1;
        if (!__nyx_test_mode) exit(1);
    }
}

// assert_eq para strings. C2 (2026-08-11): comparación por longitud+memcmp,
// NO strcmp — strings = bytes (v0.14) y strcmp cortaba en el primer NUL
// embebido (mismo bug que el == de strings arregló con nyx_string_equals,
// test-268). Conectar esta fn con strcmp habría regresado la seguridad
// binaria de los asserts.
void nyx_assert_eq_str(nyx_string* expected, nyx_string* actual, const char* msg) {
    const char* e = expected ? expected->data : "(null)";
    const char* a = actual ? actual->data : "(null)";
    int eq;
    if (expected && actual) {
        eq = expected->length == actual->length &&
             memcmp(expected->data, actual->data, (size_t)expected->length) == 0;
    } else {
        eq = expected == actual;
    }
    if (!eq) {
        fprintf(stderr, "  ASSERTION FAILED: %s — expected \"%s\", got \"%s\"\n", msg, e, a);
        __nyx_test_failed = 1;
        if (!__nyx_test_mode) exit(1);
    }
}

// ===== ARRAYS DE PUNTEROS GENÉRICOS =====

// Crear array que almacena punteros (para structs).
// STRIDE int64 (no void*): arr->data es int64_t* y el codegen lee los elementos
// con nyx_array_get (stride 8). En wasm32 void*=4 bytes → usar sizeof(void*)
// desincronizaría el stride de escritura (4) vs lectura (8) y rompería arrays
// anidados / de punteros. int64 es bit-idéntico en LP64 y correcto en wasm32.
// EN: int64 stride (not void*) to match nyx_array_get's 8-byte reads; sizeof(void*)
// is 4 on wasm32 and would desync write vs read stride.
// NOTA (Etapa 3 slots-tag, 2026-07-26): esta familia `_ptr` era una SEGUNDA
// implementación de arrays que construía el struct A MANO, sin pasar por
// nyx_array_new/push/resize de runtime-arrays.c. Al agregar el buffer paralelo
// de `tags`, esos arrays quedaban con tags=NULL y TODO slot leía UNKNOWN — el
// literal `[1, "dos"]` se taguea bien pero se construye por esta vía, así que
// el tag se perdía y la concatenación seguía adivinando. Ahora delega en la
// implementación única, que mantiene data y tags coherentes.
nyx_array_t* nyx_array_new_ptr(void) {
    return nyx_array_new(8);
}

// Push de puntero genérico (almacenado como int64 para stride uniforme)
void nyx_array_push_ptr(nyx_array_t* arr, void* value) {
    // Delegado (ver nota en nyx_array_new_ptr): el resize a mano no crecía el
    // buffer de tags y los dejaba desalineados con data.
    nyx_array_push(arr, (int64_t)(uintptr_t)value);
}


// Push a elemento genérico y retornar el array (para inmutabilidad funcional)
nyx_array_t* nyx_array_push_ptr_and_return(nyx_array_t* arr, void* value) {
    nyx_array_push_ptr(arr, value);
    return arr;
}

// Get de puntero genérico
void* nyx_array_get_ptr(nyx_array_t* arr, int64_t index) {
    nyx_bounds_check(index, arr->length);
    return (void*)(uintptr_t)arr->data[index];
}

// Set de puntero genérico
void nyx_array_set_ptr(nyx_array_t* arr, int64_t index, void* value) {
    nyx_array_set(arr, index, (int64_t)(uintptr_t)value);
}

// ===== PROCESS/OS FUNCTIONS (v5.2) =====

// Execute a shell command via /bin/sh, capturing its stdout.
//
// CONTRACT (v0.22.1+, ver TASKS.md "exec() viola su contrato String"):
// exec(cmd) -> String captura TODO el stdout (binary-safe) y le hace strip a
// los `\n` finales (semántica de `$( )` de shell: `exec("echo hola")=="hola"`).
// stderr NO se captura — pasa a la terminal del proceso Nyx tal cual (para
// capturarlo, redirigir explícitamente `cmd 2>&1` en el string). Si popen()
// falla (shell no disponible, etc.) devuelve "". Para el EXIT CODE del
// comando usar nyx_exec_code() — son funciones separadas, no una API dual.
//
// SECURITY CONTRACT: this is a deliberate shell-exec primitive (like
// Python's os.system/subprocess with shell=True). `cmd` is passed to the
// shell verbatim, so the CALLER must never feed it untrusted/unsanitized
// input — doing so is command injection. For untrusted arguments use the
// array-based process builtins (fork + execvp, see runtime/process.c), which
// do not invoke a shell.
#ifndef __wasi__
nyx_string* nyx_exec(const char* cmd) {
    if (!cmd) return nyx_string_from_cstr("");
    FILE* pipe = popen(cmd, "r");
    if (!pipe) return nyx_string_from_cstr("");

    size_t cap = 4096;
    size_t len = 0;
    char* buf = (char*)GC_MALLOC(cap);
    if (!buf) { pclose(pipe); return nyx_string_from_cstr(""); }

    size_t got;
    while ((got = fread(buf + len, 1, cap - len, pipe)) > 0) {
        len += got;
        if (len == cap) {
            size_t new_cap = cap * 2;
            char* new_buf = (char*)GC_MALLOC(new_cap);
            if (!new_buf) { pclose(pipe); return nyx_string_from_cstr(""); }
            memcpy(new_buf, buf, len);
            buf = new_buf;
            cap = new_cap;
        }
    }
    pclose(pipe);

    // Strip TODOS los '\n' finales (semántica $( ) de shell). CRLF: si un
    // '\r' queda inmediatamente antes de un '\n' stripeado, tambien cae.
    while (len > 0 && buf[len - 1] == '\n') {
        len--;
        if (len > 0 && buf[len - 1] == '\r') len--;
    }

    return nyx_string_from_ptr(buf, (int64_t)len);
}

// Execute a shell command via /bin/sh. Returns exit code (misma
// implementación que nyx_exec tenía antes de v0.22.1 — separada acá porque
// exec() ahora captura stdout como String).
int64_t nyx_exec_code(const char* cmd) {
    if (!cmd) return -1;
    int status = system(cmd);
    // system() returns -1 on error, otherwise exit status encoded by waitpid
    if (status == -1) return -1;
    // Extract actual exit code
    return (int64_t)(WIFEXITED(status) ? WEXITSTATUS(status) : -1);
}
#else
// WASI: no hay shell ni procesos — exec()/exec_code() no pueden ejecutar.
// EN: no shell/processes on WASI — exec()/exec_code() cannot run.
nyx_string* nyx_exec(const char* cmd) { (void)cmd; return nyx_string_from_cstr(""); }
int64_t nyx_exec_code(const char* cmd) { (void)cmd; return -1; }
#endif

// Get environment variable. Returns nyx_string* or empty string if not found.
nyx_string* nyx_getenv(const char* name) {
    if (!name) return nyx_string_from_cstr("");
    const char* val = getenv(name);
    if (!val) return nyx_string_from_cstr("");
    return nyx_string_from_cstr(val);
}

// Get environment variable with default value.
nyx_string* nyx_getenv_default(const char* name, nyx_string* default_val) {
    if (!name) return default_val ? default_val : nyx_string_from_cstr("");
    const char* val = getenv(name);
    if (!val) return default_val ? default_val : nyx_string_from_cstr("");
    return nyx_string_from_cstr(val);
}

// Set environment variable.
void nyx_setenv(const char* name, const char* value) {
    if (name && value) setenv(name, value, 1);
}

// Exit process with code.
void nyx_exit(int64_t code) {
    exit((int)code);
}

// Get command-line args — stored by main wrapper
static int nyx_argc = 0;
static char** nyx_argv = NULL;

void nyx_set_args(int argc, char** argv) {
    nyx_argc = argc;
    nyx_argv = argv;
}

nyx_array_t* nyx_get_args(void) {
    nyx_array_t* arr = nyx_array_new_ptr();
    for (int i = 0; i < nyx_argc; i++) {
        nyx_string* s = nyx_string_from_cstr(nyx_argv[i]);
        nyx_array_push_ptr(arr, (void*)s);
    }
    return arr;
}

// ===== TIME/SLEEP FUNCTIONS (v6.0) =====

// Sleep for given milliseconds
void nyx_sleep(int64_t ms) {
    if (ms <= 0) return;
    struct timespec ts;
    ts.tv_sec = ms / 1000;
    ts.tv_nsec = (ms % 1000) * 1000000L;
    nanosleep(&ts, NULL);
}

// Current Unix timestamp in seconds
int64_t nyx_time(void) {
    return (int64_t)time(NULL);
}

// Current time in milliseconds (monotonic clock)
int64_t nyx_time_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (int64_t)(ts.tv_sec * 1000 + ts.tv_nsec / 1000000);
}

// Current time in microseconds (monotonic clock)
int64_t nyx_time_us(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (int64_t)(ts.tv_sec * 1000000 + ts.tv_nsec / 1000);
}

// ===== MATH FUNCTIONS (v6.0) =====

double nyx_math_log(double x) { return log(x); }
double nyx_math_log2(double x) { return log2(x); }
double nyx_math_log10(double x) { return log10(x); }
double nyx_math_exp(double x) { return exp(x); }
double nyx_math_sin(double x) { return sin(x); }
double nyx_math_cos(double x) { return cos(x); }
double nyx_math_tan(double x) { return tan(x); }
double nyx_math_asin(double x) { return asin(x); }
double nyx_math_acos(double x) { return acos(x); }
double nyx_math_atan(double x) { return atan(x); }
double nyx_math_atan2(double y, double x) { return atan2(y, x); }
double nyx_math_sqrt(double x) { return sqrt(x); }
double nyx_math_ceil(double x) { return ceil(x); }
double nyx_math_floor(double x) { return floor(x); }
double nyx_math_round(double x) { return round(x); }
double nyx_math_fabs(double x) { return fabs(x); }
double nyx_math_fmod(double x, double y) { return fmod(x, y); }

// ===== SIGNAL HANDLING (v6.0) =====

#ifndef __wasi__
// Store user-provided closure for signal handling
static void* nyx_signal_handlers[64] = {0};

// Forward declaration of closure call
extern int64_t nyx_call_closure_i64(void* pair, int64_t arg);

static void nyx_signal_trampoline(int signum) {
    if (signum >= 0 && signum < 64 && nyx_signal_handlers[signum]) {
        nyx_call_closure_i64(nyx_signal_handlers[signum], (int64_t)signum);
    }
}

// Register a signal handler: signal_handle(signum, handler_fn)
// handler_fn receives the signal number as argument
void nyx_signal_handle(int64_t signum, void* handler) {
    if (signum >= 0 && signum < 64) {
        nyx_signal_handlers[signum] = handler;
        signal((int)signum, nyx_signal_trampoline);
    }
}

// Reset signal to default handler
void nyx_signal_reset(int64_t signum) {
    if (signum >= 0 && signum < 64) {
        nyx_signal_handlers[signum] = NULL;
        signal((int)signum, SIG_DFL);
    }
}

// Ignore a signal
void nyx_signal_ignore(int64_t signum) {
    signal((int)signum, SIG_IGN);
}
#else
// WASI: no hay señales — no-ops con firmas idénticas (fail-silent, como SIG_IGN).
// EN: no signals on WASI — no-op stubs with identical signatures.
void nyx_signal_handle(int64_t signum, void* handler) { (void)signum; (void)handler; }
void nyx_signal_reset(int64_t signum) { (void)signum; }
void nyx_signal_ignore(int64_t signum) { (void)signum; }
#endif

// ===== DEFER STACK (v6.0) =====
// Simple stack for storing defer body pointers during compilation.
// Uses malloc (NOT GC) to avoid any GC interference.

static int64_t* nyx_defer_stack = NULL;
static int64_t nyx_defer_count_val = 0;
static int64_t nyx_defer_capacity = 0;

void nyx_defer_push(int64_t body_ptr) {
    if (nyx_defer_count_val >= nyx_defer_capacity) {
        nyx_defer_capacity = nyx_defer_capacity == 0 ? 16 : nyx_defer_capacity * 2;
        nyx_defer_stack = (int64_t*)realloc(nyx_defer_stack, sizeof(int64_t) * nyx_defer_capacity);
    }
    nyx_defer_stack[nyx_defer_count_val++] = body_ptr;
}

int64_t nyx_defer_get(int64_t index) {
    if (index < 0 || index >= nyx_defer_count_val) return 0;
    return nyx_defer_stack[index];
}

int64_t nyx_defer_count(void) {
    return nyx_defer_count_val;
}

int64_t nyx_defer_save(void) {
    return nyx_defer_count_val;
}

void nyx_defer_restore(int64_t mark) {
    nyx_defer_count_val = mark;
}

// ===== SEMANTIC HELPERS (v6.4) =====

// Returns the effective arity for a function's param array.
// If the last param has a type string starting with "..." (vararg),
// returns length-1 so the semantic arity check allows variable args.
// Returns length normally for non-vararg functions.
int64_t nyx_sem_get_fn_arity(nyx_array_t* params) {
    if (!params) return 0;
    int64_t len = params->length;
    if (len == 0) return 0;
    // Get last param: it's an array stored as i64 pointer
    int64_t last_raw = params->data[len - 1];
    if (last_raw == 0) return len;
    nyx_array_t* last_param = (nyx_array_t*)(intptr_t)last_raw;
    if (!last_param || last_param->length < 2) return len;
    // Element [1] is the type string, stored as i64 pointer to nyx_string
    int64_t type_raw = last_param->data[1];
    if (type_raw == 0) return len;
    nyx_string* type_str = (nyx_string*)(intptr_t)type_raw;
    if (!type_str || !type_str->data) return len;
    // Check if type starts with "..."
    if (nyx_string_starts_with_cstr(type_str->data, "...")) {
        return len - 1;  // vararg: register arity as normal param count
    }
    return len;
}

// ===== TERMINAL RAW MODE (para editor interactivo) =====
#ifndef __wasi__
#include <termios.h>
#include <poll.h>
#include <errno.h>

static struct termios nyx_saved_termios;
static int nyx_raw_mode_active = 0;

// Handler no-op de SIGWINCH: su ÚNICO propósito es existir. poll() está exento
// de SA_RESTART (signal(7)) y retorna EINTR ante CUALQUIER señal entregada —
// pero un signal SIN handler instalado (disposición default, que para SIGWINCH
// es Ignore) nunca se "entrega" en el sentido que interrumpe syscalls: no hay
// wakeup. Verificado con sonda pty+forkpty: sin handler, poll() NO despierta al
// resize (TIOCSWINSZ) — con este no-op sí (EINTR). Ver nyx_read_byte_timeout.
// EN: no-op SIGWINCH handler — exists only so poll() gets EINTR on resize
// (default disposition = ignore doesn't interrupt syscalls at all).
static void nyx_sigwinch_noop(int sig) { (void)sig; }

// Entrar en raw mode: desactiva echo, canonical mode, signal chars
void nyx_raw_mode_enter(void) {
    struct termios raw;
    if (!isatty(STDIN_FILENO)) return;
    if (tcgetattr(STDIN_FILENO, &nyx_saved_termios) < 0) return;
    raw = nyx_saved_termios;
    cfmakeraw(&raw);
    raw.c_cc[VMIN]  = 1;   // leer mínimo 1 byte
    raw.c_cc[VTIME] = 0;   // sin timeout
    tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw);
    nyx_raw_mode_active = 1;

    // Instala un handler no-op de SIGWINCH SOLO si la disposición sigue siendo
    // la default (SIG_DFL) — si el programa ya instaló el suyo (signal_handle,
    // antes o después de este enter) nunca lo pisamos: signal_handle() siempre
    // sobreescribe incondicionalmente, así que cualquier orden queda a salvo.
    struct sigaction old_winch;
    if (sigaction(SIGWINCH, NULL, &old_winch) == 0 && old_winch.sa_handler == SIG_DFL) {
        struct sigaction sa;
        memset(&sa, 0, sizeof(sa));
        sa.sa_handler = nyx_sigwinch_noop;
        sigaction(SIGWINCH, &sa, NULL);
    }
}

// Restaurar terminal al estado original
void nyx_raw_mode_exit(void) {
    if (nyx_raw_mode_active) {
        tcsetattr(STDIN_FILENO, TCSAFLUSH, &nyx_saved_termios);
        nyx_raw_mode_active = 0;
    }
}

// Destructor: restaura terminal automáticamente al exit() o crash
__attribute__((destructor))
static void nyx_raw_mode_destructor(void) {
    nyx_raw_mode_exit();
}

// Leer un byte raw de stdin (para editor en raw mode)
int64_t nyx_read_byte(void) {
    unsigned char c;
    if (read(STDIN_FILENO, &c, 1) == 1) return (int64_t)c;
    return -1;
}

// Leer un byte con timeout en ms. Usa poll() a propósito: nyx_signal_handle
// instala handlers con signal() (semántica glibc = SA_RESTART), así que un
// read() bloqueante se REINICIA tras una señal y nunca despierta — pero
// poll() está exento de SA_RESTART (signal(7)) y retorna EINTR al instante.
// ms < 0 = sin timeout. Retorna: byte 0-255; -1 EOF/error; -2 timeout o
// señal (unificados: "no hay byte, revisá tus flags").
int64_t nyx_read_byte_timeout(int64_t timeout_ms) {
    struct pollfd pfd;
    pfd.fd = STDIN_FILENO;
    pfd.events = POLLIN;
    int t = -1;
    if (timeout_ms >= 0) {
        t = (timeout_ms > 2147483647) ? 2147483647 : (int)timeout_ms;
    }
    int rc = poll(&pfd, 1, t);
    if (rc == 0) return -2;
    if (rc < 0) return (errno == EINTR) ? -2 : -1;
    unsigned char c;
    ssize_t n = read(STDIN_FILENO, &c, 1);
    if (n == 1) return (int64_t)c;
    if (n < 0 && errno == EINTR) return -2;
    return -1;
}

// Obtener columnas del terminal
int64_t nyx_term_cols(void) {
    struct winsize ws;
    if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1) return 80;
    return (int64_t)ws.ws_col;
}

// Obtener filas del terminal
int64_t nyx_term_rows(void) {
    struct winsize ws;
    if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1) return 24;
    return (int64_t)ws.ws_row;
}
#else
// WASI: sin termios/ioctl — raw mode no-op, tamaño de terminal fijo 80×24.
// read() sí existe en wasi-libc → nyx_read_byte se mantiene funcional.
// EN: no termios/ioctl on WASI — raw mode is a no-op, terminal size fixed 80×24;
//     read() does exist in wasi-libc so nyx_read_byte stays functional.
void nyx_raw_mode_enter(void) {}
void nyx_raw_mode_exit(void) {}

int64_t nyx_read_byte(void) {
    unsigned char c;
    if (read(STDIN_FILENO, &c, 1) == 1) return (int64_t)c;
    return -1;
}

// WASI: sin poll sobre stdin — el timeout es no-op, delega en read bloqueante.
int64_t nyx_read_byte_timeout(int64_t timeout_ms) {
    (void)timeout_ms;
    return nyx_read_byte();
}

int64_t nyx_term_cols(void) { return 80; }
int64_t nyx_term_rows(void) { return 24; }
#endif