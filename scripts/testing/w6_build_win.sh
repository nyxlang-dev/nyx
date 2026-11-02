#!/bin/bash
# scripts/testing/w6_build_win.sh — `nyx build` en Windows (W6 Task 4). Corre en
# Git Bash. El instalador de verdad es la Task 8: acá las herramientas se arman a
# mano desde IR emitido en Linux (D6: semillas derivadas, no trackeadas).
#
# Uso:
#   w6_build_win.sh emit  <dir_ir>           (en Linux/WSL, con ./nyx_bootstrap armado;
#                                             o sin compilador: scripts/win_seeds.sh derive <dir_ir>)
#   w6_build_win.sh tools <dir_ir>           deja nyx_bootstrap.exe y nyx_build.exe en la raíz
#   w6_build_win.sh test                     construye los proyectos de tests/build-win
#
# Env: NYX_GC_INCLUDE, NYX_GC_LIBDIR (bdwgc ESTÁTICO /MT), VCPKG_ROOT. Sin ellos,
# `tools` y `test` salen con SKIP y rc 0: la máquina sin vcpkg no se pone en rojo.
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"
TRIPLE=x86_64-pc-windows-msvc

# Las herramientas son lo mismo que `nyx build`: si esta lista se separa de la de
# build_nativo (compiler/build.nx), una de las dos deja de enlazar.
TUS="runtime.c strings.c runtime-arrays.c maps.c file-io.c iterators.c net.c thread.c
time.c crypto.c tls.c scheduler.c sqlite_adapter.c compress.c random.c url.c msgpack.c
csv.c websocket.c persist.c http2.c llama_adapter.c os/event_loop_win32.c os/os_win32.c"
COMPILADOR="lexer parser types semantic borrow licm resolve codegen nyx"

faltan_env() {
  [ -f "${NYX_GC_INCLUDE:-}/gc.h" ] && [ -f "${NYX_GC_LIBDIR:-}/gc.lib" ] \
    && [ -f "${VCPKG_ROOT:-}/installed/x64-windows-static/lib/libssl.lib" ] && return 1
  echo "SKIP: faltan NYX_GC_INCLUDE, NYX_GC_LIBDIR (bdwgc estático) o VCPKG_ROOT (openssl:x64-windows-static)"
  return 0
}

cmd="${1:?uso: w6_build_win.sh emit|tools|test}"; shift
case "$cmd" in
emit)
  OUT="${1:?falta <dir_ir>}"; mkdir -p "$OUT"
  . scripts/lib_stack.sh; nyx_raise_stack
  for m in $COMPILADOR gotchas_table build; do
    cp "compiler/$m.nx" script.nx
    NYX_SKIP_SEMANTIC=1 NYX_TARGET=$TRIPLE ./nyx_bootstrap > "$OUT/$m.log" 2>&1 \
      || { echo "FAIL $m (ver $OUT/$m.log)"; exit 1; }
    cp script.ll "$OUT/$m.ll"
  done
  echo "ok: IR Windows en $OUT"
  ;;
