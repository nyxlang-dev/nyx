// ============================================
// TIME.H - Date/Time support for Nyx
// ============================================

#ifndef NYX_TIME_H
#define NYX_TIME_H

#include <stdint.h>
#include "strings.h"

// Returns the current local datetime as "YYYY-MM-DD HH:MM:SS".
nyx_string* nyx_datetime_now();

// Returns the current local datetime formatted with the given strftime format string.
// On format error or empty output, returns an empty string.
nyx_string* nyx_datetime_format(nyx_string* fmt);
nyx_string* nyx_datetime_format_epoch(int64_t epoch, nyx_string* fmt);

// Returns the current Unix epoch in seconds.
int64_t nyx_time_epoch();

// Converts a Unix epoch value to a local "YYYY-MM-DD HH:MM:SS" string.
nyx_string* nyx_datetime_from_epoch(int64_t epoch);

// Parses date_str according to the strptime format string fmt.
// Returns the corresponding Unix epoch on success, or -1 on parse error.
int64_t nyx_datetime_parse(nyx_string* date_str, nyx_string* fmt);

// Field extractors — all accept a Unix epoch and return the corresponding
// field in local time.
int64_t nyx_datetime_year(int64_t epoch);     // Full year (e.g. 2026)
int64_t nyx_datetime_month(int64_t epoch);    // Month: 1-12
int64_t nyx_datetime_day(int64_t epoch);      // Day of month: 1-31
int64_t nyx_datetime_hour(int64_t epoch);     // Hour: 0-23
int64_t nyx_datetime_minute(int64_t epoch);   // Minute: 0-59
int64_t nyx_datetime_second(int64_t epoch);   // Second: 0-59
int64_t nyx_datetime_weekday(int64_t epoch);  // Day of week: 0=Sunday, 6=Saturday

// ============================================================================
// Camino UTC (arco std-time, incremento 1). El instante canónico de Nyx es
// int64 segundos desde 1970-01-01T00:00:00Z. Estas funciones son el único
// camino que NO depende del TZ del proceso; los datetime_* de arriba son
// locales y se conservan tal cual por compatibilidad (67 usos medidos).
// Implementadas con aritmética entera pura: sin gmtime_r/timegm (que no
// existen en MSVC), sin lock y sin estado global.
// ============================================================================

// Accesores UTC. No pueden fallar: todo int64 es un instante válido.
int64_t nyx_time_year_utc(int64_t epoch);
int64_t nyx_time_month_utc(int64_t epoch);    // 1-12
int64_t nyx_time_day_utc(int64_t epoch);      // 1-31
int64_t nyx_time_hour_utc(int64_t epoch);
int64_t nyx_time_minute_utc(int64_t epoch);
int64_t nyx_time_second_utc(int64_t epoch);
int64_t nyx_time_weekday_utc(int64_t epoch);  // 0=domingo
int64_t nyx_time_yday_utc(int64_t epoch);     // 0-365

// Fecha civil UTC -> epoch. Normaliza meses fuera de [1,12] por aritmética.
int64_t nyx_time_from_civil_utc(int64_t y, int64_t mo, int64_t d,
                                int64_t h, int64_t mi, int64_t s);

// strftime sobre la descomposición UTC.
nyx_string* nyx_time_format_utc(int64_t epoch, nyx_string* fmt);

// Parseo. Devuelven nyx_time_invalid() si no matchea y nyx_time_unsupported()
// si la plataforma no tiene strptime. NUNCA un instante inventado: a
// diferencia del -1 de nyx_datetime_parse, estos sentinelas están fuera del
// rango representable y no se confunden con 1969-12-31.
int64_t nyx_time_parse_utc(nyx_string* date_str, nyx_string* fmt);
int64_t nyx_time_parse_local(nyx_string* date_str, nyx_string* fmt);

// Segundos al este de UTC vigentes EN ese instante (varía con el horario de
// verano). nyx_time_unsupported() si la plataforma no resuelve la hora local
// — nunca 0, que sería afirmar "es UTC" sin saberlo.
int64_t nyx_time_utc_offset(int64_t epoch);

// Los sentinelas, para que la capa Nyx no los hardcodee.
int64_t nyx_time_invalid(void);
int64_t nyx_time_unsupported(void);

#endif // NYX_TIME_H
