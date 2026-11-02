#!/usr/bin/env bash
# scripts/win_seeds.sh — las semillas del compilador para Windows (W6, D6).
#
# POR QUÉ NO ESTÁN TRACKEADAS (D6, medido en el spike de W6 el 2026-10-30)
#
# Las semillas de Windows son las de Linux con DOS líneas cambiadas por módulo:
# el `target triple` y la declaración de `setjmp`, que en windows-msvc es
# `_setjmp(buf, frame)` (emit_setjmp_call en codegen.nx). Trackear otro juego —o
# dos, con ARM64— duplicaba 12 MB de IR por cada cambio del compilador para
# guardar dos líneas. Así que se DERIVAN de `compiler/*.ll`, en el servidor, en
# el instalador (`install.ps1` hace la misma sustitución) o en el CI.
#
# La derivación vale mientras el compilador no emita nada más distinto para
# Windows. Eso es lo que vigila `check`: compila cada módulo con NYX_TARGET de
# Windows y exige que salga byte a byte igual a la derivación. Si un día el
# codegen emite otra diferencia, el rojo de acá avisa antes de que un instalador
# arme un compilador de Windows con IR de Linux.
#
# Uso:
#   win_seeds.sh derive <dir> [x64|arm64]   escribe <dir>/<módulo>.ll
#   win_seeds.sh check  [x64|arm64]         derivar == emitir (necesita ./nyx_bootstrap)
set -u
cd "$(dirname "$0")/.."

# Los módulos de nyx_bootstrap.exe, nyx_build.exe, nyx_check.exe y nyx_fmt.exe; la misma lista que
# scripts/testing/w6_build_win.sh y scripts/install.ps1.
MODULOS="lexer parser types semantic borrow licm resolve codegen nyx gotchas_table build nyx_check fmt"

triple_de() {
    case "${1:-x64}" in
        x64) echo x86_64-pc-windows-msvc ;;
        arm64) echo aarch64-pc-windows-msvc ;;
        *) echo "arquitectura desconocida: $1 (x64 o arm64)" >&2; return 1 ;;
    esac
}

# derivar <origen.ll> <destino.ll> <triple>: las dos sustituciones, y un rojo si
# alguna no encontró su línea (una semilla que ya no tiene la forma esperada).
derivar() {
    local orig="$1" dest="$2" triple="$3"
    sed -e "s/^target triple = \"x86_64-pc-linux-gnu\"\$/target triple = \"$triple\"/" \
        -e 's/^declare i32 @setjmp(i8\*) #0$/declare i32 @_setjmp(i8*, i8*) #0/' \
        "$orig" > "$dest"
    if ! grep -qx "target triple = \"$triple\"" "$dest" \
        || ! grep -qx 'declare i32 @_setjmp(i8\*, i8\*) #0' "$dest"; then
        echo "  ✗ $(basename "$orig"): no tiene la forma esperada (triple de Linux y declare de setjmp)" >&2
        return 1
    fi
}

cmd="${1:-}"; shift || true
case "$cmd" in
derive)
    out="${1:?uso: win_seeds.sh derive <dir> [x64|arm64]}"
    triple=$(triple_de "${2:-x64}") || exit 2
    mkdir -p "$out"
    for m in $MODULOS; do derivar "compiler/$m.ll" "$out/$m.ll" "$triple" || exit 1; done
    echo "ok: semillas $triple en $out"
    ;;
check)
    triple=$(triple_de "${1:-x64}") || exit 2
    [ -x ./nyx_bootstrap ] || { echo "  ✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero"; exit 1; }
    . scripts/lib_stack.sh; nyx_raise_stack
    # script.nx/script.ll de la raíz son compartidos con make test y compañía.
    source scripts/testing/lib_testroot_lock.sh
    nyx_testroot_lock_acquire
    tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
    fallos=0
    for m in $MODULOS; do
        derivar "compiler/$m.ll" "$tmp/$m.derivado.ll" "$triple" || { fallos=$((fallos+1)); continue; }
        cp "compiler/$m.nx" script.nx
        # Sin semántica, como `w6_build_win.sh emit`: lo que se compara es el IR.
        if ! NYX_SKIP_SEMANTIC=1 NYX_TARGET=$triple ./nyx_bootstrap > "$tmp/$m.log" 2>&1; then
            echo "  ✗ $m: el bootstrap no lo compila para $triple"; tail -3 "$tmp/$m.log"
            fallos=$((fallos+1)); continue
        fi
        # El emitido sale del compilador ACTUAL y la semilla puede estar atrasada:
        # eso es seeds-check, no esto. Se compara contra la emisión para Linux.
        cp script.ll "$tmp/$m.win.ll"
        NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > /dev/null 2>&1 && derivar script.ll "$tmp/$m.esperado.ll" "$triple" \
            || { echo "  ✗ $m: no se pudo emitir para Linux"; fallos=$((fallos+1)); continue; }
        if ! cmp -s "$tmp/$m.esperado.ll" "$tmp/$m.win.ll"; then
            echo "  ✗ $m: la emisión para $triple difiere de la derivada en algo más que las dos líneas:"
            diff "$tmp/$m.esperado.ll" "$tmp/$m.win.ll" | head -8
            fallos=$((fallos+1))
        fi
    done
    if [ $fallos -eq 0 ]; then
        echo "  ✓ win-seeds: las $(echo $MODULOS | wc -w) semillas de $triple se derivan de las de Linux"
    else
        echo "  ✗ win-seeds: $fallos módulo(s) fallaron"; exit 1
    fi
    ;;
*) echo "uso: win_seeds.sh derive <dir> [x64|arm64] | check [x64|arm64]"; exit 2 ;;
esac
