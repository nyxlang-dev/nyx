#!/usr/bin/env bash
# =============================================================================
# run_alloca_entry_audit.sh — guarda del arco allocas-al-entry (2026-11-16).
#
# POR QUÉ EXISTE: LLVM solo promueve a registro los `alloca` del bloque de
# entrada de una función. Hasta este arco el codegen los emitía donde aparecía
# el `let`, y tapaba el desborde de stack en bucles (A9) con un par
# llvm.stacksave/stackrestore por bucle que sobrevivía a -O2: ningún bucle de
# Nyx vectorizaba y un `let` dentro de un bucle vivía en memoria (spike
# docs/design/spikes/2026-11-16-numerico-vectorizacion.md). El arreglo está en
# `emit` (compiler/codegen.nx), que se guía por el texto del IR: si un emisor
# nuevo se le escapa, el efecto es mudo —código más lento, o el SIGSEGV de A9
# de vuelta— y solo esta guarda lo ve.
#
# QUÉ MIRA:
#   (1) En las semillas del compilador y en el IR de dos programas de prueba:
#       ningún `alloca` después del primer terminador de su función, y ningún
#       llvm.stackrestore.
#   (2) A9: tests/alloca-entry/let_en_bucle.nx (6 millones de vueltas con
#       variables locales) corre con el stack limitado a 256 KB.
#   (3) tests/alloca-entry/axpy_ptr.nx vectoriza con -O2 (<2 x double>).
#
# --self-test: le da a (1) un .ll fabricado con un `alloca` dentro de un bucle
# y otro con un stackrestore, y exige que la guarda falle con cada uno.
# =============================================================================
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

# auditar <archivo.ll>: imprime cada hallazgo y devuelve 1 si hubo alguno.
auditar() {
    awk -v f="$1" '
        /^define / { en = 1; cerrado = 0; fn = $0; sub(/\(.*/, "", fn); next }
        /^}/       { en = 0; next }
        en && /^  (br|ret|switch|unreachable|indirectbr|resume) / { cerrado = 1 }
        en && /^  (br|ret|unreachable)$/ { cerrado = 1 }
        en && cerrado && / = alloca / { printf "  %s:%d: alloca fuera del bloque de entrada (%s)\n", f, NR, fn; mal++ }
        en && /@llvm\.stackrestore/   { printf "  %s:%d: llvm.stackrestore (%s)\n", f, NR, fn; mal++ }
        END { exit (mal > 0) }
    ' "$1"
}

TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

if [ "${1:-}" = "--self-test" ]; then
    cat > "$TMP/bucle.ll" <<'LL'
define i64 @f(i64 %n) {
  %i = alloca i64
  br label %cond
cond:
  %tmp = alloca i64
  br label %cond
}
LL
    cat > "$TMP/restore.ll" <<'LL'
define i64 @g() {
  %sp = call i8* @llvm.stacksave()
  br label %cuerpo
cuerpo:
  call void @llvm.stackrestore(i8* %sp)
  ret i64 0
}
LL
    cat > "$TMP/limpio.ll" <<'LL'
define i64 @h() {
entry:
  %a = alloca { i64, i8* }
  %b = alloca i64
  br label %fin
fin:
  ret i64 0
}
LL
    ok=1
    auditar "$TMP/bucle.ll"   > /dev/null && { echo "  ✗ self-test: no vio un alloca dentro de un bucle"; ok=0; }
    auditar "$TMP/restore.ll" > /dev/null && { echo "  ✗ self-test: no vio un llvm.stackrestore"; ok=0; }
    auditar "$TMP/limpio.ll"  > /dev/null || { echo "  ✗ self-test: marcó un IR limpio"; ok=0; }
    [ "$ok" -eq 1 ] && echo "  ✓ self-test de alloca-entry: la guarda falla con un alloca en bucle y con un stackrestore, y pasa un IR limpio"
    [ "$ok" -eq 1 ]; exit $?
fi

source "$(dirname "${BASH_SOURCE[0]}")/lib_testroot_lock.sh"
nyx_testroot_lock_acquire
[ -x ./nyx_bootstrap ] || { echo "✗ falta ./nyx_bootstrap — ejecuta 'make bootstrap' primero"; exit 1; }

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
FAIL=0

