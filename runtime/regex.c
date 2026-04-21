// ============================================
// REGEX.C - POSIX Regex support for Nyx
// ============================================
// Uses POSIX ERE (REG_EXTENDED) via <regex.h>.
// All allocations go through Boehm GC — never call free().
//
// Design notes:
// - regcomp/regexec work on C strings; we extract via nyx_string_to_cstr().
// - regmatch_t gives us byte offsets into the C string, which we use with
//   nyx_string_from_ptr() to create result strings without an extra copy.
// - regfree() is called immediately after use because the regex_t itself
//   lives on the C stack (not GC-managed); the compiled pattern state is
//   owned by it and must be released explicitly to avoid leaking OS resources.
//   This is the only explicit release in this file — all nyx_string data is
//   GC-managed and must NOT be freed manually.
// ============================================

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <regex.h>
#include <gc.h>
#include "strings.h"
#include "regex.h"

// Internal helper: compile a POSIX ERE pattern from a nyx_string*.
// Writes the compiled regex into *out_re.
// Returns 0 on success, nonzero on compile error (prints to stderr).
static int compile_pattern(const char* pattern_cstr, regex_t* out_re) {
    int rc = regcomp(out_re, pattern_cstr, REG_EXTENDED);
    if (rc != 0) {
        char errbuf[256];
        regerror(rc, out_re, errbuf, sizeof(errbuf));
        fprintf(stderr, "Nyx regex error: failed to compile pattern '%s': %s\n",
                pattern_cstr, errbuf);
    }
    return rc;
}

// ===== nyx_regex_is_match =====

int64_t nyx_regex_is_match(nyx_string* text, nyx_string* pattern) {
    if (!text || !pattern) return 0;

    const char* text_cstr    = nyx_string_to_cstr(text);
    const char* pattern_cstr = nyx_string_to_cstr(pattern);

    regex_t re;
    if (compile_pattern(pattern_cstr, &re) != 0) return 0;

    // REG_NOSUB: we only care about match/no-match, no submatch offsets needed.
    int rc = regexec(&re, text_cstr, 0, NULL, 0);
    regfree(&re);

    return (rc == 0) ? 1 : 0;
}

// ===== nyx_regex_match =====

nyx_string* nyx_regex_match(nyx_string* text, nyx_string* pattern) {
    if (!text || !pattern) return nyx_string_from_cstr("");

    const char* text_cstr    = nyx_string_to_cstr(text);
    const char* pattern_cstr = nyx_string_to_cstr(pattern);

    regex_t re;
    if (compile_pattern(pattern_cstr, &re) != 0) return nyx_string_from_cstr("");

    // We need one match group (the full match, index 0).
    regmatch_t match;
    int rc = regexec(&re, text_cstr, 1, &match, 0);
    regfree(&re);

    if (rc != 0) {
        // REG_NOMATCH or other error — return empty string.
        return nyx_string_from_cstr("");
    }

    // match.rm_so / match.rm_eo are byte offsets into text_cstr.
    size_t start  = (size_t)match.rm_so;
    size_t length = (size_t)(match.rm_eo - match.rm_so);
    return nyx_string_from_ptr(text_cstr + start, length);
}

// ===== nyx_regex_replace =====

nyx_string* nyx_regex_replace(nyx_string* text, nyx_string* pattern, nyx_string* replacement) {
    if (!text || !pattern || !replacement) return text ? text : nyx_string_from_cstr("");

    const char* text_cstr        = nyx_string_to_cstr(text);
    const char* pattern_cstr     = nyx_string_to_cstr(pattern);
    const char* replacement_cstr = nyx_string_to_cstr(replacement);
    size_t      repl_len         = strlen(replacement_cstr);
    size_t      text_len         = strlen(text_cstr);

    regex_t re;
    if (compile_pattern(pattern_cstr, &re) != 0) return text;

    regmatch_t match;
    int rc = regexec(&re, text_cstr, 1, &match, 0);
    regfree(&re);

    if (rc != 0) {
        // No match — return text unchanged.
        return text;
    }

    size_t pre_len  = (size_t)match.rm_so;
    size_t post_off = (size_t)match.rm_eo;
    size_t post_len = text_len - post_off;

    // Build: text[0..pre] + replacement + text[post_off..]
    size_t result_len = pre_len + repl_len + post_len;

    // GC_MALLOC_ATOMIC: the char buffer holds no GC-managed pointers.
    char* buf = (char*)GC_MALLOC_ATOMIC(result_len + 1);
    memcpy(buf,                       text_cstr,              pre_len);
    memcpy(buf + pre_len,             replacement_cstr,       repl_len);
    memcpy(buf + pre_len + repl_len,  text_cstr + post_off,  post_len);
    buf[result_len] = '\0';

    return nyx_string_from_ptr(buf, result_len);
}

// ===== nyx_regex_replace_all =====

nyx_string* nyx_regex_replace_all(nyx_string* text, nyx_string* pattern, nyx_string* replacement) {
    if (!text || !pattern || !replacement) return text ? text : nyx_string_from_cstr("");

    const char* pattern_cstr     = nyx_string_to_cstr(pattern);
    const char* replacement_cstr = nyx_string_to_cstr(replacement);
    size_t      repl_len         = strlen(replacement_cstr);

    regex_t re;
    if (compile_pattern(pattern_cstr, &re) != 0) return text;

    // Walk through text_cstr, collecting non-matching segments and replacements
    // into a dynamically grown GC buffer.
    //
    // We build the output in a GC_MALLOC'd buffer, doubling capacity as needed.
    // This avoids constructing intermediate nyx_string objects per iteration.

    const char* cursor     = nyx_string_to_cstr(text);
    size_t      out_cap    = strlen(cursor) * 2 + 16;
    char*       out_buf    = (char*)GC_MALLOC_ATOMIC(out_cap);
    size_t      out_len    = 0;
    int         found_any  = 0;

    // Helper macro: append a raw byte range into out_buf, growing if needed.
#define APPEND(src, n) do { \
    size_t _n = (n); \
    if (out_len + _n + 1 > out_cap) { \
        out_cap = (out_len + _n + 1) * 2; \
        char* _new = (char*)GC_MALLOC_ATOMIC(out_cap); \
        memcpy(_new, out_buf, out_len); \
        out_buf = _new; \
    } \
    memcpy(out_buf + out_len, (src), _n); \
    out_len += _n; \
} while (0)

    regmatch_t match;
    while (*cursor != '\0') {
        int rc = regexec(&re, cursor, 1, &match, 0);
        if (rc != 0) {
            // No more matches — copy the rest of the string.
            APPEND(cursor, strlen(cursor));
            break;
        }

        found_any = 1;

        // Copy the segment before the match.
        if (match.rm_so > 0) {
            APPEND(cursor, (size_t)match.rm_so);
        }

        // Copy the replacement.
        APPEND(replacement_cstr, repl_len);

        // Advance cursor past the matched region.
        cursor += match.rm_eo;

        // Guard against zero-length matches to prevent an infinite loop.
        // If the match was empty (rm_so == rm_eo), advance one character so
        // we always make forward progress.
        if (match.rm_so == match.rm_eo) {
            if (*cursor != '\0') {
                APPEND(cursor, 1);
                cursor++;
            } else {
                break;
            }
        }
    }

#undef APPEND

    regfree(&re);

    if (!found_any) {
        // No match at all — return original text unchanged.
        return text;
    }

    out_buf[out_len] = '\0';
    return nyx_string_from_ptr(out_buf, out_len);
}
