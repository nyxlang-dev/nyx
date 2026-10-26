// ============================================
// RUNTIME/CSV.C — núcleo del lector columnar de std/csv
// ============================================
// Parsea un CSV (RFC 4180) en UNA pasada directo a columnas tipadas, sin un
// String por campo: los números se convierten sobre el rango de bytes y una
// columna `cat` guarda códigos int + un diccionario con cada valor una vez.
// Por qué en C y no en Nyx: el spike del 2026-10-25 (5M filas) midió el mismo
// parseo en Nyx puro en 2.22 s (2.07 s con charAt inline) y en C en 0.60 s; el
// costo en Nyx está repartido entre la llamada opaca por byte y el acceso a
// casillas de un Array sin tipo (ver docs/design/specs/2026-10-25-csv-columnar-design.md).
//
// Contrato (lo consume std/csv.nx):
//   nyx_csv_read(texto, esquema, delim, header, max_rows)
//     -> [error: String, filas: int, col_0, col_1, ...]   error == "" si salió bien
//   esquema = "nombre:tipo,..." con tipo int | float | str | cat. Con cabecera, los
//   nombres se buscan en ella (orden libre; las columnas no nombradas se saltan
//   sin convertir). Sin cabecera, el esquema lista todas las columnas en orden.
//   Estricto: número vacío o inválido, fila con otra cantidad de campos, comilla
//   sin cerrar o texto tras la comilla de cierre son error con fila y columna.
//   Las filas se numeran 1-based contando la cabecera, por REGISTRO (uno que
//   ocupa dos líneas por un salto entre comillas cuenta una vez).
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <gc.h>

#include "csv.h"

enum { CSV_INT = 1, CSV_FLOAT = 2, CSV_STR = 3, CSV_CAT = 4 };

typedef struct {
    const char* nombre;
    int64_t nlen;
    int tipo;
    int64_t origen;         // índice de la columna en el archivo
    nyx_array_t* datos;     // valores (int / float / String) o códigos (cat)
    nyx_array_t* dicc;      // solo cat
    // Hash abierto del diccionario (solo cat): pares (hash, código), cap potencia de 2.
    uint64_t* h_hash;
    int64_t* h_codigo;
    int64_t h_cap;
} CsvCol;

typedef struct {
    const char* p;          // cursor
    const char* fin;        // fin del texto
    char delim;
    int64_t registro;       // número de registro actual, 1-based contando la cabecera
    char error[512];
} CsvLector;

// Un campo: los bytes [ini, fin). `escapado` = tiene "" adentro (hay que colapsarlas).
typedef struct {
    const char* ini;
    const char* fin;
    bool escapado;
    int corte;              // 0 = delimitador (sigue el registro), 1 = fin de registro
} CsvCampo;

// ===== Resultado =====

static nyx_array_t* csv_resultado_error(const char* msg) {
    nyx_array_t* out = nyx_array_new(2);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(msg), NYX_TAG_STRING);
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    return out;
}

// Un valor para un mensaje de error: entre comillas y recortado.
static void csv_mostrar(char* dst, size_t cap, const char* p, int64_t n) {
    const int64_t max = 40;
    if (n <= max) snprintf(dst, cap, "\"%.*s\"", (int)n, p);
    else snprintf(dst, cap, "\"%.*s…\"", (int)max, p);
}

// ===== Números =====

// Enteros: nyx_parse_int_bytes (runtime/strings.c), el mismo parseo que
// string_to_int_or. Un entero que no entra en 64 bits es inválido, no se
// satura (decisión de Ottavio, 2026-10-25).

// ===== Campos =====

