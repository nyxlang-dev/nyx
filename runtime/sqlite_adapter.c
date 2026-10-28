// runtime/sqlite_adapter.c — SQLite3 bindings for Nyx (v4.0.0)
// Loads libsqlite3 dynamically via dlopen
// String parameters are nyx_string* (from Nyx ABI)

#include "strings.h"
#include "os/nyx_os.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>

// Helper to extract C string from nyx_string*
static const char* ns_cstr(nyx_string* s) {
    if (!s || !s->data) return "";
    return s->data;
}

// Opaque sqlite3 types
typedef struct sqlite3      nyx_db3;
typedef struct sqlite3_stmt nyx_stmt3;

// Return codes
#define SQLITE_OK   0
#define SQLITE_ROW  100
#define SQLITE_DONE 101

// Tipo de dato de una columna (sqlite3_column_type). Solo SQLITE_NULL se usa
// acá: es el ÚNICO canal por el que sqlite distingue una celda NULL de un
// texto que diga "NULL" — sqlite3_column_text devuelve NULL en el primer caso
// y los bytes "NULL" en el segundo, y ambos colapsaban al mismo String.
#define SQLITE_NULL 5

// Destructor constant
#define SQLITE_TRANSIENT ((void*)-1)

// Function pointer types
typedef int      (*fn_open)   (const char*, nyx_db3**);
typedef int      (*fn_close)  (nyx_db3*);
typedef int      (*fn_exec)   (nyx_db3*, const char*, void*, void*, char**);
typedef void     (*fn_free)   (void*);
typedef int      (*fn_prepare)(nyx_db3*, const char*, int, nyx_stmt3**, const char**);
typedef int      (*fn_step)   (nyx_stmt3*);
typedef int      (*fn_fin)    (nyx_stmt3*);
typedef int      (*fn_ncols)  (nyx_stmt3*);
typedef const char* (*fn_ctext)(nyx_stmt3*, int);
typedef const char* (*fn_cname)(nyx_stmt3*, int);
typedef int      (*fn_cint)   (nyx_stmt3*, int);
typedef int64_t  (*fn_cint64) (nyx_stmt3*, int);
typedef int      (*fn_ctype)  (nyx_stmt3*, int);
typedef double   (*fn_cdbl)   (nyx_stmt3*, int);
typedef const char* (*fn_errmsg)(nyx_db3*);
typedef int      (*fn_btxt)   (nyx_stmt3*, int, const char*, int, void*);
typedef int      (*fn_bint)   (nyx_stmt3*, int, int);
typedef int      (*fn_bint64) (nyx_stmt3*, int, int64_t);
typedef int      (*fn_bnull)  (nyx_stmt3*, int);
typedef int      (*fn_bdbl)   (nyx_stmt3*, int, double);
typedef int64_t  (*fn_lastid) (nyx_db3*);
typedef int      (*fn_changes)(nyx_db3*);

// Global function pointers
static os_dl_t g_lib   = NULL;
static fn_open    g_open    = NULL;
static fn_close   g_close   = NULL;
static fn_exec    g_exec    = NULL;
static fn_free    g_free    = NULL;
static fn_prepare g_prepare = NULL;
static fn_step    g_step    = NULL;
static fn_fin     g_fin     = NULL;
static fn_ncols   g_ncols   = NULL;
static fn_ctext   g_ctext   = NULL;
static fn_cname   g_cname   = NULL;
static fn_cint    g_cint    = NULL;
static fn_cint64  g_cint64  = NULL;
static fn_ctype   g_ctype   = NULL;
static fn_cdbl    g_cdbl    = NULL;
static fn_errmsg  g_errmsg  = NULL;
static fn_btxt    g_btxt    = NULL;
static fn_bint    g_bint    = NULL;
static fn_bint64  g_bint64  = NULL;
static fn_bnull   g_bnull   = NULL;
static fn_bdbl    g_bdbl    = NULL;
static fn_lastid  g_lastid  = NULL;
static fn_changes g_changes = NULL;

static int g_loaded = 0;  // 0=unloaded, 1=ok, 2=failed

