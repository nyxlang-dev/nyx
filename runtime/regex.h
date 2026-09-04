// ============================================
// REGEX.H - POSIX Regex support for Nyx
// ============================================

#ifndef NYX_REGEX_H
#define NYX_REGEX_H

#include <stdint.h>
#include "strings.h"

// Returns the first match of pattern in text as a nyx_string*.
// Returns an empty string if no match is found.
// Uses REG_EXTENDED (ERE) semantics.
nyx_string* nyx_regex_match(nyx_string* text, nyx_string* pattern);

// Returns 1 if pattern matches anywhere in text, 0 otherwise.
int64_t nyx_regex_is_match(nyx_string* text, nyx_string* pattern);

// Replaces the first occurrence of pattern in text with replacement.
// Returns the original string unchanged if no match is found.
nyx_string* nyx_regex_replace(nyx_string* text, nyx_string* pattern, nyx_string* replacement);

// Replaces all non-overlapping occurrences of pattern in text with replacement.
// Returns the original string unchanged if no match is found.
nyx_string* nyx_regex_replace_all(nyx_string* text, nyx_string* pattern, nyx_string* replacement);

// Returns 1 if pattern COMPILES as a POSIX ERE, 0 otherwise. Unlike the
// functions above it never prints: it answers the yes/no and lets the caller
// decide how to complain. See the comment on nyx_regex_is_valid in regex.c.
int64_t nyx_regex_is_valid(nyx_string* pattern);

#endif // NYX_REGEX_H
