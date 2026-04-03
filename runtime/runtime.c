// ============================================
// RUNTIME.C - Runtime de Nyx v0.8.1
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <unistd.h>
#include <signal.h>
#include <setjmp.h>
#include <gc.h>  // Boehm GC
#include "strings.h"

// ===== INICIALIZACIÓN =====

void nyx_runtime_init() {
    GC_INIT();
    // Collect less frequently: keep more free space before triggering GC
    // Default divisor is 3, lower = more free space = fewer collections
    GC_set_free_space_divisor(2);
    // Cap heap at 512MB to avoid unbounded growth
    GC_set_max_heap_size(512 * 1024 * 1024);
    // Incremental GC — shorter pauses for server workloads
    GC_enable_incremental();
}

// ===== FUNCIONES DE IMPRESIÓN =====

void nyx_print_int(int64_t value) {
    printf("%ld\n", value);
}

void nyx_print_float(double value) {
    char buffer[64];
    snprintf(buffer, sizeof(buffer), "%g", value);
    // Ensure float always has decimal point (e.g., 42.0 not 42)
    if (strchr(buffer, '.') == NULL && strchr(buffer, 'e') == NULL && strchr(buffer, 'E') == NULL) {
        strcat(buffer, ".0");
    }
    printf("%s\n", buffer);
}

void nyx_print_string(const char* str) {
    printf("%s\n", str);
}

void nyx_print_bool(int value) {
    printf("%s\n", value ? "true" : "false");
}

void nyx_print_hstring(nyx_string* str) {
    nyx_print_nyx_string(str);
    printf("\n");
}

// Imprime sin newline final (útil para prompts en el REPL)
void nyx_print_no_newline(nyx_string* str) {
    if (str && str->data) {
        fputs(str->data, stdout);
        fflush(stdout);
    }
}

// Lee una línea de stdin; retorna ":EOF:" en EOF
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

// ===== TRY-CATCH EXCEPTION HANDLING =====

#define NYX_TRY_STACK_MAX 64

static jmp_buf __nyx_try_stack[NYX_TRY_STACK_MAX];
static int __nyx_try_depth = 0;
static nyx_string* __nyx_exception_msg = NULL;

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

// Assert: si condition es false, imprime mensaje y retorna 0 (false)
// Si es true, retorna 1 (true)
// Usado internamente por el test runner generado por codegen
void nyx_assert_fail(const char* msg) {
    fprintf(stderr, "  ASSERTION FAILED: %s\n", msg);
}

// assert_eq para enteros
void nyx_assert_eq_int(int64_t expected, int64_t actual, const char* msg) {
    if (expected != actual) {
        fprintf(stderr, "  ASSERTION FAILED: %s — expected %ld, got %ld\n", msg, expected, actual);
    }
}

// assert_eq para strings
void nyx_assert_eq_str(nyx_string* expected, nyx_string* actual, const char* msg) {
    const char* e = expected ? expected->data : "(null)";
    const char* a = actual ? actual->data : "(null)";
    if (strcmp(e, a) != 0) {
        fprintf(stderr, "  ASSERTION FAILED: %s — expected \"%s\", got \"%s\"\n", msg, e, a);
    }
}

// ===== ARRAYS DE PUNTEROS GENÉRICOS =====

// Crear array que almacena punteros (para structs)
nyx_array_t* nyx_array_new_ptr(void) {
    nyx_array_t* arr = GC_MALLOC(sizeof(nyx_array_t));
    arr->length = 0;
    arr->capacity = 8;
    arr->data = (int64_t*)GC_MALLOC(sizeof(void*) * arr->capacity);  // Cast explícito
    return arr;
}

// Push de puntero genérico
void nyx_array_push_ptr(nyx_array_t* arr, void* value) {
    if (arr->length >= arr->capacity) {
        arr->capacity *= 2;
        void** new_data = GC_MALLOC(sizeof(void*) * arr->capacity);
        memcpy(new_data, arr->data, sizeof(void*) * arr->length);
        arr->data = (int64_t*)new_data;  // Cast explícito
    }
    ((void**)arr->data)[arr->length++] = value;
}


// Push a elemento genérico y retornar el array (para inmutabilidad funcional)
nyx_array_t* nyx_array_push_ptr_and_return(nyx_array_t* arr, void* value) {
    nyx_array_push_ptr(arr, value);
    return arr;
}

// Get de puntero genérico
void* nyx_array_get_ptr(nyx_array_t* arr, int64_t index) {
    nyx_bounds_check(index, arr->length);
    return ((void**)arr->data)[index];
}

// Set de puntero genérico
void nyx_array_set_ptr(nyx_array_t* arr, int64_t index, void* value) {
    nyx_bounds_check(index, arr->length);
    ((void**)arr->data)[index] = value;
}

// ===== PROCESS/OS FUNCTIONS (v5.2) =====

// Execute a shell command. Returns exit code.
int64_t nyx_exec(const char* cmd) {
    if (!cmd) return -1;
    int status = system(cmd);
    // system() returns -1 on error, otherwise exit status encoded by waitpid
    if (status == -1) return -1;
    // Extract actual exit code
    return (int64_t)(WIFEXITED(status) ? WEXITSTATUS(status) : -1);
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
#include <termios.h>

static struct termios nyx_saved_termios;
static int nyx_raw_mode_active = 0;

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