// Lee el próximo campo desde l->p. Devuelve false con l->error puesto si el
// campo está mal formado. Un \r solo o \r\n terminan el registro.
static bool csv_campo(CsvLector* l, CsvCampo* c) {
    const char* p = l->p;
    const char* fin = l->fin;
    c->escapado = false;
    if (p < fin && *p == '"') {
        p++;
        c->ini = p;
        for (;;) {
            const char* q = memchr(p, '"', (size_t)(fin - p));
            if (!q) {
                snprintf(l->error, sizeof l->error, "csv: fila %lld: comilla sin cerrar",
                         (long long)l->registro);
                return false;
            }
            if (q + 1 < fin && q[1] == '"') { c->escapado = true; p = q + 2; continue; }
            c->fin = q;
            p = q + 1;
            break;
        }
        if (p < fin && *p != l->delim && *p != '\n' && *p != '\r') {
            snprintf(l->error, sizeof l->error,
                     "csv: fila %lld: texto después de la comilla de cierre",
                     (long long)l->registro);
            return false;
        }
    } else {
        c->ini = p;
        char d = l->delim;
        while (p < fin && *p != d && *p != '\n' && *p != '\r') p++;
        c->fin = p;
    }
    if (p >= fin) { c->corte = 1; l->p = p; return true; }
    if (*p == l->delim) { c->corte = 0; l->p = p + 1; return true; }
    // fin de registro: \n, \r\n o \r
    if (*p == '\r' && p + 1 < fin && p[1] == '\n') p++;
    c->corte = 1;
    l->p = p + 1;
    return true;
}

// El valor del campo, con "" colapsadas a " si hace falta (solo str/cat/cabecera).
static const char* csv_valor(const CsvCampo* c, int64_t* n, char* pila, size_t cap) {
    int64_t len = c->fin - c->ini;
    if (!c->escapado) { *n = len; return c->ini; }
    char* buf = (len < (int64_t)cap) ? pila : (char*)GC_malloc_atomic((size_t)len + 1);
    int64_t j = 0;
    for (const char* q = c->ini; q < c->fin; q++) {
        buf[j++] = *q;
        if (*q == '"' && q + 1 < c->fin && q[1] == '"') q++;
    }
    *n = j;
    return buf;
}

// Saltea líneas vacías (\n, \r\n, \r) al inicio de un registro.
static void csv_saltar_vacias(CsvLector* l) {
    while (l->p < l->fin && (*l->p == '\n' || *l->p == '\r')) l->p++;
}

// ===== Diccionario de una columna cat =====

static uint64_t csv_hash(const char* p, int64_t n) {
    uint64_t h = 1469598103934665603ULL;            // FNV-1a
    for (int64_t i = 0; i < n; i++) { h ^= (unsigned char)p[i]; h *= 1099511628211ULL; }
    return h | 1;                                     // 0 = casilla libre
}

static void csv_dicc_rehash(CsvCol* c, int64_t cap) {
    uint64_t* hh = (uint64_t*)GC_malloc_atomic(sizeof(uint64_t) * (size_t)cap);
    int64_t* hc = (int64_t*)GC_malloc_atomic(sizeof(int64_t) * (size_t)cap);
    memset(hh, 0, sizeof(uint64_t) * (size_t)cap);
    for (int64_t i = 0; i < c->h_cap; i++) {
        if (!c->h_hash[i]) continue;
        int64_t j = (int64_t)(c->h_hash[i] & (uint64_t)(cap - 1));
        while (hh[j]) j = (j + 1) & (cap - 1);
        hh[j] = c->h_hash[i];
        hc[j] = c->h_codigo[i];
    }
    c->h_hash = hh;
    c->h_codigo = hc;
    c->h_cap = cap;
}

static int64_t csv_dicc_codigo(CsvCol* c, const char* p, int64_t n) {
    uint64_t h = csv_hash(p, n);
    int64_t i = (int64_t)(h & (uint64_t)(c->h_cap - 1));
    while (c->h_hash[i]) {
        if (c->h_hash[i] == h) {
            nyx_string* s = (nyx_string*)c->dicc->data[c->h_codigo[i]];
            if (s->length == n && memcmp(s->data, p, (size_t)n) == 0) return c->h_codigo[i];
        }
        i = (i + 1) & (c->h_cap - 1);
    }
    int64_t codigo = c->dicc->length;
    nyx_array_push_tagged(c->dicc, (int64_t)nyx_string_from_ptr(p, n), NYX_TAG_STRING);
    c->h_hash[i] = h;
    c->h_codigo[i] = codigo;
    if ((codigo + 1) * 2 > c->h_cap) csv_dicc_rehash(c, c->h_cap * 2);
    return codigo;
}

