// ============================================
// TIME.C - Date/Time support for Nyx
// ============================================
// Wraps POSIX <time.h> (time, localtime, strftime, strptime, mktime)
// for use from Nyx code compiled via LLVM IR.
//
// Allocation policy:
//   - Intermediate char buffers: GC_MALLOC_ATOMIC (no internal GC pointers).
//   - nyx_string* structs returned by helpers: allocated inside
//     nyx_string_from_cstr() / nyx_string_from_ptr(), which use GC_MALLOC.
//   - Never call free().
//
// Thread safety: localtime() is not re-entrant; if Nyx threading is used,
// callers should be aware that two concurrent time calls may race on the
// static tm buffer returned by localtime(). Use localtime_r() if that
// becomes a concern — we keep it simple here because Nyx datetime ops are
// not expected to be performance-critical hot paths.
// ============================================

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>   // ENOSYS — distinguir "la plataforma no puede" de "no matcheo"
#include <time.h>
#include <gc.h>
#include "strings.h"
#include "time.h"
#include "os/nyx_os.h"   // os_time_parse (strptime no existe en la CRT de MSVC)

// Buffer size for strftime output.  256 bytes covers all reasonable datetime
// format strings; we cap it there to avoid unbounded stack allocation.
#define NYX_TIME_BUF 256

// ES: Lock del camino LOCAL. La cabecera de este archivo admitía que
// localtime() no es re-entrante y que dos llamadas concurrentes podían
// pisarse en su buffer estático, y lo dejaba pasar con un "no se espera que
// sea hot path". Eso no es una razón para tener una condición de carrera: Nyx
// tiene threads y un scheduler M:N, así que la carrera es alcanzable hoy.
//
// POR QUÉ UN LOCK Y NO localtime_r: localtime_r es POSIX y NO existe en la CRT
// de MSVC (que tiene localtime_s, con otra firma y otro orden de argumentos).
// Este archivo compila en el port Windows (W0); un localtime_r lo rompería.
// os_mutex_t es la abstracción que el runtime YA tiene para exactamente esto
// y funciona en las tres plataformas. Init estático = todo ceros, válido en
// glibc y Win32 (contrato de nyx_os.h), así que no hace falta os_once.
//
// El camino UTC no toma este lock ni ningún otro: es aritmética pura.
// EN: lock for the LOCAL path; the UTC path is pure arithmetic and lock-free.
static os_mutex_t g_localtime_lock = OS_MUTEX_STATIC_INIT;

// ===== Internal helper =====

// Fills *tm_out with the local time breakdown for epoch.
// Returns 0 on success, -1 if localtime() returns NULL (epoch out of range).
static int epoch_to_tm(int64_t epoch, struct tm* tm_out) {
    time_t t = (time_t)epoch;
    // Único punto del archivo que llama localtime(). Los tres call sites que
    // había (este, nyx_datetime_now y nyx_datetime_format) se colapsaron acá
    // para que la regla del lock no se pueda olvidar en una de las copias.
    os_mutex_lock(&g_localtime_lock);
    struct tm* p = localtime(&t);
    int ok = (p != NULL);
    if (ok) *tm_out = *p;  // copiar FUERA del buffer estático, con el lock puesto
    os_mutex_unlock(&g_localtime_lock);
    return ok ? 0 : -1;
}

// ===== nyx_datetime_now =====

nyx_string* nyx_datetime_now() {
    struct tm tm_buf;
    if (epoch_to_tm((int64_t)time(NULL), &tm_buf) != 0) return nyx_string_from_cstr("");

    // GC_MALLOC_ATOMIC: char buffer, no GC pointers inside.
    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    strftime(buf, NYX_TIME_BUF, "%Y-%m-%d %H:%M:%S", &tm_buf);
    return nyx_string_from_cstr(buf);
}

// ===== nyx_datetime_format =====

nyx_string* nyx_datetime_format(nyx_string* fmt) {
    if (!fmt) return nyx_string_from_cstr("");

    const char* fmt_cstr = nyx_string_to_cstr(fmt);
    struct tm tm_buf;
    if (epoch_to_tm((int64_t)time(NULL), &tm_buf) != 0) return nyx_string_from_cstr("");

    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    size_t written = strftime(buf, NYX_TIME_BUF, fmt_cstr, &tm_buf);
    if (written == 0) {
        // strftime returns 0 when the format produced no output or the
        // buffer was too small.  Return empty string rather than garbage.
        return nyx_string_from_cstr("");
    }
    return nyx_string_from_ptr(buf, written);
}

// ===== nyx_datetime_format_epoch =====