# (1) semillas + los dos programas
for t in let_en_bucle axpy_ptr; do
    cp "tests/alloca-entry/$t.nx" "$TMP/$t.nx"
    NYX_SRC="$TMP/$t.nx" ./nyx_bootstrap > "$TMP/$t.log" 2>&1 || { echo "  ✗ no compila tests/alloca-entry/$t.nx: $(grep -m1 -iE 'error|NYX[0-9]' "$TMP/$t.log")"; exit 1; }
done
n=0
for ll in compiler/*.ll "$TMP/let_en_bucle.ll" "$TMP/axpy_ptr.ll"; do
    n=$((n + 1))
    auditar "$ll" > "$TMP/aud.txt" || { head -5 "$TMP/aud.txt"; echo "  ✗ $ll: $(wc -l < "$TMP/aud.txt") hallazgo(s)"; FAIL=1; }
done
[ "$FAIL" -eq 0 ] && echo "  ✓ $n archivos de IR: todos los alloca en el bloque de entrada, sin llvm.stackrestore"

# (2) A9 con 256 KB de stack. Sin -O: es como compila `nyx build`, y con -O2
# los registros esconderían el problema.
if clang -w "$TMP/let_en_bucle.ll" $RT $LIBS -o "$TMP/a9" 2> "$TMP/a9.cl"; then
    out="$( (ulimit -S -s 256; timeout 120 "$TMP/a9") 2>&1 )"; rc=$?
    if [ "$rc" -eq 0 ]; then echo "  ✓ A9: un let dentro de 6 millones de vueltas corre con 256 KB de stack"
    else echo "  ✗ A9: rc=$rc con 256 KB de stack — $out"; FAIL=1; fi
else
    echo "  ✗ A9: no enlaza — $(grep -m1 error "$TMP/a9.cl")"; FAIL=1
fi

# (3) vectoriza
if clang -O2 -w -S -emit-llvm "$TMP/axpy_ptr.ll" -o "$TMP/axpy.O2.ll" 2> "$TMP/v.cl"; then
    v="$(grep -c 'x double>' "$TMP/axpy.O2.ll")"
    if [ "$v" -gt 0 ]; then echo "  ✓ el bucle axpy sobre *float vectoriza con -O2 ($v líneas con vectores)"
    else echo "  ✗ el bucle axpy sobre *float NO vectoriza con -O2"; FAIL=1; fi
else
    echo "  ✗ clang -O2 rechazó el IR de axpy_ptr — $(grep -m1 error "$TMP/v.cl")"; FAIL=1
fi

# (4) #[fast_math] (arco numerico): las banderas salen SOLO en las funciones marcadas, y la
# suma marcada vectoriza con -O2 (sin `reassoc` una suma de floats no puede).
cp tests/compiler/systems/test-554-fast-math.nx "$TMP/fm.nx"
if NYX_SRC="$TMP/fm.nx" ./nyx_bootstrap > "$TMP/fm.log" 2>&1; then
    por_fn() { awk -v f="$1" '/^define / { en = ($0 ~ "@" f "\\(") } en && /reassoc contract/ { n++ } END { print n + 0 }' "$TMP/fm.ll"; }
    r="$(por_fn suma_rapida)"; m="$(por_fn mezcla)"; n="$(por_fn suma_normal)"
    # noinline no existe en Nyx: se mira el IR optimizado de la función suelta.
    clang -O2 -w -S -emit-llvm "$TMP/fm.ll" -o "$TMP/fm.O2.ll" 2> /dev/null
    vr="$(awk '/^define / { en = ($0 ~ /reassoc|fast/) } /<2 x double>/ && /fadd reassoc/ { v++ } END { print v + 0 }' "$TMP/fm.O2.ll")"
    if [ "$r" -ge 1 ] && [ "$m" -eq 4 ] && [ "$n" -eq 0 ] && [ "$vr" -ge 1 ]; then
        echo "  ✓ #[fast_math]: banderas solo en las funciones marcadas (suma $r, mezcla $m, sin marcar $n) y la suma vectoriza"
    else
        echo "  ✗ #[fast_math]: suma_rapida=$r (≥1), mezcla=$m (4), suma_normal=$n (0), sumas vectoriales con reassoc=$vr (≥1)"; FAIL=1
    fi
else
    echo "  ✗ no compila test-554-fast-math.nx: $(grep -m1 -iE 'error|NYX[0-9]' "$TMP/fm.log")"; FAIL=1
fi

[ "$FAIL" -eq 0 ]