// ===== Esquema =====

static const char* csv_tipo_nombre(int t) {
    switch (t) {
        case CSV_INT: return "int";
        case CSV_FLOAT: return "float";
        case CSV_STR: return "str";
        default: return "cat";
    }
}

static bool csv_es_espacio(char ch) { return ch == ' ' || ch == '\t'; }

// Parte "a:int, b:cat" en columnas. Devuelve la cantidad, o -1 con err puesto.
static int64_t csv_esquema(nyx_string* esquema, CsvCol** out, char* err, size_t errcap) {
    const char* p = esquema ? esquema->data : "";
    const char* fin = esquema ? esquema->data + esquema->length : p;
    int64_t cap = 8, n = 0;
    CsvCol* cols = (CsvCol*)GC_malloc(sizeof(CsvCol) * (size_t)cap);
    while (p < fin) {
        const char* e = memchr(p, ',', (size_t)(fin - p));
        if (!e) e = fin;
        const char* a = p;
        const char* b = e;
        while (a < b && csv_es_espacio(*a)) a++;
        while (b > a && csv_es_espacio(b[-1])) b--;
        if (a < b) {
            const char* dos = memchr(a, ':', (size_t)(b - a));
            if (!dos) {
                snprintf(err, errcap, "csv: esquema: '%.*s' no tiene la forma nombre:tipo",
                         (int)(b - a), a);
                return -1;
            }
            const char* na = a;
            const char* nb = dos;
            while (nb > na && csv_es_espacio(nb[-1])) nb--;
            const char* ta = dos + 1;
            while (ta < b && csv_es_espacio(*ta)) ta++;
            int64_t tl = b - ta;
            int tipo = 0;
            if (tl == 3 && memcmp(ta, "int", 3) == 0) tipo = CSV_INT;
            else if (tl == 5 && memcmp(ta, "float", 5) == 0) tipo = CSV_FLOAT;
            else if (tl == 3 && memcmp(ta, "str", 3) == 0) tipo = CSV_STR;
            else if (tl == 3 && memcmp(ta, "cat", 3) == 0) tipo = CSV_CAT;
            if (!tipo) {
                snprintf(err, errcap, "csv: esquema: tipo desconocido '%.*s' en '%.*s' (int, float, str o cat)",
                         (int)tl, ta, (int)(b - a), a);
                return -1;
            }
            if (nb == na) {
                snprintf(err, errcap, "csv: esquema: falta el nombre en '%.*s'", (int)(b - a), a);
                return -1;
            }
            for (int64_t k = 0; k < n; k++) {
                if (cols[k].nlen == nb - na && memcmp(cols[k].nombre, na, (size_t)(nb - na)) == 0) {
                    snprintf(err, errcap, "csv: esquema: columna '%.*s' repetida", (int)(nb - na), na);
                    return -1;
                }
            }
            if (n == cap) {
                cap *= 2;
                CsvCol* nc = (CsvCol*)GC_malloc(sizeof(CsvCol) * (size_t)cap);
                memcpy(nc, cols, sizeof(CsvCol) * (size_t)n);
                cols = nc;
            }
            memset(&cols[n], 0, sizeof(CsvCol));
            cols[n].nombre = na;
            cols[n].nlen = nb - na;
            cols[n].tipo = tipo;
            cols[n].origen = n;
            n++;
        }
        p = e + 1;
    }
    if (n == 0) {
        snprintf(err, errcap, "csv: esquema vacío (se espera \"nombre:tipo,...\")");
        return -1;
    }
    *out = cols;
    return n;
}

// ===== Lector =====

static bool csv_delim_valido(int64_t delim, char* err, size_t cap) {
    if (delim <= 0 || delim > 255 || delim == '"' || delim == '\n' || delim == '\r') {
        snprintf(err, cap, "csv: delimitador inválido (un byte que no sea comilla ni salto de línea)");
        return false;
    }
    return true;
}