tools)
  IR="${1:?falta <dir_ir>}"
  faltan_env && exit 0
  OSSL="$VCPKG_ROOT/installed/x64-windows-static"
  OBJ="$(mktemp -d)"; trap 'rm -rf "$OBJ"' EXIT
  for tu in $TUS; do
    clang --target=$TRIPLE -c -O2 -Wno-deprecated-declarations -D_CRT_SECURE_NO_WARNINGS \
      -I"$NYX_GC_INCLUDE" -I"$OSSL/include" "runtime/$tu" -o "$OBJ/$(basename "$tu" .c).obj" \
      || { echo "no compila: $tu"; exit 1; }
  done
  LD=(-fuse-ld=lld-link "-L$NYX_GC_LIBDIR" -lgc "-L$OSSL/lib" -llibssl -llibcrypto -lcrypt32 -lws2_32 -luser32 -ladvapi32)
  lls=(); for m in $COMPILADOR; do lls+=("$IR/$m.ll"); done
  # 64 MB de pila: en Windows la reserva la cabecera del .exe y el 1 MB por omisión
  # es la octava parte de los 8 MB de Linux (medido en la Task 2).
  clang --target=$TRIPLE -O1 -Wno-override-module "${lls[@]}" "$OBJ"/*.obj "${LD[@]}" \
    -Wl,/STACK:67108864 -o nyx_bootstrap.exe || exit 1
  clang --target=$TRIPLE -O1 -Wno-override-module "$IR/build.ll" "$IR/gotchas_table.ll" "$OBJ"/*.obj "${LD[@]}" \
    -o nyx_build.exe || exit 1
  echo "ok: nyx_bootstrap.exe y nyx_build.exe"
  ;;
test)
  faltan_env && exit 0
  [ -f nyx_build.exe ] || { echo "falta nyx_build.exe: corre antes w6_build_win.sh tools"; exit 1; }
  FAIL=0; OTRA="$(mktemp -d)"; TMPP="$(mktemp -d)"; trap 'rm -rf "$OTRA" "$TMPP"' EXIT
  for p in red-min serve-serie; do
    cp -r "tests/build-win/$p" "$TMPP/$p"
    t0=$(date +%s)
    if ! ( cd "$TMPP/$p" && NYX_HOME="$ROOT" "$ROOT/nyx_build.exe" build ); then
      echo "FAIL $p: nyx build"; FAIL=1; continue
    fi
    exe="$TMPP/$p/target/$p.exe"
    [ -f "$exe" ] || { echo "FAIL $p: no dejó target/$p.exe"; FAIL=1; continue; }
    cp "$exe" "$OTRA/$p.exe"
    # Smart App Control: Windows bloquea a veces un .exe recién enlazado y sin firma
    # («Permission denied», rc 126, evento 3077 de CodeIntegrity). El hash cambia en
    # cada enlace y el veredicto con él: se reenlaza y se cuenta, porque un bloqueo
    # no dice nada del .exe. Otro rc sí es una falla.
    sac=0
    while ( cd "$OTRA" && PATH=/c/Windows/System32:/c/Windows "./$p.exe" ) > /dev/null 2>&1; [ $? -eq 126 ] && [ $sac -lt 5 ]; do
      sac=$((sac+1))
      rm -rf "$TMPP/$p/target"
      ( cd "$TMPP/$p" && NYX_HOME="$ROOT" "$ROOT/nyx_build.exe" build ) > /dev/null 2>&1
      cp "$exe" "$OTRA/$p.exe"
    done
    [ $sac -eq 0 ] || echo "$p: Smart App Control bloqueó $sac enlace(s)"
    echo "$p: $(stat -c %s "$exe") bytes, build $(( $(date +%s) - t0 )) s"
    deps=$(llvm-readobj --coff-imports "$exe" | tr -d '\r' | sed -n 's/^ *Name: \(.*\.[dD][lL][lL]\)$/\1/p' | sort -u | tr '\n' ' ')
    echo "$p pide: $deps"
    case " $deps " in *gc.dll*|*GC.DLL*|*VCRUNTIME*|*MSVCP*|*api-ms-win-crt*)
      echo "FAIL $p: pide una DLL ajena"; FAIL=1 ;; esac
    # Otra carpeta y solo el PATH del sistema: ni Nyx, ni LLVM, ni el de Git.
    got=$(cd "$OTRA" && PATH=/c/Windows/System32:/c/Windows "./$p.exe" | tr -d '\r')
    if [ "$got" = "$p: ok" ]; then echo "ok   $p"; else echo "FAIL $p: salió «$got»"; FAIL=1; fi
  done
  # Sin las rutas: error que dice qué falta, y ningún .exe a medias.
  P="$TMPP/sin-env"; cp -r tests/build-win/red-min "$P"
  salida=$(cd "$P" && env -u VCPKG_ROOT NYX_HOME="$ROOT" "$ROOT/nyx_build.exe" build 2>&1); rc=$?
  if [ $rc -ne 0 ] && printf '%s' "$salida" | grep -q "VCPKG_ROOT" && [ ! -e "$P/target/red-min.exe" ]; then
    echo "ok   sin VCPKG_ROOT: error claro y sin .exe"
  else
    echo "FAIL sin VCPKG_ROOT: rc $rc"; printf '%s\n' "$salida"; FAIL=1
  fi
  [ $FAIL -eq 0 ] && echo "BUILD-WIN=VERDE" || { echo "BUILD-WIN=ROJO"; exit 1; }
  ;;
*) echo "subcomando desconocido: $cmd"; exit 2 ;;
esac
