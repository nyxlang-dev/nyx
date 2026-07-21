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

#define _XOPEN_SOURCE 700  // expose strptime on glibc

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <time.h>
#include <gc.h>
#include "strings.h"
#include "time.h"

// Buffer size for strftime output.  256 bytes covers all reasonable datetime
// format strings; we cap it there to avoid unbounded stack allocation.
#define NYX_TIME_BUF 256

// ===== Internal helper =====

// Fills *tm_out with the local time breakdown for epoch.
// Returns 0 on success, -1 if localtime() returns NULL (epoch out of range).
static int epoch_to_tm(int64_t epoch, struct tm* tm_out) {
    time_t t = (time_t)epoch;
    struct tm* p = localtime(&t);
    if (!p) return -1;
    *tm_out = *p;  // copy out of the static buffer before any other call
    return 0;
}

// ===== nyx_datetime_now =====

nyx_string* nyx_datetime_now() {
    time_t t = time(NULL);
    struct tm* p = localtime(&t);
    if (!p) return nyx_string_from_cstr("");

    // GC_MALLOC_ATOMIC: char buffer, no GC pointers inside.
    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    strftime(buf, NYX_TIME_BUF, "%Y-%m-%d %H:%M:%S", p);
    return nyx_string_from_cstr(buf);
}

// ===== nyx_datetime_format =====

nyx_string* nyx_datetime_format(nyx_string* fmt) {
    if (!fmt) return nyx_string_from_cstr("");

    const char* fmt_cstr = nyx_string_to_cstr(fmt);
    time_t t = time(NULL);
    struct tm* p = localtime(&t);
    if (!p) return nyx_string_from_cstr("");

    char* buf = (char*)GC_MALLOC_ATOMIC(NYX_TIME_BUF);
    size_t written = strftime(buf, NYX_TIME_BUF, fmt_cstr, p);
    if (written == 0) {
        // strftime returns 0 when the format produced no output or the
        // buffer was too small.  Return empty string rather than garbage.
        return nyx_string_from_cstr("");
    }
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

    char* end = strptime(date_cstr, fmt_cstr, &tm_buf);
    if (!end) {
        // strptime returns NULL when the input does not match the format.
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