static void csv_saltar_bom(CsvLector* l) {
    if (l->fin - l->p >= 3 && (unsigned char)l->p[0] == 0xEF &&
        (unsigned char)l->p[1] == 0xBB && (unsigned char)l->p[2] == 0xBF) {
        l->p += 3;
    }
}

// Lee la cabecera y fija `origen` de cada columna del esquema. Devuelve la
// cantidad de campos de la cabecera, o -1 con l->error puesto.
static int64_t csv_cabecera(CsvLector* l, CsvCol* cols, int64_t ncols) {
    csv_saltar_vacias(l);
    if (l->p >= l->fin) {
        snprintf(l->error, sizeof l->error, "csv: falta la cabecera (el texto está vacío)");
        return -1;
    }
    for (int64_t k = 0; k < ncols; k++) cols[k].origen = -1;
    int64_t campos = 0;
    CsvCampo c;
    do {
        if (!csv_campo(l, &c)) return -1;
        char pila[256];
        int64_t n;
        const char* v = csv_valor(&c, &n, pila, sizeof pila);
        for (int64_t k = 0; k < ncols; k++) {
            if (cols[k].nlen == n && memcmp(cols[k].nombre, v, (size_t)n) == 0) {
                if (cols[k].origen >= 0) {
                    snprintf(l->error, sizeof l->error,
                             "csv: la columna '%.*s' aparece dos veces en la cabecera",
                             (int)n, v);
                    return -1;
                }
                cols[k].origen = campos;
            }
        }
        campos++;
    } while (c.corte == 0);
    for (int64_t k = 0; k < ncols; k++) {
        if (cols[k].origen < 0) {
            snprintf(l->error, sizeof l->error, "csv: esquema: la columna '%.*s' no está en la cabecera",
                     (int)cols[k].nlen, cols[k].nombre);
            return -1;
        }
    }
    l->registro++;
    return campos;
}

// Cota superior de los registros: cantidad de \n + cantidad de \r + 1. Tiene que
// cubrir TODO lo que csv_campo acepta como fin de registro, y eso incluye un \r
// solo (archivos del Mac clásico): con solo los \n, un archivo separado por \r
// daba cota 1 y el llenado escribía fuera de la capacidad de las columnas,
// pisando el heap del GC en silencio (review del arco, 2026-10-25). Un \r\n
// cuenta dos veces y un salto entre comillas también suma: la cota se agranda,
// nunca se achica. Así los arrays nacen con su capacidad final.
static int64_t csv_contar_byte(const char* p, const char* fin, char b) {
    int64_t n = 0;
    while (p < fin) {
        const char* q = memchr(p, b, (size_t)(fin - p));
        if (!q) break;
        n++;
        p = q + 1;
    }
    return n;
}

static int64_t csv_cota_filas(const char* p, const char* fin) {
    return 1 + csv_contar_byte(p, fin, '\n') + csv_contar_byte(p, fin, '\r');
}

static void csv_poner(nyx_array_t* a, int64_t i, int64_t v, uint8_t tag) {
    a->data[i] = v;
    a->tags[i] = tag;
}

