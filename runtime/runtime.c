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
#ifndef __wasi__
// WASI: sin setjmp/longjmp (sjlj no estándar). Señales, terminal y fd crudos
// (self-pipe, read_byte, raw mode, winsize): la capa nyx_os_*
// (os_sig_install / os_term_* / os_fd_*) los cubre sin unistd/fcntl/ioctl/
// termios acá (W1 inc 7 + W2 fase A dominio term+fd).
// EN: WASI has no setjmp/longjmp (sjlj not standardized). Signals, terminal,
// and raw fds (self-pipe, read_byte, raw mode, winsize): the nyx_os_* layer
// (os_sig_install / os_term_* / os_fd_*) covers them without unistd/fcntl/
// ioctl/termios here (W1 inc 7 + W2 phase A term+fd domain).
#include <setjmp.h>
#endif
// ES: el thread drenador de señales (S2, self-pipe) se crea con
// os_thread_create, que ya lo registra en Boehm GC — ver runtime/os/os_posix.c.
// EN: the signal-drain thread (S2, self-pipe) is created via os_thread_create,
// which already registers it in Boehm GC — see runtime/os/os_posix.c.
// nyx_os.h sin ifdef: también lo usan nyx_sleep/nyx_time_ms/nyx_time_us
// (fuera del guard de señales), y os_wasm.c aporta los stubs bajo wasi.
#include "os/nyx_os.h"
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
        "   Hint: demasiadas allocaciones vivas a la vez — procesa en bloques, o "
        "ajusta el tope con GC_MAXIMUM_HEAP_SIZE.\n",
        bytes_requested, bytes_requested);
    fflush(stderr);
    // _Exit (C99, <stdlib.h>) en vez de _exit (POSIX, <unistd.h>): mismo
    // efecto (termina sin atexit ni flush adicional -- glibc implementa
    // ambas como el mismo syscall exit_group), pero sin necesitar unistd.h
    // acá -- ese header ya murió de runtime.c (W2 fase A, dominio term+fd).
    // EN: _Exit (C99, <stdlib.h>) instead of _exit (POSIX, <unistd.h>): same
    // effect (terminates without atexit or extra flushing -- glibc
    // implements both as the same exit_group syscall), without needing
    // unistd.h here -- that header already died from runtime.c (W2 phase A,
    // term+fd domain).
    _Exit(1);
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
    // Mismo formato que float_to_string (nyx_float_format en strings.c): antes
    // cada uno tenía su copia del %g, y dos copias derivan.
    char buffer[64];
    nyx_float_format(value, buffer, sizeof(buffer));
    printf("%s\n", buffer);
}

