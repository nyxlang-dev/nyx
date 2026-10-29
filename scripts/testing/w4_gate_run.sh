#!/bin/bash
# scripts/testing/w4_gate_run.sh — parte 2 del gate local de concurrencia
# W3/W4 en Windows x64 (Git Bash + clang con triple MSVC). Compila los 17 TUs
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
#       compila los 17 TUs (+ tls.c y crypto.c con VCPKG_ROOT) de <runtime_root>/runtime a <workdir>/objs y
#       linkea <workdir>/ir/*.win.ll a <workdir>/bin/*.exe
#   w4_gate_run.sh run <workdir> <N> [test-name ...]
#       corre cada test N veces (default: todos los .exe de <workdir>/bin)
#   Env: NYX_GC_INCLUDE (headers de bdwgc), NYX_GC_LIBDIR (dir con gc.lib),
#        NYX_GC_DLL (gc.dll a copiar junto a los .exe; default el de LIBDIR),
#        NYX_GATE_TIMEOUT (segundos por corrida, default 30),
#        NYX_RT_EXTRA_CFLAGS (flags extra SOLO para el runtime — instrumentar),
#        VCPKG_ROOT (con openssl:x64-windows-static instalado: suma TLS; ver abajo).
set -u

CLANG="${CLANG:-clang}"
TRIPLE=x86_64-pc-windows-msvc
GC_INC="${NYX_GC_INCLUDE:-/c/nyx/bdwgc-patched/include}"
GC_LIBDIR="${NYX_GC_LIBDIR:-/c/nyx/bdwgc-patched/build/Release}"
GC_DLL="${NYX_GC_DLL:-$GC_LIBDIR/gc.dll}"
TMO="${NYX_GATE_TIMEOUT:-30}"

# Mismos 17 TUs y mismo orden que el job w2-subset. csv.c entró en W5: desde
# e0a02263 std/csv llama a nyx_csv_read/nyx_csv_guess_schema y test-141 dejó
# de enlazar con los 12 de antes. net.c entró en la Task 4 de W5: los tests de
# red (UDP, ping, http://) lo piden y no depende de OpenSSL; random.c, porque
# std/http lo arrastra (boundary de multipart). persist.c y compress.c entraron
# en la Task 5: persist (apagado por SetConsoleCtrlHandler) y zlib por dl, sin
# zlib.h ni enlace.
TUS="strings.c runtime-arrays.c maps.c time.c iterators.c sqlite_adapter.c csv.c
file-io.c runtime.c thread.c scheduler.c net.c random.c persist.c compress.c
os/event_loop_win32.c os/os_win32.c"

# TLS (W5 Task 4, opción A de Ottavio): net.c no depende de OpenSSL, pero tls.c
# (https_*/http_* y tls_*) y crypto.c sí, y se enlazan contra el OpenSSL
# ESTÁTICO de vcpkg (openssl:x64-windows-static: un .exe sin DLLs de OpenSSL al
# lado). Sin ese OpenSSL el gate sigue: los tests que lo necesitan salen como
# SKIP (TLS), no como LINK FAIL — la máquina sin vcpkg no se pone en rojo.
# EN: TLS TUs link against vcpkg's static OpenSSL; without it, tests needing
# them are reported as SKIP (TLS) instead of LINK FAIL.
OSSL_DIR="${VCPKG_ROOT:+$VCPKG_ROOT/installed/x64-windows-static}"
TLS_TUS="tls.c crypto.c"
TLS_LIBS="-llibssl -llibcrypto -lcrypt32 -lws2_32 -luser32 -ladvapi32"
TLS_ON=0
[ -n "$OSSL_DIR" ] && [ -f "$OSSL_DIR/include/openssl/ssl.h" ] && [ -f "$OSSL_DIR/lib/libssl.lib" ] && TLS_ON=1

