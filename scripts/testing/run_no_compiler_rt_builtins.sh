#!/usr/bin/env bash
# run_no_compiler_rt_builtins.sh — el runtime C no puede depender de builtins de
# compiler-rt para aritmética de 128 bits.
#
# POR QUÉ EXISTE (2026-09-14)
#
# `nyx_mul_div_round` dividía `__int128`, y clang resuelve esa división con
# `__divti3`. En Linux lo provee libgcc y el link pasa sin que nadie lo note;
# contra el target MSVC (x64 y arm64) clang no enlaza `clang_rt.builtins` y la
# CRT de Microsoft no trae el símbolo. Resultado medido en la laptop: NADA que
# enlazara runtime.c linkeaba en Windows (los 12 fixtures del gate de
# concurrencia, `undefined symbol: __divti3`), y el único gate que lo habría
# visto —el CI de Windows— estaba apagado por billing. Se arregló escribiendo la
# aritmética ancha a mano (pares de uint64_t); esta guarda impide que vuelva.
#
# QUÉ MIRA: compila cada TU del runtime portable a un objeto (-O0 y -O2, porque
# el optimizador puede convertir o eliminar una llamada) y falla si alguno deja
# indefinido un builtin de 128 bits de compiler-rt/libgcc: __divti3, __udivti3,
# __modti3, __umodti3, __udivmodti4, __divmodti4, __multi3, __mulodi4/__muloti4
# y familia (`__*ti[34]`). Corre en Linux: libgcc pide los MISMOS símbolos que
# después faltan en MSVC, así que el objeto de Linux alcanza como detector.
#
# LÍMITE: `runtime/os/os_win32.c` y `event_loop_win32.c` no compilan acá (headers
# de Windows); `os_wasm.c` tampoco (target wasm). La regla les aplica igual,
# pero su verificación queda del lado de la laptop/CI.
#
# Uso: run_no_compiler_rt_builtins.sh [--self-test]
#   --self-test: control negativo — compila un TU con una división __int128 y
#   exige que la guarda la detecte.
set -u
AQUI="$(cd "$(dirname "$0")" && pwd)"
RAIZ="$(cd "$AQUI/../.." && pwd)"
cd "$RAIZ" || exit 2

CC=${CC:-clang}
NM=$(command -v llvm-nm || command -v nm)
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
PATRON='^__[a-z]*ti[34]$'

# Devuelve por stdout las líneas «archivo -O?: símbolo» de lo que encuentre.
escanear() {
    local src="$1" o obj
    for o in O0 O2; do
        obj="$TMP/$(echo "$src" | tr '/' '_').$o.o"
        if ! $CC -D_DEFAULT_SOURCE -iquote runtime "-$o" -w -c "$src" -o "$obj" 2> "$obj.err"; then
            echo "NO-COMPILA $src -$o: $(head -1 "$obj.err")"
            continue
        fi
        $NM --undefined-only "$obj" | awk '{print $NF}' | grep -E "$PATRON" | sed "s|^|$src -$o: |"
    done
}

if [ "${1:-}" = "--self-test" ]; then
    printf '__int128 f(__int128 a, __int128 b) { return a / b; }\n' > "$TMP/control.c"
    hits=$(escanear "$TMP/control.c")
    if echo "$hits" | grep -q '__divti3'; then
        echo "  ✓ self-test: la guarda detecta __divti3 en una división __int128"
        exit 0
    fi
    echo "  ✗ self-test: la guarda NO detectó la división __int128 (salida: $hits)"
    exit 1
fi

FUENTES=$(ls runtime/*.c runtime/os/os_posix.c)
FALLOS=0
SALIDA=""
for f in $FUENTES; do
    r=$(escanear "$f")
    if [ -n "$r" ]; then
        SALIDA="$SALIDA$r"$'\n'
        FALLOS=$((FALLOS + $(printf '%s\n' "$r" | grep -c .)))
    fi
done

N=$(echo "$FUENTES" | wc -w)
if [ "$FALLOS" -ne 0 ]; then
    printf '%s' "$SALIDA" | sed 's/^/  ✗ /'
    echo "  ✗ builtins de compiler-rt en el runtime: $FALLOS — en Windows (MSVC) no linkean."
    echo "    Escribir la aritmética de 128 bits a mano (ver nyx_mul_div_round en runtime/runtime.c)."
    exit 1
fi
echo "  ✓ sin builtins de 128 bits de compiler-rt en $N TUs del runtime (-O0 y -O2)"