// Formatea EL EPOCH DADO con fmt (strftime). A diferencia de
// nyx_datetime_format(fmt) — que formatea time(NULL), "ahora" — esta es la
// variante que toma el instante como argumento (Tanda A3, fricción ERP
// 2026-08-10: el SPEC documentaba una format de 2 args que no existía).
nyx_string* nyx_datetime_format_epoch(int64_t epoch, nyx_string* fmt) {
    if (!fmt) return nyx_string_from_cstr("");

    const char* fmt_cstr = nyx_string_to_cstr(fmt);
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return nyx_string_from_cstr("");

    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    size_t written = strftime(buf, NYX_TIME_BUF, fmt_cstr, &tm_buf);
    if (written == 0) return nyx_string_from_cstr("");
    return nyx_string_from_ptr(buf, written);
}

// ===== nyx_time_epoch =====

int64_t nyx_time_epoch() {
    return (int64_t)time(NULL);
}

// ===== nyx_datetime_from_epoch =====

nyx_string* nyx_datetime_from_epoch(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return nyx_string_from_cstr("");

    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    size_t written = strftime(buf, NYX_TIME_BUF, "%Y-%m-%d %H:%M:%S", &tm_buf);
    if (written == 0) return nyx_string_from_cstr("");
    return nyx_string_from_ptr(buf, written);
}

// ===== nyx_datetime_parse =====

int64_t nyx_datetime_parse(nyx_string* date_str, nyx_string* fmt) {
    if (!date_str || !fmt) return -1;

    const char* date_cstr = nyx_string_to_cstr(date_str);
    const char* fmt_cstr  = nyx_string_to_cstr(fmt);

    struct tm tm_buf;
    memset(&tm_buf, 0, sizeof(tm_buf));
    // tm_isdst = -1 tells mktime to figure out DST automatically.
    tm_buf.tm_isdst = -1;

    // os_time_parse (W2 fase C): strptime en posix/wasi, -ENOSYS en win32 (la
    // CRT de MSVC no lo tiene ni tiene equivalente). El camino de error es el
    // MISMO en las dos situaciones — devolver -1 — así que Windows no
    // inaugura ninguna semántica nueva acá: datetime_parse falla, igual que
    // falla en Linux cuando la fecha no matchea el formato.
    // EN: os_time_parse — strptime on posix/wasi, -ENOSYS on win32 (the MSVC
    // CRT has neither it nor an equivalent). The error path is IDENTICAL in
    // both cases — return -1 — so Windows introduces no new semantics here.
    //
    // Pero el MENSAJE sí se distingue (review de rama W2, M3): "strptime
    // failed to parse" es una MENTIRA en win32, donde no hay ningún strptime
    // que haya fallado — la plataforma no tiene la capacidad. Culpar al dato
    // del usuario por una carencia del port manda a depurar el formato de
    // fecha durante horas. El texto posix queda intacto: es el diagnóstico
    // correcto cuando SÍ hubo un parseo y no matcheó.
    // EN: the MESSAGE does distinguish (W2 branch review, M3): "strptime
    // failed to parse" is a LIE on win32, where no strptime ever ran — the
    // platform lacks the capability. Blaming the user's data for a missing
    // port sends people debugging their date format for hours. The posix
    // text is untouched: it is the right diagnosis when a parse did happen
    // and did not match.
    int parse_rc = os_time_parse(date_cstr, fmt_cstr, &tm_buf);
    if (parse_rc == -ENOSYS) {
        fprintf(stderr, "Nyx time error: date parsing not supported on this platform "
                        "/ el parseo de fechas no esta soportado en esta plataforma\n");
        return -1;
    }
    if (parse_rc != 0) {
        fprintf(stderr, "Nyx time error: strptime failed to parse '%s' with format '%s'\n",
                date_cstr, fmt_cstr);
        return -1;
    }

    time_t result = mktime(&tm_buf);
    if (result == (time_t)-1) {
        fprintf(stderr, "Nyx time error: mktime failed for parsed date '%s'\n", date_cstr);
        return -1;
    }

    return (int64_t)result;
}

// ===== Field extractors =====

int64_t nyx_datetime_year(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)(tm_buf.tm_year + 1900);  // tm_year is years since 1900
}

int64_t nyx_datetime_month(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)(tm_buf.tm_mon + 1);  // tm_mon is 0-based; Nyx uses 1-12
}

int64_t nyx_datetime_day(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)tm_buf.tm_mday;
}

int64_t nyx_datetime_hour(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)tm_buf.tm_hour;
}