// Mensaje del último fallo de carga (biblioteca ausente o símbolo faltante).
// Vacío mientras no haya fallado. Lo lee nyx_sqlite_load_error() para que
// try_sqlite_open diga POR QUÉ no abrió, con el nombre del símbolo.
// EN: message of the last load failure (missing library or missing symbol).
static char g_load_err[512] = "";

// Tabla símbolo -> puntero. Un símbolo que falta NO deja un puntero nulo para
// que reviente en la primera llamada: es «biblioteca ausente» con el nombre
// del símbolo (mismo criterio que llm_sym en llama_adapter.c).
// EN: symbol table; any missing symbol fails the whole load, by name.
typedef struct { const char* name; void** slot; } sqlite_sym_t;
static const sqlite_sym_t g_sqlite_syms[] = {
    { "sqlite3_open",              (void**)&g_open    },
    { "sqlite3_close",             (void**)&g_close   },
    { "sqlite3_exec",              (void**)&g_exec    },
    { "sqlite3_free",              (void**)&g_free    },
    { "sqlite3_prepare_v2",        (void**)&g_prepare },
    { "sqlite3_step",              (void**)&g_step    },
    { "sqlite3_finalize",          (void**)&g_fin     },
    { "sqlite3_column_count",      (void**)&g_ncols   },
    { "sqlite3_column_text",       (void**)&g_ctext   },
    { "sqlite3_column_name",       (void**)&g_cname   },
    { "sqlite3_column_int",        (void**)&g_cint    },
    { "sqlite3_column_int64",      (void**)&g_cint64  },
    { "sqlite3_column_type",       (void**)&g_ctype   },
    { "sqlite3_column_double",     (void**)&g_cdbl    },
    { "sqlite3_errmsg",            (void**)&g_errmsg  },
    { "sqlite3_bind_text",         (void**)&g_btxt    },
    { "sqlite3_bind_int",          (void**)&g_bint    },
    { "sqlite3_bind_int64",        (void**)&g_bint64  },
    { "sqlite3_bind_null",         (void**)&g_bnull   },
    { "sqlite3_bind_double",       (void**)&g_bdbl    },
    { "sqlite3_last_insert_rowid", (void**)&g_lastid  },
    { "sqlite3_changes",           (void**)&g_changes },
};

static void sqlite_reset_syms(void) {
    for (size_t i = 0; i < sizeof g_sqlite_syms / sizeof g_sqlite_syms[0]; i++)
        *g_sqlite_syms[i].slot = NULL;
}

static os_dl_t sqlite_try_open(const char* name) {
    return os_dl_open(name, 1);
}

static int sqlite_load(void) {
    if (g_loaded == 1) return 0;
    if (g_loaded == 2) return -1;

    // NYX_SQLITE_SO: ruta o nombre explícito (mismo contrato que
    // NYX_LLAMA_SO). Si está, es la ÚNICA candidata. Sirve también de
    // costura de test: apuntarla a una biblioteca que no es sqlite prueba el
    // camino «símbolo faltante» sin un .so roto en disco.
    // EN: explicit override; the only candidate when set (also a test seam).
    const char* env = getenv("NYX_SQLITE_SO");
    const char* tried = NULL;
    if (env && env[0]) {
        tried = env;
        g_lib = sqlite_try_open(env);
    } else {
        // Orden Linux INTACTO; los nombres de Windows van detrás y solo en
        // win32 (spike W5 §3). sqlite3.dll es el de sqlite.org y el que deja
        // vcpkg (port sqlite3); winsqlite3.dll es la copia del sistema
        // (System32, Windows 10+): último recurso, sin instalar nada.
        // EN: Linux order untouched; Windows names appended, win32 only.
        static const char* const names[] = {
#ifdef _WIN32
            "sqlite3.dll", "winsqlite3.dll",
#else
            "libsqlite3.so.0", "libsqlite3.so",
#endif
            NULL
        };
        for (int i = 0; names[i] && !g_lib; i++) {
            tried = names[i];
            g_lib = sqlite_try_open(names[i]);
        }
    }
    if (!g_lib) {
        const char* why = os_dl_error();
        snprintf(g_load_err, sizeof g_load_err,
                 "sqlite: biblioteca ausente (no se pudo cargar '%s'%s%s)",
                 tried ? tried : "?", why ? ": " : "", why ? why : "");
        g_loaded = 2;
        return -1;
    }

    for (size_t i = 0; i < sizeof g_sqlite_syms / sizeof g_sqlite_syms[0]; i++) {
        void* p = os_dl_sym(g_lib, g_sqlite_syms[i].name);
        if (!p) {
            snprintf(g_load_err, sizeof g_load_err,
                     "sqlite: biblioteca ausente o incompatible (falta el simbolo '%s' en '%s')",
                     g_sqlite_syms[i].name, tried ? tried : "?");
            sqlite_reset_syms();
            g_loaded = 2;
            return -1;
        }
        *g_sqlite_syms[i].slot = p;
    }

    g_loaded = 1;
    return 0;
}