void nyx_print_float32(float value) {
    char buffer[64];
    nyx_float32_format(value, buffer, sizeof(buffer));
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

// nyx_read_line — buffer que CRECE (fix friction report 20260914-210002-team-2,
// 2026-09-14): la versión vieja usaba fgets(buf, 4096, stdin) con un char[4096]
// fijo, así que una línea más larga volvía PARTIDA en varias llamadas y nada
// distinguía un trozo de una línea entera — quien las reunía con "\n" metía
// saltos de línea que nadie había escrito (silenciosamente incorrecto). Acá se
// lee byte a byte con fgetc (binary-safe: no depende de strlen, así que un '\0'
// embebido en la línea no la trunca) hacia un buffer que dobla su capacidad con
// GC_REALLOC — sin cota de largo, en los dos targets (nativo y wasm32-wasi
// comparten este .c: stdin bajo WASI es el mismo FILE* de libc).
//
// Contrato de EOF sin cambios: `any` distingue "no llegó NADA" (EOF real, se
// devuelve el centinela ":EOF:") de "llegaron bytes pero sin '\n' final" (la
// ÚLTIMA línea de un archivo sin salto final SE DEVUELVE como línea real, no
// se descarta). fgetc() consume el EOF físico del stream para darse cuenta de
// que no hay más datos, así que feof(stdin) — y por lo tanto stdin_eof() —
// queda en verdadero en ESA MISMA llamada que ya trae el contenido real: es
// inherente a la semántica de stdio (no hay forma de "espiar" el EOF sin
// consumirlo), y es justamente el contrato documentado de stdin_eof ("se activa
// tras la lectura que tocó el EOF"). La consecuencia correcta NO es tocar este
// contrato sino el bucle de ejemplo (LLM.md): procesar la línea devuelta ANTES
// de mirar stdin_eof(), nunca descartarla por el solo hecho de que stdin_eof()
// ya esté en verdadero.
//
// EN: nyx_read_line — GROWING buffer (fix for friction report
// 20260914-210002-team-2): the old version used fgets(buf, 4096, stdin) with a
// fixed char[4096], so a longer line came back SPLIT across several calls with
// nothing to tell a chunk from a whole line — whoever rejoined them with "\n"
// injected newlines nobody wrote (silently wrong). This reads byte-by-byte via
// fgetc (binary-safe: no strlen involved, so an embedded '\0' doesn't truncate
// it) into a buffer that doubles via GC_REALLOC — no length cap, on both
// targets (native and wasm32-wasi share this .c: stdin under WASI is the same
// libc FILE*). EOF contract unchanged: `any` tells "nothing arrived at all"
// (real EOF, sentinel ":EOF:") from "bytes arrived but no trailing '\n'" (the
// LAST line of a file with no final newline IS returned as a real line, never
// dropped). fgetc() has to consume the physical EOF to know there's no more
// data, so feof(stdin) — hence stdin_eof() — is already true on that SAME call
// that carries real content: that's inherent to stdio semantics (EOF can't be
// peeked without consuming it), and matches stdin_eof's documented contract
// ("activates after the read that hit EOF"). The right fix is the EXAMPLE LOOP
// (LLM.md): process the returned line BEFORE checking stdin_eof(), never
// discard it just because stdin_eof() is already true.
nyx_string* nyx_read_line() {
    size_t cap = 256;
    char* buf = (char*)GC_MALLOC_ATOMIC(cap);
    size_t len = 0;
    int any = 0;
    int c;
    while ((c = fgetc(stdin)) != EOF) {
        any = 1;
        if (c == '\n') break;
        if (len + 1 >= cap) {
            cap *= 2;
            buf = (char*)GC_REALLOC(buf, cap);
        }
        buf[len++] = (char)c;
    }
    if (!any) {
        return nyx_string_from_cstr(":EOF:");
    }
    // El '\r' final solo es separador CRLF si la línea terminó en '\n' real
    // -- si se cortó por EOF sin salto final, un '\r' final es dato, no ruido.
    if (c == '\n' && len > 0 && buf[len-1] == '\r') {
        len--;
    }
    return nyx_string_from_ptr(buf, (int64_t)len);
}

// nyx_read_stdin_all — lee TODA la entrada estándar de una (item 3 del mismo
// reporte): segura con bytes 0 (fread por longitud explícita, nunca strlen) y
// con los saltos de línea finales intactos (no se toca el contenido). Se
// expone a Nyx vía std/io.nx (extern "C" + wrapper pub fn read_stdin_all), NO
// como builtin -- no toca el compilador (semantic/codegen), así que no exige
// re-verificar el punto fijo del bootstrap ni regenerar semillas/índice de
// builtins (mismo patrón que std/tls.nx y std/webpushcrypto.nx). Funciona
// igual en wasm32-wasi: WASI expone fd 0 como el stdin de libc, y fread/feof
// son la misma implementación C que usa nyx_read_line arriba.
//
// EN: nyx_read_stdin_all — reads ALL of stdin at once (item 3 of the same
// report): NUL-safe (fread by explicit length, never strlen) and final
// newlines untouched (content passed through as-is). Exposed to Nyx via
// std/io.nx (extern "C" + pub fn wrapper, NOT a builtin — doesn't touch the
// compiler, so no bootstrap fixed-point re-check or seed/builtins-index
// regen, same pattern as std/tls.nx and std/webpushcrypto.nx). Works the same
// under wasm32-wasi: WASI exposes fd 0 as libc's stdin, and fread/feof are the
// same C implementation nyx_read_line uses above.
nyx_string* nyx_read_stdin_all(void) {
    size_t cap = 65536;
    char* buf = (char*)GC_MALLOC_ATOMIC(cap);
    size_t len = 0;
    for (;;) {
        if (len == cap) {
            cap *= 2;
            buf = (char*)GC_REALLOC(buf, cap);
        }
        size_t got = fread(buf + len, 1, cap - len, stdin);
        len += got;
        if (got == 0) break;
    }
    return nyx_string_from_ptr(buf, (int64_t)len);
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
//
// ES: sobre la capa os_proc_* (W1 inc 5) — el growth GC (×2 desde 4096) y el
// strip de '\n' finales quedan ACÁ (la capa solo transporta chunks binary-safe
// vía cb); popen-falla (-1 de la capa) mapea a "" como antes. En wasm,
// os_proc_run_capture nunca llama a cb y devuelve -1, así que el resultado es
// "" sin necesidad de un #ifdef acá — una sola definición para todas las
// plataformas.
// EN: layered on os_proc_* (W1 inc 5) — the GC growth (×2 from 4096) and the
// trailing-'\n' strip stay HERE (the layer only transports binary-safe
// chunks via cb); a popen failure (-1 from the layer) maps to "" as before.
// On wasm, os_proc_run_capture never calls cb and returns -1, so the result
// is "" with no #ifdef needed here — a single definition for every platform.
typedef struct {
    char* buf;
    size_t len;
    size_t cap;
} nyx_exec_acc_t;

static void nyx_exec_acc_cb(const void* chunk, size_t chunk_len, void* ud) {
    nyx_exec_acc_t* acc = (nyx_exec_acc_t*)ud;
    if (!acc->buf) return; // ya fallo un GC_MALLOC previo: no seguir acumulando
    size_t new_len = acc->len + chunk_len;
    while (new_len > acc->cap) {
        size_t new_cap = acc->cap * 2;
        char* new_buf = (char*)GC_MALLOC(new_cap);
        if (!new_buf) { acc->buf = NULL; return; }
        memcpy(new_buf, acc->buf, acc->len);
        acc->buf = new_buf;
        acc->cap = new_cap;
    }
    memcpy(acc->buf + acc->len, chunk, chunk_len);
    acc->len = new_len;
}

nyx_string* nyx_exec(const char* cmd) {
    if (!cmd) return nyx_string_from_cstr("");

    nyx_exec_acc_t acc;
    acc.cap = 4096;
    acc.len = 0;
    acc.buf = (char*)GC_MALLOC(acc.cap);
    if (!acc.buf) return nyx_string_from_cstr("");

    int rc = os_proc_run_capture(cmd, nyx_exec_acc_cb, &acc);
    if (rc != 0 || !acc.buf) return nyx_string_from_cstr("");

    char* buf = acc.buf;
    size_t len = acc.len;

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
    return os_proc_run_status(cmd);
}

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

// Set environment variable. La lectura (getenv, arriba) es C estándar; la
// ESCRITURA no — setenv es posix y la CRT de MSVC no lo tiene, así que baja a
// la capa (os_env_set, W2 fase C). Semántica sin cambios en posix; el valor de
// retorno se sigue ignorando porque el builtin Nyx `setenv` es void.
// EN: reading (getenv, above) is standard C; WRITING is not — setenv is posix
// and the MSVC CRT lacks it, so it goes through the layer (os_env_set, W2
// phase C). Unchanged posix semantics; the return value is still ignored
// because Nyx's `setenv` builtin is void.
void nyx_setenv(const char* name, const char* value) {
    if (name && value) os_env_set(name, value);
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
    os_sleep_ms(ms);
}

// Current Unix timestamp in seconds
int64_t nyx_time(void) {
    return (int64_t)time(NULL);
}

// Current time in milliseconds (monotonic clock)
int64_t nyx_time_ms(void) {
    return os_monotonic_ns() / 1000000;
}

// Current time in microseconds (monotonic clock)
int64_t nyx_time_us(void) {
    return os_monotonic_ns() / 1000;
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

// ===== nyx_mul_div_round — `a*b/c` con producto intermedio de 128 bits =====
//
// Por qué existe (arco checked-math, 2026-09-08): `a * b` en Nyx desborda en
// wraparound SILENCIOSO (docs/gotchas/int-wraps-silently.md), así que la
// fórmula financiera `monto * tasa / escala` devuelve basura en cuanto el
// producto pasa de 2^63 — aunque el COCIENTE entre de sobra en un `int`
// (9.3e12 * 1e6 ya desborda; 9.3e12 * 1e6 / 1e6 es un número chico). Acá el
// producto vive en 128 bits (|a*b| <= 2^126: jamás desborda) y solo el
// cociente final vuelve a 64 bits, con el redondeo elegido explícitamente.
//
// Por qué los 128 bits son un PAR de `uint64_t` y no `__int128` (2026-09-14):
// la primera versión dividía `__int128` y clang resuelve esa división con
// `__divti3`, un builtin de compiler-rt. En Linux lo provee libgcc y nadie lo
// ve; contra el target MSVC (x64 y arm64) clang no enlaza `clang_rt.builtins`
// y la CRT no trae el símbolo, así que NADA que enlazara runtime.c linkeaba en
// Windows (medido en la laptop: los 12 fixtures del gate, `undefined symbol:
// __divti3`). Regla: el runtime no depende de builtins de compiler-rt
// (`__divti3`, `__udivti3`, `__modti3`, `__multi3`...); la aritmética ancha se
// escribe a mano. Guarda: run_no_compiler_rt_builtins.sh.
// Se opera sobre MAGNITUDES sin signo y el signo se aplica al final: el
// resultado es bit a bit el de la versión `__int128` (verificado con un
// diferencial en todos los modos, bordes de INT64_MIN incluidos).
//
// Frontera FFI: todo `int64_t` y sin punteros (gotcha ffi-c-int-no-sign-extend:
// un `int` de C, 32 bits, no se sign-extiende al cruzar a un `int` de Nyx). El
// estado del fallo NO viaja por un out-param sino por una variable thread-local
// que consulta el segundo builtin, nyx_mul_div_round_status(), inmediatamente
// después de la llamada.
//
// Modos (D1 del plan; `q` y `r` son el cociente y el resto TRUNCADOS hacia
// cero que da C, y `s` el signo del cociente EXACTO):
//   0 Truncate — hacia cero            (descarta `r`)
//   1 Floor    — hacia -infinito       (`q-1` si el cociente exacto es negativo)
//   2 Ceil     — hacia +infinito       (`q+1` si el cociente exacto es positivo)
//   3 HalfUp   — al más cercano, empates ALEJÁNDOSE de cero (contable)
//   4 HalfEven — al más cercano, empates al PAR (bancario)
//
// Un ejemplo por modo con signo NEGATIVO, que es donde los cinco divergen —
// sobre -5/2 = -2.5 y -7/2 = -3.5 exactos:
//   -2.5: Truncate -2 | Floor -3 | Ceil -2 | HalfUp -3 | HalfEven -2 (par)
//   -3.5: Truncate -3 | Floor -4 | Ceil -3 | HalfUp -4 | HalfEven -4 (par)
// (HalfEven cambia de vecino entre los dos casos; HalfUp nunca: siempre se
// aleja de cero.)
//
// Estado: 0 ok, 1 división por cero (`c == 0`), 2 el cociente no entra en
// `int64_t`, 3 modo fuera de rango — este último inalcanzable desde Nyx: el
// `match` sobre `Round` del wrapper de std/math es exhaustivo. Se resetea a 0
// al principio de CADA llamada, así que consultarlo sin haber llamado antes
// desde el mismo thread devuelve 0.
static _Thread_local int64_t __nyx_mul_div_round_status = 0;

// x * y exacto en 128 bits (hi:lo), por mitades de 32 bits. Ningún producto
// parcial desborda: cada uno es < 2^64, y `mid` suma a lo sumo tres términos
// < 2^32.
static void nyx_mdr_mul_u64(uint64_t x, uint64_t y, uint64_t* hi, uint64_t* lo) {
    uint64_t x0 = x & 0xffffffffu, x1 = x >> 32;
    uint64_t y0 = y & 0xffffffffu, y1 = y >> 32;
    uint64_t p00 = x0 * y0, p01 = x0 * y1, p10 = x1 * y0, p11 = x1 * y1;
    uint64_t mid = (p00 >> 32) + (p01 & 0xffffffffu) + (p10 & 0xffffffffu);
    *lo = (p00 & 0xffffffffu) | (mid << 32);
    *hi = p11 + (p01 >> 32) + (p10 >> 32) + (mid >> 32);
}

// (hi:lo) / d con hi < d (el cociente entra en 64 bits): división larga bit a
// bit, 64 vueltas de desplazar-y-restar. Se eligió por sobre la división de
// Knuth normalizada porque es obviamente correcta y no necesita `clz` (otro
// candidato a builtin según el target); `nyx_mul_div_round` no es un camino
// caliente. `carry` es la cuenta del bit 64 que se cae al desplazar: con hi < d
// no ocurre mientras d <= 2^63 (siempre acá), pero se contempla para que el
// invariante no dependa del llamador.
static uint64_t nyx_mdr_div_128_64(uint64_t hi, uint64_t lo, uint64_t d, uint64_t* rem) {
    uint64_t q = 0;
    for (int i = 63; i >= 0; i--) {
        uint64_t carry = hi >> 63;
        hi = (hi << 1) | ((lo >> i) & 1u);
        q <<= 1;
        if (carry || hi >= d) {
            hi -= d;
            q |= 1u;
        }
    }
    *rem = hi;
    return q;
}

int64_t nyx_mul_div_round_status(void) {
    return __nyx_mul_div_round_status;
}

int64_t nyx_mul_div_round(int64_t a, int64_t b, int64_t c, int64_t mode) {
    __nyx_mul_div_round_status = 0;

    if (c == 0) {
        __nyx_mul_div_round_status = 1;
        return 0;
    }
    if (mode < 0 || mode > 4) {
        __nyx_mul_div_round_status = 3;
        return 0;
    }

    // Magnitudes sin signo: `0 - (uint64_t)x` da |x| también para INT64_MIN
    // (2^63), sin el UB de negar el mínimo con signo.
    uint64_t ua = (a < 0) ? (uint64_t)0 - (uint64_t)a : (uint64_t)a;
    uint64_t ub = (b < 0) ? (uint64_t)0 - (uint64_t)b : (uint64_t)b;
    uint64_t uc = (c < 0) ? (uint64_t)0 - (uint64_t)c : (uint64_t)c;
    // Signo del cociente EXACTO. Si el producto es 0 el resultado es 0 y el
    // signo no importa; si no, es el del cociente truncado y el del redondeo.
    int neg = ((a < 0) != (b < 0)) != (c < 0);

    // |p| = ua*ub <= 2^126. Cociente truncado Q = qhi:qlo y resto R = r, en
    // magnitud: truncar hacia cero (C99 6.5.5p6) es truncar la magnitud.
    uint64_t phi, plo;
    nyx_mdr_mul_u64(ua, ub, &phi, &plo);
    uint64_t qhi = phi / uc;
    uint64_t r;
    uint64_t qlo = nyx_mdr_div_128_64(phi % uc, plo, uc, &r);

    if (r != 0) {
        // Cada ajuste de la versión con signo (`q -= 1` con cociente negativo,
        // `q += s`) aleja el resultado de cero en una unidad: en magnitud es
        // siempre Q + 1, y el signo lo pone `neg` al final.
        int bump = 0;
        if (mode == 1) {                    // Floor: se aleja si es negativo
            bump = neg;
        } else if (mode == 2) {             // Ceil: se aleja si es positivo
            bump = !neg;
        } else if (mode == 3 || mode == 4) {
            // Comparar 2*R con |c| en vez de R con |c|/2: exacto y sin
            // dividir. R < |c| <= 2^63, así que 2*R < 2^64 y entra en uint64.
            uint64_t twice = r << 1;
            if (twice > uc) {
                bump = 1;                   // más de la mitad: al vecino lejano
            } else if (twice == uc) {
                // Empate: HalfUp SIEMPRE se aleja de cero; HalfEven solo si Q
                // (el vecino hacia cero) es impar — la paridad de ±Q es la de Q.
                bump = (mode == 3) || ((qlo & 1u) != 0);
            }
            // twice < uc: menos de la mitad, Q ya es el más cercano.
        }
        if (bump) {
            qlo += 1;
            if (qlo == 0) qhi += 1;
        }
    }

    // Rango de int64_t en magnitud: hasta 2^63 si es negativo, 2^63-1 si no.
    uint64_t lim = neg ? ((uint64_t)1 << 63) : (((uint64_t)1 << 63) - 1);
    if (qhi != 0 || qlo > lim) {
        __nyx_mul_div_round_status = 2;
        return 0;
    }
    if (!neg || qlo == 0) return (int64_t)qlo;
    // -(Q-1)-1 en vez de -(int64_t)Q: con Q == 2^63 el cast directo no entra.
    return -(int64_t)(qlo - 1) - 1;
}

// ===== SIGNAL HANDLING (v6.0) =====

#ifndef __wasi__
// Store user-provided closure for signal handling
static void* nyx_signal_handlers[64] = {0};

// Forward declaration of closure call
extern int64_t nyx_call_closure_i64(void* pair, int64_t arg);

// ===== SELF-PIPE (S2 campaña 2026-08-11) =====
// Antes el trampolín llamaba el closure Nyx DIRECTO en contexto de señal:
// cualquier alocación (concat, int_to_string, print — casi todo Nyx) podía
// deadlockear si la señal caía con el lock del GC/malloc tomado (el drain de
// serve v0.6.0 tuvo que escribirse allocation-free a mano por esto). Ahora
// el trampolín es async-signal-safe puro (UN write de 1 byte) y un thread
// drenador dedicado — lazy en el primer signal_handle, registrado en Boehm
// vía os_thread_create (runtime/os/os_posix.c) — ejecuta el closure en
// contexto normal: puede alocar, printear, leer env. Spec:
// docs/design/specs/2026-08-11-self-pipe-senales-spec.md
static int nyx_sig_pipe[2] = {-1, -1};
static int nyx_sig_thread_started = 0;

static void nyx_signal_trampoline(int signum) {
    if (signum >= 0 && signum < 64 && nyx_signal_handlers[signum]) {
        unsigned char b = (unsigned char)signum;
        // write(2) es async-signal-safe (POSIX). Pipe lleno ⇒ el byte se
        // descarta: las señales UNIX ya coalescen por diseño. os_fd_write
        // (posix) es un PASSTHROUGH puro de write(2) -- ver el contrato en
        // nyx_os.h -- no agrega nada sobre este camino async-signal-safe.
        int64_t r = os_fd_write(nyx_sig_pipe[1], &b, 1);
        (void)r;
    }
}

static void* nyx_signal_drain_thread(void* arg) {
    (void)arg;
    unsigned char b;
    while (os_fd_read(nyx_sig_pipe[0], &b, 1) == 1) {
        int sig = (int)b;
        void* h = (sig >= 0 && sig < 64) ? nyx_signal_handlers[sig] : NULL;
        // Carrera benigna con signal_reset: un byte de una señal ya
        // des-registrada simplemente se ignora.
        if (h) nyx_call_closure_i64(h, (int64_t)sig);
    }
    return NULL;
}

// Señales SÍNCRONAS reservadas para el fault handler de guard-pages
// (scheduler.c, os_fault_guard_install). Comparan contra las constantes
// OS_SIG* de la capa (nyx_os.h) -- NO valores Linux hardcodeados acá: en
// macOS SIGBUS=10 (7 es SIGEMT), así que un literal fijo reabriría F15 en
// esa plataforma (review W1 inc 7 round 1). Este archivo NUNCA las
// REGISTRA vía os_sig_install, solo compara para rechazar
// signal_handle/reset/ignore sobre ellas.
// EN: SYNCHRONOUS signals reserved for the guard-page fault handler
// (scheduler.c, os_fault_guard_install). Compared against the layer's
// OS_SIG* constants (nyx_os.h) -- NOT hardcoded Linux values here: on
// macOS SIGBUS=10 (7 is SIGEMT), so a fixed literal would reopen F15 on
// that platform (W1 inc 7 round-1 review). This file never REGISTERS
// these via os_sig_install, it only compares to reject
// signal_handle/reset/ignore over them.
static int nyx_signal_is_sync(int64_t s) {
    return s == OS_SIGSEGV || s == OS_SIGBUS || s == OS_SIGFPE || s == OS_SIGILL;
}

// Register a signal handler: signal_handle(signum, handler_fn)
// handler_fn receives the signal number as argument.
// El closure corre en el THREAD DRENADOR (contexto normal), no en el thread
// interrumpido — cambio de semántica documentado en CHANGELOG v0.24.32.
void nyx_signal_handle(int64_t signum, void* handler) {
    if (signum < 0 || signum >= 64) return;
    // Señales SINCRÓNICAS jamás van por el pipe: un fault no es diferible.
    // Reservadas para el handler de guard-page del arco de stacks (S4).
    if (nyx_signal_is_sync(signum)) {
        fprintf(stderr, "[nyx] signal_handle: la señal síncrona %lld no se puede manejar con un closure Nyx\n", (long long)signum);
        return;
    }
    if (!nyx_sig_thread_started) {
        if (os_fd_pipe(nyx_sig_pipe) != 0) return;
        // Escritura non-blocking: si el pipe se llena (ráfaga de 64K
        // señales), el trampolín descarta en vez de bloquear en contexto
        // de señal. os_sock_set_nonblocking sirve para CUALQUIER fd (fcntl
        // O_NONBLOCK), no solo sockets -- reusado acá en vez de un
        // os_fd_set_nonblocking propio (Paso Cero, W2 fase A term+fd).
        // EN: non-blocking write: if the pipe fills up (a burst of 64K
        // signals), the trampoline drops instead of blocking in signal
        // context. os_sock_set_nonblocking works on ANY fd (fcntl
        // O_NONBLOCK), not just sockets -- reused here instead of a
        // dedicated os_fd_set_nonblocking (Step Zero, W2 phase A term+fd).
        os_sock_set_nonblocking(nyx_sig_pipe[1], 1);
        os_thread_t t;
        if (os_thread_create(&t, nyx_signal_drain_thread, NULL) != 0) {
            os_fd_close(nyx_sig_pipe[0]);
            os_fd_close(nyx_sig_pipe[1]);
            nyx_sig_pipe[0] = -1;
            nyx_sig_pipe[1] = -1;
            return;
        }
        os_thread_detach(&t);
        nyx_sig_thread_started = 1;
    }
    nyx_signal_handlers[signum] = handler;
    os_sig_install((int)signum, nyx_signal_trampoline);
}

// Reset signal to default handler
// F15 (review S4): reset/ignore también deben RECHAZAR las señales
// síncronas. Sin esto, `signal_reset(11)` desde Nyx desarmaba el handler de
// guard-page de TODO el proceso en silencio, y `signal_ignore(11)` ponía
// SIG_IGN en SIGSEGV — UB: el fault se re-ejecuta infinitamente y el
// proceso se cuelga quemando CPU. (nyx_signal_is_sync está definida arriba,
// junto al mapeo de señales síncronas — las constantes OS_SIG* viven en la capa, nyx_os.h.)
void nyx_signal_reset(int64_t signum) {
    if (nyx_signal_is_sync(signum)) {
        fprintf(stderr, "[nyx] signal_reset: la señal síncrona %lld está reservada (guard page de stacks)\n", (long long)signum);
        return;
    }
    if (signum >= 0 && signum < 64) {
        nyx_signal_handlers[signum] = NULL;
        os_sig_reset((int)signum);
    }
}

// Ignore a signal
void nyx_signal_ignore(int64_t signum) {
    if (nyx_signal_is_sync(signum)) {
        fprintf(stderr, "[nyx] signal_ignore: ignorar la señal síncrona %lld es UB (bucle infinito de faults) — rechazado\n", (long long)signum);
        return;
    }
    os_sig_ignore((int)signum);
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
// fd 0/1 = stdin/stdout -- constantes POSIX/Windows universales (ya no hace
// falta <unistd.h> solo por STDIN_FILENO/STDOUT_FILENO: os_term_raw_enter/
// exit/winsize los fijan internamente en la capa, nyx_read_byte* los pasa
// como literales a os_fd_read/os_sock_poll1).
// EN: fd 0/1 = stdin/stdout -- universal POSIX/Windows constants (no longer
// need <unistd.h> just for STDIN_FILENO/STDOUT_FILENO: os_term_raw_enter/
// exit/winsize fix them internally in the layer, nyx_read_byte* pass them
// as literals to os_fd_read/os_sock_poll1).
#ifndef __wasi__
#include <errno.h>

// Handler no-op de SIGWINCH: su ÚNICO propósito es existir. poll() está exento
// de SA_RESTART (signal(7)) y retorna EINTR ante CUALQUIER señal entregada —
// pero un signal SIN handler instalado (disposición default, que para SIGWINCH
// es Ignore) nunca se "entrega" en el sentido que interrumpe syscalls: no hay
// wakeup. Verificado con sonda pty+forkpty: sin handler, poll() NO despierta al
// resize (TIOCSWINSZ) — con este no-op sí (EINTR). Ver nyx_read_byte_timeout.
// EN: no-op SIGWINCH handler — exists only so poll() gets EINTR on resize
// (default disposition = ignore doesn't interrupt syscalls at all).
static void nyx_sigwinch_noop(int sig) { (void)sig; }

// Entrar en raw mode: desactiva echo, canonical mode, signal chars.
// os_term_raw_enter (capa nyx_os_*) hace el isatty+tcgetattr+cfmakeraw+
// tcsetattr sobre stdin y guarda el termios previo INTERNAMENTE (no hay
// parámetro de estado acá — ver nyx_os.h); esta fn solo decide si instalar
// el no-op de SIGWINCH, y solo si raw_enter tuvo éxito (0).
void nyx_raw_mode_enter(void) {
    if (os_term_raw_enter() != 0) return;

    // Instala un handler no-op de SIGWINCH SOLO si la disposición sigue siendo
    // la default (SIG_DFL) — si el programa ya instaló el suyo (signal_handle,
    // antes o después de este enter) nunca lo pisamos: signal_handle() siempre
    // sobreescribe incondicionalmente, así que cualquier orden queda a salvo.
    // os_sig_install_no_restart (NO os_sig_install): este handler existe
    // ÚNICAMENTE para que poll()/read() se interrumpan con EINTR visible al
    // resize (ver nyx_read_byte_timeout) — con SA_RESTART (lo que agrega
    // os_sig_install/signal()) el syscall se reiniciaría solo y el caller
    // jamás vería el despertar.
    // EN: os_sig_install_no_restart (NOT os_sig_install): this handler
    // exists ONLY so poll()/read() get interrupted with a visible EINTR on
    // resize (see nyx_read_byte_timeout) — with SA_RESTART (what
    // os_sig_install/signal() adds) the syscall would auto-restart and the
    // caller would never see the wakeup.
    if (os_sig_is_default(OS_SIGWINCH) == 1) {
        os_sig_install_no_restart(OS_SIGWINCH, nyx_sigwinch_noop);
    }
}

// Restaurar terminal al estado original. os_term_raw_exit es un no-op
// (0, sin tocar nada) si raw_enter nunca tuvo éxito -- el flag "activo"
// vive en la capa, no acá.
void nyx_raw_mode_exit(void) {
    os_term_raw_exit();
}

// Destructor: restaura terminal automáticamente al exit() o crash
__attribute__((destructor))
static void nyx_raw_mode_destructor(void) {
    nyx_raw_mode_exit();
}

// Leer un byte raw de stdin (para editor en raw mode)
int64_t nyx_read_byte(void) {
    unsigned char c;
    if (os_fd_read(0, &c, 1) == 1) return (int64_t)c;
    return -1;
}

// Leer un byte con timeout en ms. Usa poll() (via os_sock_poll1) a
// propósito: nyx_signal_handle instala handlers con signal() (semántica
// glibc = SA_RESTART), así que un read() bloqueante se REINICIA tras una
// señal y nunca despierta — pero poll() está exento de SA_RESTART
// (signal(7)) y retorna EINTR al instante.
// ms < 0 = sin timeout. Retorna: byte 0-255; -1 EOF/error; -2 timeout o
// señal (unificados: "no hay byte, revisa tus flags").
int64_t nyx_read_byte_timeout(int64_t timeout_ms) {
    int t = -1;
    if (timeout_ms >= 0) {
        t = (timeout_ms > 2147483647) ? 2147483647 : (int)timeout_ms;
    }
    // os_sock_poll1 (capa nyx_os_*) devuelve los revents REALES ya
    // traducidos: >0 con algún bit, 0 == timeout, -errno en error (EINTR
    // llega como -EINTR EN EL RETORNO, no como variable errno global — a
    // diferencia del poll() crudo que reemplaza; mismo patrón que
    // nyx_tls_wait_readable en tls.c).
    int rc = os_sock_poll1(0, OS_POLLIN, t);
    if (rc == 0) return -2;
    if (rc < 0) return (rc == -EINTR) ? -2 : -1;
    unsigned char c;
    // os_fd_read devuelve n leidos o -errno EN EL RETORNO (no en errno
    // global) -- mismo patrón que os_sock_poll1 arriba.
    int64_t n = os_fd_read(0, &c, 1);
    if (n == 1) return (int64_t)c;
    if (n == -EINTR) return -2;
    return -1;
}

// Obtener columnas del terminal
int64_t nyx_term_cols(void) {
    int rows, cols;
    if (os_term_winsize(&rows, &cols) != 0) return 80;
    return (int64_t)cols;
}

// Obtener filas del terminal
int64_t nyx_term_rows(void) {
    int rows, cols;
    if (os_term_winsize(&rows, &cols) != 0) return 24;
    return (int64_t)rows;
}
#else
// WASI: os_term_* son -ENOSYS (sin termios/ioctl) -- raw mode no-op, tamaño
// de terminal fijo 80×24. os_fd_read SÍ es real bajo wasi-libc → nyx_read_byte
// se mantiene funcional.
// EN: WASI: os_term_* are -ENOSYS (no termios/ioctl) -- raw mode is a no-op,
// terminal size fixed 80×24. os_fd_read IS real under wasi-libc, so
// nyx_read_byte stays functional.
void nyx_raw_mode_enter(void) {}
void nyx_raw_mode_exit(void) {}

int64_t nyx_read_byte(void) {
    unsigned char c;
    if (os_fd_read(0, &c, 1) == 1) return (int64_t)c;
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