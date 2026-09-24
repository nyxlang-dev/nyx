#!/usr/bin/env bash
# run_wasm_builtin_symbols.sh — ningún builtin llama en wasm a un símbolo del
# runtime que wasm no tiene, salvo que la guarda de target lo frene antes.
#
# Por qué existe (2026-09-24): `string_from_bytes` vivía en runtime/persist.c,
# que no entra en runtime/wasm.srcs, y no estaba en wasm_forbidden_builtin
# (codegen.nx), una lista escrita a mano. El programa compilaba y moría en
# wasm-ld con «undefined symbol: nyx_string_from_bytes», sin archivo ni línea
# — y de rebote `base64_decode` tampoco servía en wasm. Una lista a mano que
# nadie contrasta con el runtime se queda atrás en silencio; esta guarda la
# contrasta con TODOS los builtins de std/builtins.index.
#
# Cómo, sin conocer los tipos de cada builtin:
#   1. un programa sonda con una fn por builtin que lo llama con argumentos de
#      relleno (aridad del índice), compilado para wasm32-wasi SIN semantic: el
#      IR no se enlaza ni se ejecuta, solo se lee;
#   2. la guarda de target frena los builtins sin runtime en wasm y NOMBRA la fn
#      sonda de cada uno (acumula los errores): esos quedan como «frenados»;
#   3. del IR del resto, los símbolos nyx_* que llama cada fn sonda;
#   4. los símbolos que definen de verdad los objetos de runtime/wasm.srcs
#      (llvm-nm). Un builtin que llama a un nyx_* que no está → FALLA, con su
#      nombre y el símbolo.
# SKIP limpio sin wasi-libc o sin llvm-nm.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT" || exit 1
WASI_SYSROOT="${WASI_SYSROOT:-/usr}"
NM="$(command -v llvm-nm || command -v llvm-nm-19 || true)"
if [ ! -f "$WASI_SYSROOT/lib/wasm32-wasi/libc.a" ] || [ -z "$NM" ]; then
    echo "  ⚠ SKIP run_wasm_builtin_symbols: falta wasi-libc o llvm-nm"
    exit 0
fi
[ -x ./nyx_bootstrap ] || { echo "  ✗ falta ./nyx_bootstrap"; exit 1; }
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT

# 1. Símbolos definidos por el runtime de wasm.
for src in $(grep -v '^#' runtime/wasm.srcs | grep -v '^$'); do
    clang --target=wasm32-wasi --sysroot="$WASI_SYSROOT" -O0 -w -Iruntime/wasi -c "$src" \
        -o "$T/$(echo "$src" | tr '/' '_').o" 2>>"$T/rt.log" || { echo "  ✗ no compila $src para wasm"; cat "$T/rt.log"; exit 1; }
done
"$NM" --defined-only "$T"/*.o 2>/dev/null | awk '{print $NF}' | sort -u > "$T/definidos"

# 2. Sonda. Argumento de relleno 0; c_fn_ptr necesita el nombre de una fn.
gen_sonda() {
    awk -F'\t' -v excl="$1" -v rv="$T/rv.txt" 'BEGIN{n=split(excl,e,","); for(i=1;i<=n;i++) x[e[i]]=1}
        $1=="builtin" && !($2 in x) {
            args=""; for(i=0;i<$3;i++) args=args (i?", ":"") "0"
            if ($2=="c_fn_ptr") args="main"
            if ($2=="include_bytes") args="\"rv.txt\""
            if ($2=="arena_persist") args="\"x\""
            printf "fn __sonda_%s() -> int {\n    %s(%s)\n    return 0\n}\n", $2, $2, args
        }' std/builtins.index
    echo 'fn main() -> int { return 0 }'
}
echo relleno > "$T/rv.txt"
excluidos=""
frenados=0
no_sondeables=""
for vuelta in 1 2 3 4 5 6 7 8; do
    gen_sonda "$excluidos" > "$T/sonda.nx"
    rm -f "$T/sonda.ll"
    ( ulimit -s 65536 2>/dev/null; NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SKIP_SEMANTIC=1 \
        NYX_PROJECT_DIR="$T" NYX_SRC="$T/sonda.nx" ./nyx_bootstrap ) > "$T/c.log" 2>&1
    [ -f "$T/sonda.ll" ] && break
    # Cada error nombra su fn sonda en la línea siguiente («in function '__sonda_X'»).
    nuevos=$(grep -oE "__sonda_[A-Za-z0-9_]+" "$T/c.log" | sed 's/__sonda_//' | sort -u)
    # Un error que no nombra su fn sonda (p. ej. NYX1033) nombra al builtin
    # entre comillas: se lo saca de ahí.
    if [ -z "$nuevos" ]; then
        for q in $(grep -E "error" "$T/c.log" | grep -oE "'[A-Za-z_][A-Za-z0-9_]*'" | tr -d "'" | sort -u); do
            grep -qP "^builtin\t$q\t" std/builtins.index && nuevos="$nuevos $q"
        done
    fi
    [ -n "$nuevos" ] || { echo "  ✗ la sonda no compila y no se sabe por qué:"; grep -vE "^\s*$" "$T/c.log" | tail -8; exit 1; }
    for b in $nuevos; do
        if grep -A1 -E "no está soportado|not supported" "$T/c.log" | grep -q "__sonda_$b'"; then
            frenados=$((frenados + 1))
        else
            no_sondeables="$no_sondeables $b"
        fi
        excluidos="$excluidos,$b"
    done
done
[ -f "$T/sonda.ll" ] || { echo "  ✗ la sonda no llegó a IR tras 8 vueltas"; exit 1; }

# 3. Por fn sonda, los nyx_* que llama y el runtime de wasm no define.
fallos=$(awk '
    /^define .*@__sonda_/ { match($0, /@__sonda_[A-Za-z0-9_]+/); cur=substr($0, RSTART+9, RLENGTH-9); next }
    /^}/ { cur="" }
    cur != "" && /call / {
        s=$0
        while (match(s, /@nyx_[A-Za-z0-9_]+/)) { print cur "\t" substr(s, RSTART+1, RLENGTH-1); s=substr(s, RSTART+RLENGTH) }
    }' "$T/sonda.ll" | sort -u | while IFS="$(printf '\t')" read -r b sym; do
        grep -qx "$sym" "$T/definidos" || grep -q "^define .*@$sym(" "$T/sonda.ll" || echo "$b usa $sym"
    done)
n_sond=$(grep -c "^define .*@__sonda_" "$T/sonda.ll")
if [ -n "$fallos" ]; then
    echo "  ✗ builtins que en wasm llaman a un símbolo que runtime/wasm.srcs no define (y la guarda de target no frena):"
    echo "$fallos" | sed 's/^/      /'
    echo "    O el símbolo va a una unidad portable de wasm.srcs, o el builtin va a wasm_forbidden_builtin (codegen.nx)."
    exit 1
fi
echo "  ✓ builtins en wasm: $n_sond sondeados sin símbolos faltantes, $frenados frenados por la guarda de target${no_sondeables:+, no sondeables:$no_sondeables}"