// Mensaje del fallo de carga ("" si cargó bien o aún no se intentó).
// EN: load-failure message ("" if loaded OK / not attempted yet).
nyx_string* nyx_sqlite_load_error(void) {
    sqlite_load();
    return nyx_string_from_cstr(g_load_err);
}

// === Nyx bridge functions (String params = nyx_string* from Nyx ABI) ===

// nyx_sqlite_open(path: String) -> *int
void* nyx_sqlite_open(nyx_string* path) {
    if (sqlite_load() < 0) {
        // sqlite_open (sin try) devuelve NULL y quien sigue de largo muere
        // lejos de la causa: se avisa UNA vez por stderr, con la causa.
        // EN: warn once on stderr so the plain sqlite_open path fails clean.
        static int warned = 0;
        if (!warned) { warned = 1; fprintf(stderr, "%s\n", g_load_err); }
        return NULL;
    }
    nyx_db3* db = NULL;
    int rc = g_open(ns_cstr(path), &db);
    if (rc != SQLITE_OK) return NULL;
    return (void*)db;
}

void nyx_sqlite_close(void* db) {
    if (db && g_close) g_close((nyx_db3*)db);
}

// nyx_sqlite_exec(db: *int, sql: String) -> int
int nyx_sqlite_exec(void* db, nyx_string* sql) {
    if (!db || !g_exec) return -1;
    char* errmsg = NULL;
    int rc = g_exec((nyx_db3*)db, ns_cstr(sql), NULL, NULL, &errmsg);
    if (errmsg && g_free) g_free(errmsg);
    return rc == SQLITE_OK ? 0 : -1;
}

// nyx_sqlite_prepare(db: *int, sql: String) -> *int
void* nyx_sqlite_prepare(void* db, nyx_string* sql) {
    if (!db || !g_prepare) return NULL;
    nyx_stmt3* stmt = NULL;
    int rc = g_prepare((nyx_db3*)db, ns_cstr(sql), -1, &stmt, NULL);
    if (rc != SQLITE_OK) return NULL;
    return (void*)stmt;
}

int nyx_sqlite_step(void* stmt) {
    if (!stmt || !g_step) return -1;
    int rc = g_step((nyx_stmt3*)stmt);
    if (rc == SQLITE_ROW)  return 1;
    if (rc == SQLITE_DONE) return 0;
    return -1;
}

void nyx_sqlite_finalize(void* stmt) {
    if (stmt && g_fin) g_fin((nyx_stmt3*)stmt);
}

int nyx_sqlite_column_count(void* stmt) {
    if (!stmt || !g_ncols) return 0;
    return g_ncols((nyx_stmt3*)stmt);
}

// El texto de la celda. Un NULL de SQL YA NO se disfraza de cadena "NULL":
// esa traducción perdía información (un TEXT que dijera "NULL" y un NULL real
// volvían idénticos). Quien lee la celda pregunta antes por
// nyx_sqlite_column_is_null(); acá el fallback es la cadena vacía, que es lo
// único honesto cuando no hay texto que devolver.
nyx_string* nyx_sqlite_column_str(void* stmt, int64_t col) {
    if (!stmt || !g_ctext) return nyx_string_from_cstr("");
    const char* txt = g_ctext((nyx_stmt3*)stmt, (int)col);
    return nyx_string_from_cstr(txt ? txt : "");
}

