#!/usr/bin/env bash
# ============================================================
#  run_build_shared.sh — `nyx build --shared` (arco android-lib, Tasks 4 y 5)
# ============================================================
# Arma tests/build-shared/lib-min como lib<name>.so en el anfitrión y la carga con
# loader.c (dlopen), como lo haría una app: exportadas con int/bool/float/String,
# fn init() una sola vez, 8 hilos ajenos que alocan bajo GC (y el mismo caso con
# el registro apagado, que tiene que fallar: es el silently-wrong de D5), un
# assert que llega al handler fatal y termina con SIGABRT, y la tabla de símbolos
# exportados (solo las #[export_name] y el borde del runtime). Si hay deps de
# Android (NYX_ANDROID_DEPS o ~/.cache/nyx-android-deps), arma también la .so de
# aarch64-linux-android y la revisa con readelf: NEEDED solo de las bibliotecas
# públicas del NDK (libc, libm, libdl, liblog, libz), LOAD
# alineado a 16 KB y la misma tabla de símbolos (Task 5).
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

if [ ! -x "$ROOT/nyx_build" ] || [ "$ROOT/compiler/build.nx" -nt "$ROOT/nyx_build" ]; then
    echo "  ✗ ./nyx_build falta o es más viejo que compiler/build.nx — corre 'make build-nyx-build'"
    exit 1
fi
READELF="$(command -v llvm-readelf || command -v llvm-readelf-19 || command -v readelf || true)"
if [ -z "$READELF" ]; then echo "SKIP run_build_shared: no hay readelf en PATH"; exit 0; fi

PASS=0; FAIL=0
ok()  { echo "  ✓ $1"; PASS=$((PASS + 1)); }
bad() { echo "  ✗ $1"; FAIL=$((FAIL + 1)); }
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "╔════════════════════════════════════════════════╗"
echo "║   nyx build --shared (biblioteca .so)           ║"
echo "╚════════════════════════════════════════════════╝"

# Símbolos que la .so exporta: las #[export_name] del fixture y el borde del runtime.
ESPERADOS="lib_eco lib_es_par lib_falla lib_inits lib_mitad lib_suma lib_trabajo nyx_buf_free nyx_lib_enter nyx_lib_init nyx_lib_set_fatal_handler"
exportados() {
    "$READELF" --dyn-syms -W "$1" | awk '$5 == "GLOBAL" && $7 != "UND" { sub(/@.*/, "", $8); print $8 }' | sort -u | tr '\n' ' ' | sed 's/ $//'
}

P="$TMP/lib-min"
cp -r "$ROOT/tests/build-shared/lib-min" "$P"
so="$P/target/liblibmin.so"
if ( cd "$P" && NYX_HOME="$ROOT" timeout 580 "$ROOT/nyx_build" build --shared ) > "$TMP/build.out" 2>&1 && [ -f "$so" ]; then
    ok "nyx build --shared deja target/liblibmin.so ($(wc -c < "$so") bytes)"
else
    bad "el build --shared falló o no dejó target/liblibmin.so"; tail -20 "$TMP/build.out"
    echo ""; echo "build-shared: $PASS ok, $FAIL fallos"; exit 1
fi

if clang -O1 -o "$TMP/loader" "$ROOT/tests/build-shared/loader.c" -ldl -lpthread 2> "$TMP/cc.out"; then :; else
    bad "loader.c no compila"; cat "$TMP/cc.out"
fi

got="$("$TMP/loader" "$so" basico 2>&1)"; rc=$?
want="$(cat "$ROOT/tests/build-shared/basico.expected")"
if [ $rc -eq 0 ] && [ "$got" = "$want" ]; then ok "exportadas int/bool/float/String (NUL adentro) y fn init() una vez"
else bad "basico: rc=$rc"; diff <(echo "$want") <(echo "$got") | head -10; fi

got="$("$TMP/loader" "$so" hilos 2>&1)"; rc=$?
if [ $rc -eq 0 ]; then ok "8 hilos ajenos alocando bajo GC: $got"; else bad "hilos: rc=$rc $got" ; fi

# Rojo esperado: sin registrar los hilos en Boehm, sus pilas no se escanean. Tres
# intentos: alcanza con que uno falle para mostrar que el test ve el bug.
rojo_falla() {
    for _ in 1 2 3; do
        NYX_LIB_NO_REGISTER=1 "$TMP/loader" "$so" hilos > "$TMP/rojo.out" 2>&1 || return 0
    done
    return 1
}
# stderr de la función cerrado: el abort esperado no ensucia con el «Aborted» de bash.
rojo=0
rojo_falla 2>/dev/null && rojo=1
if [ $rojo -eq 1 ]; then ok "con NYX_LIB_NO_REGISTER=1 el mismo caso falla (el test ve el bug de D5)"
else bad "con el registro apagado los hilos pasaron 3 veces: el test no distingue el bug"; fi

got="$("$TMP/loader" "$so" fatal 2>/dev/null)"; rc=$?
if [ $rc -eq 134 ] && echo "$got" | grep -q "^FATAL-HANDLER: " && ! echo "$got" | grep -q NO-ABORTO; then
    ok "assert fallido → handler fatal + SIGABRT ($(echo "$got" | head -1 | cut -c1-70))"
else bad "fatal: rc=$rc (se esperaba 134) salida: $got"; fi

ex="$(exportados "$so")"
if [ "$ex" = "$ESPERADOS" ]; then ok "solo exporta las #[export_name] y el borde del runtime"
else bad "símbolos exportados: [$ex] — se esperaba [$ESPERADOS]"; fi

# ── Task 5: la .so de Android ───────────────────────────────
AD="${NYX_ANDROID_DEPS:-$HOME/.cache/nyx-android-deps}"
if [ ! -d "$AD/sysroot" ]; then
    echo "  SKIP android: no hay deps en $AD (scripts/build_android_deps.sh)"
else
    rm -rf "$P/target"
    aso="$P/target/aarch64-linux-android/liblibmin.so"
    if ( cd "$P" && NYX_HOME="$ROOT" NYX_ANDROID_DEPS="$AD" timeout 580 "$ROOT/nyx_build" build --target aarch64-linux-android --shared ) > "$TMP/abuild.out" 2>&1 && [ -f "$aso" ]; then
        ok "android: target/aarch64-linux-android/liblibmin.so ($(wc -c < "$aso") bytes)"
        needed="$("$READELF" -d -W "$aso" | sed -n 's/.*(NEEDED).*\[\(.*\)\]/\1/p' | sort -u | tr '\n' ' ')"
        if echo "$needed" | tr ' ' '\n' | grep -v '^$' | grep -qvE '^lib(c|m|dl|log|z)\.so$'; then bad "android: NEEDED ajeno: $needed"
        else ok "android: NEEDED solo del sistema: $needed"; fi
        mal=""
        for a in $("$READELF" -l -W "$aso" | awk '$1 == "LOAD" { print $NF }'); do
            [ $((a)) -lt 16384 ] && mal="$mal $a"
        done
        if [ -z "$mal" ]; then ok "android: segmentos LOAD alineados a 16 KB"; else bad "android: LOAD con alineación $mal"; fi
        aex="$(exportados "$aso")"
        if [ "$aex" = "$ESPERADOS" ]; then ok "android: misma tabla de símbolos exportados"
        else bad "android: símbolos [$aex]"; fi
    else
        bad "android: el build --shared falló"; tail -20 "$TMP/abuild.out"
    fi
fi

echo ""
echo "build-shared: $PASS ok, $FAIL fallos"
[ "$FAIL" -eq 0 ]
