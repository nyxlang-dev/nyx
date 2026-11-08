#!/usr/bin/env bash
# run_regex_diff.sh — test diferencial del motor regex vendorizado
# (runtime/vendor/tre) contra la regex de la libc del host. Ver la cabecera de
# tests/regex-diff/regex_diff_main.c para qué compara y qué diferencias acepta.
#
# Corre dos veces: normal y con AddressSanitizer/UBSan (los parches del motor son
# C a mano y tocan el compilador de patrones). SKIP limpio si el host no trae
# <regex.h> (no es el caso en Linux; existe por simetría con Windows).
set -u
cd "$(dirname "$0")/../.." || exit 1
CC=${CC:-clang}
SRC="tests/regex-diff/regex_diff_main.c"
TRE="runtime/vendor/tre"
OUT=$(mktemp -d /tmp/nyx-regex-diff-XXXXXX)
trap 'rm -rf "$OUT"' EXIT

if ! printf '#include <regex.h>\nint main(void){return 0;}\n' | $CC -x c - -o "$OUT/probe" 2>/dev/null; then
    echo "SKIP regex diff: el host no trae <regex.h>"
    exit 0
fi

rc=0
for modo in normal asan; do
    flags="-std=c99 -O1"
    [ "$modo" = asan ] && flags="$flags -g -fsanitize=address,undefined -fno-sanitize-recover=undefined"
    # shellcheck disable=SC2086
    if ! $CC $flags -iquote "$TRE" "$SRC" "$TRE"/regcomp.c "$TRE"/regexec.c "$TRE"/tre-mem.c "$TRE"/regerror.c \
            -o "$OUT/diff_$modo" 2> "$OUT/cc_$modo.log"; then
        echo "✗ regex diff ($modo): no compila"; sed 's/^/    /' "$OUT/cc_$modo.log" | head -20
        rc=1; continue
    fi
    if "$OUT/diff_$modo" > "$OUT/run_$modo.log" 2>&1; then
        echo "✓ regex diff ($modo): $(tail -1 "$OUT/run_$modo.log")"
    else
        echo "✗ regex diff ($modo):"; sed 's/^/    /' "$OUT/run_$modo.log" | tail -25
        rc=1
    fi
done
exit $rc