nyx_array_t* nyx_csv_read(nyx_string* texto, nyx_string* esquema, int64_t delim,
                          int64_t header, int64_t max_rows) {
    char err[512];
    if (!csv_delim_valido(delim, err, sizeof err)) return csv_resultado_error(err);
    CsvCol* cols;
    int64_t ncols = csv_esquema(esquema, &cols, err, sizeof err);
    if (ncols < 0) return csv_resultado_error(err);

    CsvLector l;
    l.p = texto ? texto->data : "";
    l.fin = texto ? texto->data + texto->length : l.p;
    l.delim = (char)delim;
    l.registro = 1;
    l.error[0] = '\0';
    csv_saltar_bom(&l);

    int64_t campos_archivo = ncols;
    if (header) {
        campos_archivo = csv_cabecera(&l, cols, ncols);
        if (campos_archivo < 0) return csv_resultado_error(l.error);
    }

    // destino[f] = columna del esquema que se llena con el campo f, o -1.
    int64_t* destino = (int64_t*)GC_malloc_atomic(sizeof(int64_t) * (size_t)campos_archivo);
    for (int64_t f = 0; f < campos_archivo; f++) destino[f] = -1;
    for (int64_t k = 0; k < ncols; k++) destino[cols[k].origen] = k;

    int64_t cota = csv_cota_filas(l.p, l.fin);
    if (max_rows > 0 && max_rows < cota) cota = max_rows;
    for (int64_t k = 0; k < ncols; k++) {
        cols[k].datos = nyx_array_new(cota);
        if (cols[k].tipo == CSV_CAT) {
            cols[k].dicc = nyx_array_new(16);
            cols[k].h_cap = 64;
            cols[k].h_hash = (uint64_t*)GC_malloc_atomic(sizeof(uint64_t) * 64);
            cols[k].h_codigo = (int64_t*)GC_malloc_atomic(sizeof(int64_t) * 64);
            memset(cols[k].h_hash, 0, sizeof(uint64_t) * 64);
        }
    }

    int64_t filas = 0;
    for (;;) {
        csv_saltar_vacias(&l);
        if (l.p >= l.fin) break;
        if (max_rows > 0 && filas >= max_rows) break;
        // Defensa en profundidad: la cota cubre todo fin de registro, así que
        // esto no debería pasar nunca; si pasa, error y no una escritura fuera
        // de la capacidad (que en memoria del GC ni ASan ve).
        if (filas >= cota) {
            snprintf(err, sizeof err, "csv: error interno: más registros que la cota (%lld)",
                     (long long)cota);
            return csv_resultado_error(err);
        }
        int64_t f = 0;
        CsvCampo c;
        do {
            if (!csv_campo(&l, &c)) return csv_resultado_error(l.error);
            int64_t k = f < campos_archivo ? destino[f] : -1;
            if (k >= 0) {
                CsvCol* col = &cols[k];
                int64_t n = c.fin - c.ini;
                int ok = 1;
                switch (col->tipo) {
                    case CSV_INT: {
                        int64_t v = c.escapado ? (ok = NYX_INT_INVALIDO, 0) : nyx_parse_int_bytes(c.ini, n, &ok);
                        if (ok == NYX_INT_OK) csv_poner(col->datos, filas, v, NYX_TAG_INT);
                        break;
                    }
                    case CSV_FLOAT: {
                        double d = c.escapado ? (ok = 0, 0.0) : nyx_parse_float_bytes(c.ini, n, &ok);
                        int64_t bits;
                        memcpy(&bits, &d, sizeof bits);
                        if (ok == 1) csv_poner(col->datos, filas, bits, NYX_TAG_FLOAT);
                        break;
                    }
                    case CSV_STR: {
                        char pila[256];
                        int64_t vn;
                        const char* v = csv_valor(&c, &vn, pila, sizeof pila);
                        csv_poner(col->datos, filas, (int64_t)nyx_string_from_ptr(v, vn), NYX_TAG_STRING);
                        break;
                    }
                    default: {
                        char pila[256];
                        int64_t vn;
                        const char* v = csv_valor(&c, &vn, pila, sizeof pila);
                        csv_poner(col->datos, filas, csv_dicc_codigo(col, v, vn), NYX_TAG_INT);
                        break;
                    }
                }
                // ok vale 1 si salió bien (NYX_INT_OK == 1 y el ok de los floats);
                // ojo: NYX_INT_DESBORDE es -1, que en C es «verdadero».
                if (ok != 1) {
                    char mostrado[64];
                    csv_mostrar(mostrado, sizeof mostrado, c.ini, n);
                    if (ok == NYX_INT_DESBORDE) {
                        snprintf(err, sizeof err, "csv: fila %lld, columna '%.*s': %s no entra en un int (64 bits)",
                                 (long long)l.registro, (int)col->nlen, col->nombre, mostrado);
                    } else {
                        snprintf(err, sizeof err, "csv: fila %lld, columna '%.*s': %s no es %s",
                                 (long long)l.registro, (int)col->nlen, col->nombre, mostrado,
                                 csv_tipo_nombre(col->tipo));
                    }
                    return csv_resultado_error(err);
                }
            }
            f++;
        } while (c.corte == 0);
        if (f != campos_archivo) {
            snprintf(err, sizeof err, "csv: fila %lld tiene %lld campo%s, se esperaban %lld",
                     (long long)l.registro, (long long)f, f == 1 ? "" : "s",
                     (long long)campos_archivo);
            return csv_resultado_error(err);
        }
        filas++;
        l.registro++;
    }

    int64_t salidas = 0;
    for (int64_t k = 0; k < ncols; k++) salidas += cols[k].tipo == CSV_CAT ? 2 : 1;
    nyx_array_t* out = nyx_array_new(2 + salidas);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
    nyx_array_push_tagged(out, filas, NYX_TAG_INT);
    for (int64_t k = 0; k < ncols; k++) {
        cols[k].datos->length = filas;
        nyx_array_push_tagged(out, (int64_t)cols[k].datos, NYX_TAG_ARRAY);
        if (cols[k].tipo == CSV_CAT) nyx_array_push_tagged(out, (int64_t)cols[k].dicc, NYX_TAG_ARRAY);
    }
    return out;
}

