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

#endif // NYX_TIME_H
