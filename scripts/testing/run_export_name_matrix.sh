#!/usr/bin/env bash
# =============================================================================
# run_export_name_matrix.sh — una fn #[export_name] que ADEMÁS se llama desde Nyx
#
# Cuatro celdas: {archivo principal, módulo importado} × {nativo, wasm32-wasi}.
# Hasta el 2026-11-15 dos fallaban recién en clang, con un mensaje que no
# nombraba ni la fn ni el atributo (reporte de venezuelainfo):
#   - módulo + wasm: el define salía con el nombre de export y la llamada con
#     el de Nyx (`use of undefined value '@mod__saluda'`);
#   - principal + nativo: un alias de @saluda sobre @saluda (`redefinition`).
# Cada celda compila, corre, compara la salida y comprueba que el símbolo de
# export EXISTE con su nombre C (nm en nativo, la tabla de exports en wasm).
# Las celdas wasm dan SKIP limpio sin toolchain.
# =============================================================================
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"
source "$(dirname "${BASH_SOURCE[0]}")/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/csv.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
FIX="tests/export-name"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"; rm -f script.nx script.ll script_bin principal.wasm uno.wasm' EXIT

[ -x ./nyx_bootstrap ] || { echo "✗ falta ./nyx_bootstrap — ejecuta 'make bootstrap' primero"; exit 1; }

PASS=0; FAIL=0; SKIP=0
ok()   { echo "  ✅ $1"; PASS=$((PASS+1)); }
bad()  { echo "  ❌ $1 — $2"; FAIL=$((FAIL+1)); }

# nativo <etiqueta> <archivo> <salida esperada> <símbolos C...>
nativo() {
    local tag="$1" src="$2" want="$3"; shift 3
    cp "$src" script.nx
    if ! NYX_PROJECT_DIR="$ROOT/$(dirname "$src")" ./nyx_bootstrap > "$TMP/c.log" 2>&1; then
        bad "$tag" "el compilador lo rechazó: $(grep -m1 -iE 'error|NYX[0-9]' "$TMP/c.log")"; return
    fi
    if ! clang -O2 -w script.ll $RT $LIBS -o script_bin 2> "$TMP/cl.log"; then
        bad "$tag" "clang: $(grep -m1 'error' "$TMP/cl.log")"; return
    fi
    local out; out="$(timeout 30 ./script_bin 2>&1)"
    [ "$out" = "$want" ] || { bad "$tag" "salida «$out», se esperaba «$want»"; return; }
    # A una variable: con pipefail, `nm | grep -q` falla por SIGPIPE aunque acierte.
    local syms s; syms="$(nm script_bin)"
    for s in "$@"; do
        grep -qE " [TW] $s\$" <<< "$syms" || { bad "$tag" "el binario no exporta el símbolo '$s'"; return; }
    done
    ok "$tag"
}

# wasm <etiqueta> <archivo> <salida esperada> <exports...>
wasm() {
    local tag="$1" src="$2" want="$3"; shift 3
    local bin; bin="$(basename "${src%.nx}").wasm"
    if ! make wasm FILE="$src" > "$TMP/w.log" 2>&1 || [ ! -f "$bin" ]; then
        bad "$tag" "make wasm: $(grep -v '^bash scripts/' "$TMP/w.log" | grep -m1 'error')"; return
    fi
    local out; out="$(timeout 30 wasmtime "$bin" 2>&1)"
    [ "$out" = "$want" ] || { bad "$tag" "salida «$out», se esperaba «$want»"; return; }
    local exps
    exps="$(node -e 'const m=new WebAssembly.Module(require("fs").readFileSync(process.argv[1]));console.log(WebAssembly.Module.exports(m).filter(e=>e.kind==="function").map(e=>e.name).join("\n"))' "$bin")"
    local s
    for s in "$@"; do
        grep -qx "$s" <<< "$exps" || { bad "$tag" "el .wasm no exporta '$s'"; return; }
    done
    ok "$tag"
}

echo "── #[export_name] llamada desde Nyx: principal/módulo × nativo/wasm ──"
DOS="$(printf 'hola\n42')"
nativo "principal · nativo" "$FIX/uno.nx" "$DOS" saluda doble_c
nativo "módulo · nativo"    "$FIX/modulo/principal.nx" "hola" saluda

WASI_LIBC="$(make -pn 2>/dev/null | sed -n 's/^WASI_LIBC *[:?]*= *//p' | head -1)"
if [ -n "$WASI_LIBC" ] && [ -f "$WASI_LIBC" ] && command -v wasmtime > /dev/null && command -v node > /dev/null; then
    wasm "principal · wasm" "$FIX/uno.nx" "$DOS" saluda doble_c
    wasm "módulo · wasm"    "$FIX/modulo/principal.nx" "hola" saluda
else
    echo "  ⏭  celdas wasm: SKIP (falta wasi-libc, wasmtime o node)"; SKIP=2
fi

echo "  export_name: $PASS pasados, $FAIL fallidos, $SKIP saltados"
[ "$FAIL" -eq 0 ]