int64_t nyx_datetime_minute(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)tm_buf.tm_min;
}

int64_t nyx_datetime_second(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    return (int64_t)tm_buf.tm_sec;
}

int64_t nyx_datetime_weekday(int64_t epoch) {
    struct tm tm_buf;
    if (epoch_to_tm(epoch, &tm_buf) != 0) return -1;
    // tm_wday is already 0=Sunday, 6=Saturday — matches the Nyx convention.
    return (int64_t)tm_buf.tm_wday;
}

// ============================================================================
// CAMINO UTC + REENTRANCIA (arco std-time, incremento 1, 2026-09-10)
// ============================================================================
// ES: Hasta hoy este archivo NO tenía ningún camino UTC: epoch_to_tm (arriba)
// llama localtime() y todos los accesores pasan por él. Medido: el mismo
// nyx_datetime_parse("2020-06-15 12:30:00", …) devuelve 1592224200 con TZ=UTC
// y 1592238600 con TZ=America/Caracas — 4 h de diferencia. El epoch es un
// instante absoluto, pero ENTRAR y SALIR de él dependía del huso del proceso.
// El arco fija que el instante canónico es UTC; esta sección es ese camino.
//
// EN: Until today this file had NO UTC path: epoch_to_tm (above) calls
// localtime() and every accessor goes through it. The arc makes UTC the
// canonical instant; this section is that path.
//
// POR QUÉ ARITMÉTICA ENTERA Y NO gmtime_r/timegm:
//   1. `timegm` es extensión GNU/BSD y `gmtime_r` es POSIX — ninguno existe en
//      la CRT de MSVC, y este archivo YA compila en el port Windows (W0). Un
//      gmtime_r acá rompería ese build; el algoritmo entero compila en C99 puro.
//   2. No toca NINGÚN estado global de libc: es reentrante por construcción,
//      sin lock y sin buffer estático. Es la respuesta correcta a la
//      no-reentrancia que la cabecera de este archivo admite.
//   3. Es exacto en todo el rango de int64 —incluido pre-1970, que el triage
//      del arco midió como caso real (1950 → -626054400)— sin depender de que
//      la plataforma tenga time_t de 64 bits.
//   4. No hay ningún TZ que consultar: UTC no es una zona que se busca, es la
//      definición del epoch. Cero I/O, cero tzdata.
//
// Algoritmos days_from_civil / civil_from_days: Howard Hinnant, "chrono-Compatible
// Low-Level Date Algorithms" (dominio público). Calendario gregoriano proléptico,
// año 0 = 1 a.C. Válidos para |año| < 32767 con este tipo de retorno.

// Sentinelas de error. FUERA DEL RANGO REPRESENTABLE a propósito: INT64_MIN es
// el año -292277022656, que no es un instante que nadie vaya a pedir. Esto
// existe porque el builtin viejo devuelve -1 al fallar y -1 ES UN INSTANTE
// VÁLIDO (1969-12-31 23:59:59Z) — medido: datetime_year(-1) = 1969, una
// respuesta correcta e indistinguible de un error. Un ERP que parsea una fecha
// mal tipeada guardaba 1969 en silencio. Las funciones NUEVAS de acá no repiten
// esa colisión, y std/time.nx las traduce a Result antes de que nadie las vea.
// Los builtins viejos conservan su -1 por compatibilidad (67 usos medidos).
#define NYX_TIME_INVALID     INT64_MIN         // no se pudo parsear la entrada
#define NYX_TIME_UNSUPPORTED (INT64_MIN + 1)   // la plataforma no sabe hacerlo

// Días desde 1970-01-01 para una fecha civil proléptica gregoriana.
// m en [1,12], d en [1,31].
static int64_t nyx_days_from_civil(int64_t y, int64_t m, int64_t d) {
    y -= (m <= 2);
    const int64_t era = (y >= 0 ? y : y - 399) / 400;
    const int64_t yoe = y - era * 400;                                  // [0, 399]
    const int64_t doy = (153 * (m + (m > 2 ? -3 : 9)) + 2) / 5 + d - 1; // [0, 365]
    const int64_t doe = yoe * 365 + yoe / 4 - yoe / 100 + doy;          // [0, 146096]
    return era * 146097 + doe - 719468;
}