# ¿Todos los indefinidos de un link fallido son de los TUs de TLS? Entonces el
# test necesita TLS y es SKIP, no rojo.
# EN: are all undefined symbols of a failed link defined in the TLS TUs?
needs_only_tls() {  # $1 = link log, $2 = runtime root
  local syms s
  syms=$(grep -oE 'undefined symbol: [A-Za-z_][A-Za-z0-9_]*' "$1" | sed 's/undefined symbol: //' | sort -u)
  [ -n "$syms" ] || return 1
  for s in $syms; do
    grep -qE "^[A-Za-z_].*[ *]$s\(" "$2/runtime/tls.c" "$2/runtime/crypto.c" || return 1
  done
  return 0
}

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
  LINK_EXTRA=""
  rm -rf "$WD/tlsobjs" "$WD/nyxtls.lib"
  if [ $TLS_ON -eq 1 ]; then
    # Los TUs de TLS van en una .lib, NO en objs/: un .obj suelto entra entero
    # al .exe y arrastra OpenSSL a TODOS los tests (~0,4 MB → ~5,5 MB, medido el
    # 2026-10-28); de una .lib el linker solo saca lo que el test usa.
    # EN: TLS objects go into a .lib so only tests that use TLS pull OpenSSL in.
    mkdir -p "$WD/tlsobjs"
    for tu in $TLS_TUS; do
      base=$(basename "$tu" .c)
      "$CLANG" --target=$TRIPLE -c -O1 -Wall -Wno-deprecated-declarations -D_CRT_SECURE_NO_WARNINGS \
        ${NYX_RT_EXTRA_CFLAGS:-} -I"$GC_INC" -I"$OSSL_DIR/include" "$RT/runtime/$tu" \
        -o "$WD/tlsobjs/$base.obj" || FAIL=1
    done
    [ $FAIL -eq 0 ] || { echo "los TUs de TLS no compilan"; exit 1; }
    "${LLVM_LIB:-llvm-lib}" -nologo -out:"$WD/nyxtls.lib" "$WD"/tlsobjs/*.obj || exit 1
    LINK_EXTRA="$WD/nyxtls.lib -L$OSSL_DIR/lib $TLS_LIBS"
    echo "TLS: sí (OpenSSL estático de $OSSL_DIR)"
  else
    echo "TLS: SKIP (sin VCPKG_ROOT con openssl:x64-windows-static; los tests que lo piden no se enlazan)"
  fi
  cp "$GC_DLL" "$WD/bin/gc.dll"
  rm -f "$WD"/bin/*.skip
  for ll in "$WD"/ir/*.win.ll; do
    name=$(basename "$ll" .win.ll)
    # /errorlimit:0: needs_only_tls mira TODOS los indefinidos, no los 20 primeros.
    if "$CLANG" --target=$TRIPLE -fuse-ld=lld-link -O1 -Wl,/errorlimit:0 "$ll" "$WD"/objs/*.obj \
         -L"$GC_LIBDIR" -lgc $LINK_EXTRA -o "$WD/bin/$name.exe" > "$WD/bin/$name.link.log" 2>&1; then
      echo "link ok   $name"
    elif [ $TLS_ON -eq 0 ] && needs_only_tls "$WD/bin/$name.link.log" "$RT"; then
      echo "SKIP TLS  $name"
      rm -f "$WD/bin/$name.exe"; touch "$WD/bin/$name.skip"
    else
      echo "LINK FAIL $name"; cat "$WD/bin/$name.link.log"; FAIL=1
    fi
  done
  exit $FAIL
  ;;
run)
  WD="${1:?falta <workdir>}"; N="${2:?falta <N>}"; shift 2
  RTROOT="$(pwd)"
  if [ $# -eq 0 ]; then
    set -- $(cd "$WD/bin" && ls *.exe *.skip 2>/dev/null | sed 's/\.\(exe\|skip\)$//')
  fi
  mkdir -p "$WD/out"
  TABLE=""
  ALLGREEN=1
  for t in "$@"; do
    if [ -f "$WD/bin/$t.skip" ]; then
      TABLE="$TABLE$(printf '%-32s SKIP (TLS: sin OpenSSL de vcpkg)' "$t")\n"
      continue
    fi
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