// 1 si la celda es SQL NULL, 0 si no. Devuelve int64_t (no int) a propósito:
// un C `int` de 32 bits no se sign-extiende al cruzar a un `int` de Nyx
// (LLM.md §5.1) y este valor se compara contra un literal del lado Nyx.
int64_t nyx_sqlite_column_is_null(void* stmt, int64_t col) {
    if (!stmt || !g_ctype) return 0;
    return g_ctype((nyx_stmt3*)stmt, (int)col) == SQLITE_NULL ? 1 : 0;
}

nyx_string* nyx_sqlite_column_name(void* stmt, int64_t col) {
    if (!stmt || !g_cname) return nyx_string_from_cstr("");
    const char* name = g_cname((nyx_stmt3*)stmt, (int)col);
    return nyx_string_from_cstr(name ? name : "");
}

// sqlite3_column_int64, NO sqlite3_column_int: el `int` de sqlite es de 32
// bits y truncaba en silencio todo valor >= 2^31 (medido: 5000000000 volvía
// como 705032704). Un importe en centavos o un id grande de un ERP entra de
// lleno en ese rango, así que la vía TIPADA — la que la documentación
// recomienda usar para columnas numéricas — devolvía un número equivocado sin
// una sola señal. g_cint queda como respaldo por si la libsqlite3 cargada no
// exportara el símbolo de 64 bits.
int64_t nyx_sqlite_column_int(void* stmt, int64_t col) {
    if (!stmt) return 0;
    if (g_cint64) return g_cint64((nyx_stmt3*)stmt, (int)col);
    if (g_cint)   return g_cint((nyx_stmt3*)stmt, (int)col);
    return 0;
}

double nyx_sqlite_column_float(void* stmt, int64_t col) {
    if (!stmt || !g_cdbl) return 0.0;
    return g_cdbl((nyx_stmt3*)stmt, (int)col);
}

// nyx_sqlite_bind_str(stmt: *int, idx: int, val: String) -> int
int nyx_sqlite_bind_str(void* stmt, int64_t idx, nyx_string* val) {
    if (!stmt || !g_btxt) return -1;
    return g_btxt((nyx_stmt3*)stmt, (int)idx, ns_cstr(val), -1, SQLITE_TRANSIENT) == SQLITE_OK ? 0 : -1;
}

// Simétrico a nyx_sqlite_column_int: el `(int)val` truncaba el parámetro a 32
// bits antes de que sqlite lo viera, de modo que el valor GUARDADO ya era el
// equivocado. sqlite3_bind_int64 lo pasa entero.
int nyx_sqlite_bind_int(void* stmt, int64_t idx, int64_t val) {
    if (!stmt) return -1;
    if (g_bint64) return g_bint64((nyx_stmt3*)stmt, (int)idx, val) == SQLITE_OK ? 0 : -1;
    if (g_bint)   return g_bint((nyx_stmt3*)stmt, (int)idx, (int)val) == SQLITE_OK ? 0 : -1;
    return -1;
}

// Contraparte de la centinela de NULL del lado Nyx: sin esto no habría forma
// de PASAR un NULL como parámetro (el centinela de un byte 0x00 se ligaba como
// TEXT y, con la longitud -1 de bind_text, llegaba a la base como cadena
// vacía — otro valor equivocado en silencio).
int nyx_sqlite_bind_null(void* stmt, int64_t idx) {
    if (!stmt || !g_bnull) return -1;
    return g_bnull((nyx_stmt3*)stmt, (int)idx) == SQLITE_OK ? 0 : -1;
}

int nyx_sqlite_bind_double(void* stmt, int64_t idx, double val) {
    if (!stmt || !g_bdbl) return -1;
    return g_bdbl((nyx_stmt3*)stmt, (int)idx, val) == SQLITE_OK ? 0 : -1;
}

int64_t nyx_sqlite_last_insert_id(void* db) {
    if (!db || !g_lastid) return -1;
    return g_lastid((nyx_db3*)db);
}

int64_t nyx_sqlite_changes(void* db) {
    if (!db || !g_changes) return 0;
    return g_changes((nyx_db3*)db);
}

nyx_string* nyx_sqlite_errmsg(void* db) {
    if (!db || !g_errmsg) return nyx_string_from_cstr("sqlite not available");
    const char* msg = g_errmsg((nyx_db3*)db);
    return nyx_string_from_cstr(msg ? msg : "");
}