// Inversa exacta de nyx_days_from_civil.
static void nyx_civil_from_days(int64_t z, int64_t* y, int64_t* m, int64_t* d) {
    z += 719468;
    const int64_t era = (z >= 0 ? z : z - 146096) / 146097;
    const int64_t doe = z - era * 146097;                               // [0, 146096]
    const int64_t yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365;
    const int64_t yy  = yoe + era * 400;
    const int64_t doy = doe - (365 * yoe + yoe / 4 - yoe / 100);        // [0, 365]
    const int64_t mp  = (5 * doy + 2) / 153;                            // [0, 11]
    const int64_t dd  = doy - (153 * mp + 2) / 5 + 1;                   // [1, 31]
    const int64_t mm  = mp + (mp < 10 ? 3 : -9);                        // [1, 12]
    *y = yy + (mm <= 2);
    *m = mm;
    *d = dd;
}

// División entera con redondeo hacia abajo (floor), no hacia cero. C trunca
// hacia cero, que para epochs NEGATIVOS daría el día equivocado: -1 / 86400 es
// 0 en C, pero -1 s cae en 1969-12-31, que es el día -1. Sin esto todo el
// pre-1970 se corre un día.
static void nyx_floor_divmod_86400(int64_t n, int64_t* days, int64_t* secs) {
    int64_t q = n / 86400;
    int64_t r = n % 86400;
    if (r < 0) { r += 86400; q -= 1; }
    *days = q;
    *secs = r;
}

// Descompone un epoch en `struct tm` UTC. Sin libc, sin lock, sin TZ.
static void nyx_epoch_to_tm_utc(int64_t epoch, struct tm* out) {
    int64_t days, secs;
    nyx_floor_divmod_86400(epoch, &days, &secs);

    int64_t y, m, d;
    nyx_civil_from_days(days, &y, &m, &d);

    memset(out, 0, sizeof(*out));
    out->tm_year = (int)(y - 1900);
    out->tm_mon  = (int)(m - 1);
    out->tm_mday = (int)d;
    out->tm_hour = (int)(secs / 3600);
    out->tm_min  = (int)((secs % 3600) / 60);
    out->tm_sec  = (int)(secs % 60);
    // 1970-01-01 fue jueves = 4. Módulo positivo para epochs negativos.
    out->tm_wday = (int)(((days % 7) + 11) % 7);
    out->tm_yday = (int)(days - nyx_days_from_civil(y, 1, 1));
    out->tm_isdst = 0;  // UTC no tiene horario de verano, nunca
}

// ===== Accesores UTC =====
// Espejo exacto de los datetime_* locales de arriba, sin su dependencia del
// huso. No comparten el sentinela -1 porque no pueden fallar: toda entrada
// int64 es un instante válido y produce una descomposición válida.

int64_t nyx_time_year_utc(int64_t epoch)    { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_year + 1900; }
int64_t nyx_time_month_utc(int64_t epoch)   { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_mon + 1; }
int64_t nyx_time_day_utc(int64_t epoch)     { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_mday; }
int64_t nyx_time_hour_utc(int64_t epoch)    { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_hour; }
int64_t nyx_time_minute_utc(int64_t epoch)  { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_min; }
int64_t nyx_time_second_utc(int64_t epoch)  { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_sec; }
int64_t nyx_time_weekday_utc(int64_t epoch) { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_wday; }
int64_t nyx_time_yday_utc(int64_t epoch)    { struct tm t; nyx_epoch_to_tm_utc(epoch, &t); return (int64_t)t.tm_yday; }

// Fecha civil UTC → epoch. Acepta valores fuera de rango y los normaliza por
// aritmética (mes 13 = enero del año siguiente), igual que mktime, PERO sin
// mktime: sin TZ y sin el (time_t)-1 ambiguo.
int64_t nyx_time_from_civil_utc(int64_t y, int64_t mo, int64_t d,
                                int64_t h, int64_t mi, int64_t s) {
    // Normalizar el mes ANTES de days_from_civil, que exige m en [1,12].
    int64_t m_adj = mo - 1;
    int64_t y_adj = y + (m_adj >= 0 ? m_adj / 12 : ((m_adj - 11) / 12));
    int64_t m_norm = m_adj - (y_adj - y) * 12 + 1;
    return nyx_days_from_civil(y_adj, m_norm, d) * 86400 + h * 3600 + mi * 60 + s;
}

// ===== Formateo UTC =====

// strftime sobre la descomposición UTC. Misma política de buffer y de retorno
// vacío que nyx_datetime_format_epoch, con el que es hermano.
nyx_string* nyx_time_format_utc(int64_t epoch, nyx_string* fmt) {
    if (!fmt) return nyx_string_from_cstr("");
    const char* fmt_cstr = nyx_string_to_cstr(fmt);
    struct tm tm_buf;
    nyx_epoch_to_tm_utc(epoch, &tm_buf);
    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    size_t written = strftime(buf, NYX_TIME_BUF, fmt_cstr, &tm_buf);
    if (written == 0) return nyx_string_from_cstr("");
    return nyx_string_from_ptr(buf, written);
}

