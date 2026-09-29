#!/bin/bash
# scripts/testing/w4_gate_run.sh — parte 2 del gate local de concurrencia
# W3/W4 en Windows x64 (Git Bash + clang con triple MSVC). Compila los 12 TUs
# del subset del runtime con los flags EXACTOS del job w2-subset, linkea cada
# .win.ll que emitió w4_gate_emit_ir.sh contra el gc.lib dado y corre cada
# test N veces, con gc.dll al lado del .exe (como se midió el 36/36).
#
# ES: una línea por corrida que falla (rc + última línea de salida) y una
# tabla final con DENOMINADORES. Un test es verde solo si pasa N/N — el gate
# de 3 corridas no puede ver un fallo de ~12% por corrida (Task 1 de W4), así
# que para afirmar estabilidad hace falta N grande (el brief de la Task 3
# pide N >= 300 para test-241).
# EN: one line per failing run + a final table with denominators. A test is
# green only at N/N.
#
# Uso / usage:
#   w4_gate_run.sh build <runtime_root> <workdir>
#       compila los 12 TUs de <runtime_root>/runtime a <workdir>/objs y
#       linkea <workdir>/ir/*.win.ll a <workdir>/bin/*.exe
#   w4_gate_run.sh run <workdir> <N> [test-name ...]
#       corre cada test N veces (default: todos los .exe de <workdir>/bin)
#   Env: NYX_GC_INCLUDE (headers de bdwgc), NYX_GC_LIBDIR (dir con gc.lib),
#        NYX_GC_DLL (gc.dll a copiar junto a los .exe; default el de LIBDIR),
#        NYX_GATE_TIMEOUT (segundos por corrida, default 30),
#        NYX_RT_EXTRA_CFLAGS (flags extra SOLO para el runtime — instrumentar).
set -u

CLANG="${CLANG:-clang}"
TRIPLE=x86_64-pc-windows-msvc
GC_INC="${NYX_GC_INCLUDE:-/c/nyx/bdwgc-patched/include}"
GC_LIBDIR="${NYX_GC_LIBDIR:-/c/nyx/bdwgc-patched/build/Release}"
GC_DLL="${NYX_GC_DLL:-$GC_LIBDIR/gc.dll}"
TMO="${NYX_GATE_TIMEOUT:-30}"

# Mismos 12 TUs y mismo orden que el job w2-subset.
TUS="strings.c runtime-arrays.c maps.c time.c iterators.c sqlite_adapter.c
file-io.c runtime.c thread.c scheduler.c os/event_loop_win32.c os/os_win32.c"

# Expected por test (el resto: gate por rc, como NONE en el manifiesto).
expected_for() {
  case "$1" in
    test-144-sync|test-147-select|test-380-wg-wait-timeout)
      echo "tests/compiler/language/expected/$1.expected" ;;
    *) echo "" ;;
  esac
}

cmd="${1:?uso: w4_gate_run.sh build|run ...}"; shift
case "$cmd" in
build)
  RT="${1:?falta <runtime_root>}"; WD="${2:?falta <workdir>}"
  mkdir -p "$WD/objs" "$WD/bin"
  rm -f "$WD"/objs/*.obj
  FAIL=0
  for tu in $TUS; do
    base=$(basename "$tu" .c)
    EXTRA=""
    [ "$tu" = "os/os_win32.c" ] && EXTRA="-Werror"
    "$CLANG" --target=$TRIPLE -c -O1 -Wall -D_CRT_SECURE_NO_WARNINGS \
      ${NYX_RT_EXTRA_CFLAGS:-} -I"$GC_INC" $EXTRA "$RT/runtime/$tu" \
      -o "$WD/objs/$base.obj" || FAIL=1
  done
  [ $FAIL -eq 0 ] || { echo "el subset del runtime no compila"; exit 1; }
  cp "$GC_DLL" "$WD/bin/gc.dll"
  for ll in "$WD"/ir/*.win.ll; do
    name=$(basename "$ll" .win.ll)
    "$CLANG" --target=$TRIPLE -fuse-ld=lld-link -O1 "$ll" "$WD"/objs/*.obj \
      -L"$GC_LIBDIR" -lgc -o "$WD/bin/$name.exe" > "$WD/bin/$name.link.log" 2>&1 \
      && echo "link ok   $name" || { echo "LINK FAIL $name"; cat "$WD/bin/$name.link.log"; FAIL=1; }
  done
  exit $FAIL
  ;;
run)
  WD="${1:?falta <workdir>}"; N="${2:?falta <N>}"; shift 2
  RTROOT="$(pwd)"
  if [ $# -eq 0 ]; then
    set -- $(cd "$WD/bin" && ls *.exe | sed 's/\.exe$//')
  fi
  mkdir -p "$WD/out"
  TABLE=""
  ALLGREEN=1
  for t in "$@"; do
    exp=$(expected_for "$t")
    ok=0; segv=0; hang=0; abrt=0; other=0
    for i in $(seq 1 "$N"); do
      if ( cd "$WD/bin" && timeout "$TMO" "./$t.exe" ) > "$WD/out/$t.raw" 2>&1; then rc=0; else rc=$?; fi
      tr -d '\r' < "$WD/out/$t.raw" > "$WD/out/$t.txt"
      good=0
      if [ "$rc" -eq 0 ]; then
        if [ -z "$exp" ]; then good=1
        elif diff -q <(tr -d '\r' < "$RTROOT/$exp") "$WD/out/$t.txt" > /dev/null; then good=1
        fi
      fi
      if [ $good -eq 1 ]; then ok=$((ok+1)); else
        case "$rc" in
          139) segv=$((segv+1)) ;; 124) hang=$((hang+1)) ;;
          127|134|3) abrt=$((abrt+1)) ;; *) other=$((other+1)) ;;
        esac
        cp "$WD/out/$t.txt" "$WD/out/$t.fail.$i.txt"
        echo "  [$t] run $i FALLA rc=$rc :: $(tail -1 "$WD/out/$t.txt")"
      fi
    done
    [ "$ok" -eq "$N" ] || ALLGREEN=0
    TABLE="$TABLE$(printf '%-32s %4d/%-4d segv=%d cuelgue=%d abort=%d otro=%d' "$t" "$ok" "$N" "$segv" "$hang" "$abrt" "$other")\n"
  done
  echo "================== TABLA (N=$N por test) =================="
  printf "$TABLE"
  echo "==========================================================="
  [ $ALLGREEN -eq 1 ] && echo "GATE=VERDE" || { echo "GATE=ROJO"; exit 1; }
  ;;
*) echo "subcomando desconocido: $cmd"; exit 2 ;;
esac