// ===== Esquema propuesto =====

// Mira las primeras 1000 filas: int si todo parsea como entero, si no float si
// todo parsea como número, si no cat cuando los distintos son a lo sumo la
// mitad de las filas, si no str. Un campo vacío fuerza str (los números son
// estrictos). Es un punto de partida: se imprime, se revisa y se pega.
#define CSV_GUESS_FILAS 1000

nyx_array_t* nyx_csv_guess_schema(nyx_string* texto, int64_t delim, int64_t header) {
    char err[512];
    if (!csv_delim_valido(delim, err, sizeof err)) return csv_resultado_error(err);
    CsvLector l;
    l.p = texto ? texto->data : "";
    l.fin = texto ? texto->data + texto->length : l.p;
    l.delim = (char)delim;
    l.registro = 1;
    l.error[0] = '\0';
    csv_saltar_bom(&l);

    // Nombres: de la cabecera, o c0, c1, ... contando los campos de la primera fila.
    nyx_array_t* nombres = nyx_array_new(8);
    csv_saltar_vacias(&l);
    if (l.p >= l.fin) {
        snprintf(err, sizeof err, "csv: no hay filas para proponer un esquema");
        return csv_resultado_error(err);
    }
    CsvCampo c;
    if (header) {
        do {
            if (!csv_campo(&l, &c)) return csv_resultado_error(l.error);
            char pila[256];
            int64_t n;
            const char* v = csv_valor(&c, &n, pila, sizeof pila);
            // El esquema propuesto tiene que ser uno que nyx_csv_read acepte tal
            // cual: csv_esquema recorta espacios y tabs del nombre y rechaza los
            // repetidos, y csv_cabecera compara exacto (review del arco).
            if (memchr(v, ':', (size_t)n) || memchr(v, ',', (size_t)n) || n == 0 ||
                csv_es_espacio(v[0]) || csv_es_espacio(v[n - 1])) {
                snprintf(err, sizeof err,
                         "csv: la columna '%.*s' no se puede nombrar en un esquema (vacía, con ':' o ',', o con espacios en los bordes)",
                         (int)n, v);
                return csv_resultado_error(err);
            }
            for (int64_t k = 0; k < nombres->length; k++) {
                nyx_string* previo = (nyx_string*)nombres->data[k];
                if (previo->length == n && memcmp(previo->data, v, (size_t)n) == 0) {
                    snprintf(err, sizeof err,
                             "csv: la columna '%.*s' aparece dos veces en la cabecera", (int)n, v);
                    return csv_resultado_error(err);
                }
            }
            nyx_array_push_tagged(nombres, (int64_t)nyx_string_from_ptr(v, n), NYX_TAG_STRING);
        } while (c.corte == 0);
        l.registro++;
    } else {
        CsvLector mira = l;
        int64_t f = 0;
        do {
            if (!csv_campo(&mira, &c)) return csv_resultado_error(mira.error);
            char nombre[32];
            snprintf(nombre, sizeof nombre, "c%lld", (long long)f++);
            nyx_array_push_tagged(nombres, (int64_t)nyx_string_from_cstr(nombre), NYX_TAG_STRING);
        } while (c.corte == 0);
    }
    int64_t ncols = nombres->length;
    bool* puede_int = (bool*)GC_malloc_atomic((size_t)ncols);
    bool* puede_float = (bool*)GC_malloc_atomic((size_t)ncols);
    bool* hay_vacio = (bool*)GC_malloc_atomic((size_t)ncols);
    CsvCol* dicc = (CsvCol*)GC_malloc(sizeof(CsvCol) * (size_t)ncols);
    for (int64_t k = 0; k < ncols; k++) {
        puede_int[k] = puede_float[k] = true;
        hay_vacio[k] = false;
        memset(&dicc[k], 0, sizeof(CsvCol));
        dicc[k].dicc = nyx_array_new(16);
        dicc[k].h_cap = 64;
        dicc[k].h_hash = (uint64_t*)GC_malloc_atomic(sizeof(uint64_t) * 64);
        dicc[k].h_codigo = (int64_t*)GC_malloc_atomic(sizeof(int64_t) * 64);
        memset(dicc[k].h_hash, 0, sizeof(uint64_t) * 64);
    }
    int64_t filas = 0;
    while (filas < CSV_GUESS_FILAS) {
        csv_saltar_vacias(&l);
        if (l.p >= l.fin) break;
        int64_t f = 0;
        do {
            if (!csv_campo(&l, &c)) return csv_resultado_error(l.error);
            if (f < ncols) {
                char pila[256];
                int64_t n;
                const char* v = csv_valor(&c, &n, pila, sizeof pila);
                int ok;
                if (n == 0) hay_vacio[f] = true;
                if (puede_int[f]) { nyx_parse_int_bytes(v, n, &ok); puede_int[f] = (ok == NYX_INT_OK); }
                if (puede_float[f]) { nyx_parse_float_bytes(v, n, &ok); puede_float[f] = (ok == 1); }
                // Con muchos distintos ya es str: no hace falta seguir llenando el diccionario.
                if (dicc[f].dicc->length <= CSV_GUESS_FILAS / 2) csv_dicc_codigo(&dicc[f], v, n);
            }
            f++;
        } while (c.corte == 0);
        if (f != ncols) {
            snprintf(err, sizeof err, "csv: fila %lld tiene %lld campo%s, se esperaban %lld",
                     (long long)l.registro, (long long)f, f == 1 ? "" : "s", (long long)ncols);
            return csv_resultado_error(err);
        }
        filas++;
        l.registro++;
    }

    size_t cap = 64;
    for (int64_t k = 0; k < ncols; k++) cap += (size_t)((nyx_string*)nombres->data[k])->length + 8;
    char* buf = (char*)GC_malloc_atomic(cap);
    size_t j = 0;
    for (int64_t k = 0; k < ncols; k++) {
        nyx_string* nom = (nyx_string*)nombres->data[k];
        const char* tipo = "str";
        if (!hay_vacio[k] && filas > 0) {
            if (puede_int[k]) tipo = "int";
            else if (puede_float[k]) tipo = "float";
            else if (dicc[k].dicc->length * 2 <= filas) tipo = "cat";
        }
        if (k > 0) buf[j++] = ',';
        memcpy(buf + j, nom->data, (size_t)nom->length);
        j += (size_t)nom->length;
        buf[j++] = ':';
        size_t tl = strlen(tipo);
        memcpy(buf + j, tipo, tl);
        j += tl;
    }
    nyx_array_t* out = nyx_array_new(2);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(buf, (int64_t)j), NYX_TAG_STRING);
    return out;
}