// ===== Parseo con sentinela que NO colisiona =====

// Parsea date_str con fmt e interpreta el resultado como UTC. NO llama mktime:
// arma el epoch con aritmética, así que el valor NO depende del TZ del proceso
// —que es justo el bug que el triage midió en nyx_datetime_parse—.
// Devuelve NYX_TIME_INVALID si no matchea, NYX_TIME_UNSUPPORTED si la
// plataforma no tiene strptime. Nunca devuelve un instante inventado.
int64_t nyx_time_parse_utc(nyx_string* date_str, nyx_string* fmt) {
    if (!date_str || !fmt) return NYX_TIME_INVALID;
    const char* date_cstr = nyx_string_to_cstr(date_str);
    const char* fmt_cstr  = nyx_string_to_cstr(fmt);

    struct tm tm_buf;
    memset(&tm_buf, 0, sizeof(tm_buf));
    tm_buf.tm_mday = 1;   // un tm en cero tiene mday=0, que no es una fecha
    tm_buf.tm_isdst = 0;

    int rc = os_time_parse(date_cstr, fmt_cstr, &tm_buf);
    if (rc == -ENOSYS) return NYX_TIME_UNSUPPORTED;
    if (rc != 0)       return NYX_TIME_INVALID;

    // Sin mktime: el epoch sale de la aritmética civil, en UTC por definición.
    return nyx_time_from_civil_utc((int64_t)tm_buf.tm_year + 1900,
                                   (int64_t)tm_buf.tm_mon + 1,
                                   (int64_t)tm_buf.tm_mday,
                                   (int64_t)tm_buf.tm_hour,
                                   (int64_t)tm_buf.tm_min,
                                   (int64_t)tm_buf.tm_sec);
}

// Hermana local de la anterior: interpreta la fecha en el huso del proceso
// (mktime). Existe porque "las 9 de la mañana acá" es una petición legítima;
// lo que no es legítimo es que sea el ÚNICO camino, que es lo que había.
// Mismo contrato de sentinelas: nunca devuelve un instante inventado.
int64_t nyx_time_parse_local(nyx_string* date_str, nyx_string* fmt) {
    if (!date_str || !fmt) return NYX_TIME_INVALID;
    const char* date_cstr = nyx_string_to_cstr(date_str);
    const char* fmt_cstr  = nyx_string_to_cstr(fmt);

    struct tm tm_buf;
    memset(&tm_buf, 0, sizeof(tm_buf));
    tm_buf.tm_mday = 1;
    tm_buf.tm_isdst = -1;   // que mktime resuelva el horario de verano

    int rc = os_time_parse(date_cstr, fmt_cstr, &tm_buf);
    if (rc == -ENOSYS) return NYX_TIME_UNSUPPORTED;
    if (rc != 0)       return NYX_TIME_INVALID;

    time_t result = mktime(&tm_buf);
    if (result == (time_t)-1) return NYX_TIME_INVALID;
    return (int64_t)result;
}

// ===== Offset local =====

// Segundos al este de UTC que rige EN ESE INSTANTE (el offset no es constante:
// cambia con el horario de verano). Se calcula descomponiendo el epoch en hora
// local y volviéndolo a componer COMO SI fuera UTC: la diferencia es el offset.
// Devuelve NYX_TIME_UNSUPPORTED si la plataforma no puede resolver la hora
// local — no 0, que sería afirmar "es UTC" sin saberlo.
int64_t nyx_time_utc_offset(int64_t epoch) {
    struct tm tm_local;
    if (epoch_to_tm(epoch, &tm_local) != 0) return NYX_TIME_UNSUPPORTED;
    int64_t as_utc = nyx_time_from_civil_utc((int64_t)tm_local.tm_year + 1900,
                                             (int64_t)tm_local.tm_mon + 1,
                                             (int64_t)tm_local.tm_mday,
                                             (int64_t)tm_local.tm_hour,
                                             (int64_t)tm_local.tm_min,
                                             (int64_t)tm_local.tm_sec);
    return as_utc - epoch;
}

// Los dos sentinelas, expuestos para que std/time.nx no los hardcodee y no
// puedan desincronizarse entre las dos capas.
int64_t nyx_time_invalid(void)     { return NYX_TIME_INVALID; }
int64_t nyx_time_unsupported(void) { return NYX_TIME_UNSUPPORTED; }
