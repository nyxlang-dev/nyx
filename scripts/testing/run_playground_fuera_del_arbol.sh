#!/usr/bin/env bash
# run_playground_fuera_del_arbol.sh — el playground corre SIN el repo.
#
# Producción vive en /srv/nyx/<servicio>/current (encargo de la sesión del
# servidor, 2026-11-14): el binario, static/ y examples/ se copian a un
# directorio de versión y ahí no hay árbol. Lo que se puede romper sin que nada
# falle a la vista:
#   - que vuelva a compilar con ./nyx_bootstrap o runtime/ relativos al cwd;
#   - que vuelva a escribir script.nx/script.ll (los archivos de trabajo de
#     `make`) o nombres fijos en /tmp: dos peticiones a la vez se pisan;
#   - que el puerto vuelva a quedar fijo, o una ruta del pedido salga de
#     static/ y examples/.
#
# El servidor se arma con el compilador del árbol (NYX_SRC en un directorio
# propio: no usa script.nx, así que no necesita el candado de la raíz) y corre
# desde un directorio temporal con un «toolchain» al lado que apunta al árbol,
# para probar el código actual y no el instalado en ~/.nyx.
#
# SKIP limpio sin wasi-libc (igual que make test-wasm).
set -u
cd "$(dirname "$0")/../.."
ROOT=$(pwd)
PORT="${NYX_PLAYGROUND_TEST_PORT:-18473}"
WASI_SYSROOT="${WASI_SYSROOT:-/usr}"

if [ ! -x ./nyx_bootstrap ]; then echo "  SKIP: falta ./nyx_bootstrap (make bootstrap)"; exit 0; fi
if [ ! -f "$WASI_SYSROOT/lib/wasm32-wasi/libc.a" ]; then
    echo "  SKIP: sin wasi-libc en $WASI_SYSROOT (sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19)"; exit 0
fi

W=$(mktemp -d "${TMPDIR:-/tmp}/nyx-pg-test.XXXXXXXX")
TMP_REQ="$W/tmp"; mkdir -p "$TMP_REQ" "$W/build" "$W/run/toolchain"
PID=""
limpiar() { [ -n "$PID" ] && kill "$PID" 2>/dev/null; wait 2>/dev/null; rm -rf "$W"; }
trap limpiar EXIT

PASS=0; FAIL=0
ok()  { echo "  ✓ $1"; PASS=$((PASS+1)); }
bad() { echo "  ✗ $1${2:+ — $2}"; FAIL=$((FAIL+1)); }
chk() { if [ "$2" = "$3" ]; then ok "$1"; else bad "$1" "esperado «$3», salió «$2»"; fi; }

# ── armar el servidor ──
cp playground/server.nx "$W/build/server.nx"
if ! NYX_HOME="$ROOT" NYX_SRC="$W/build/server.nx" ./nyx_bootstrap > "$W/build/compile.log" 2>&1; then
    tail -20 "$W/build/compile.log"; echo "  ✗ playground/server.nx no compila"; exit 1
fi
if ! clang -O2 "$W/build/server.ll" runtime/*.c runtime/os/os_posix.c -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
        -o "$W/run/nyx-playground" 2> "$W/build/link.log"; then
    grep -v "warning:" "$W/build/link.log" | tail -20; echo "  ✗ el playground no enlaza"; exit 1
fi

# ── el directorio de versión: binario + static/ + examples/ + toolchain al lado ──
cp -r playground/static playground/examples "$W/run/"
for x in nyx_bootstrap runtime std VERSION; do ln -s "$ROOT/$x" "$W/run/toolchain/$x"; done

antes_raiz=$(ls -la --time-style=full-iso script.nx script.ll 2>/dev/null | md5sum)
(cd "$W/run" && PORT="$PORT" TMPDIR="$TMP_REQ" exec ./nyx-playground > "$W/server.log" 2>&1) &
PID=$!
i=0
until curl -s -o /dev/null "http://127.0.0.1:$PORT/" 2>/dev/null; do
    i=$((i+1))
    if [ $i -gt 50 ] || ! kill -0 "$PID" 2>/dev/null; then cat "$W/server.log"; echo "  ✗ el playground no arrancó en :$PORT"; exit 1; fi
    sleep 0.2
done

base="http://127.0.0.1:$PORT"
code() { curl -s -o /dev/null -w '%{http_code}' --path-as-is "$@"; }

chk "PORT del entorno: escucha en :$PORT" "$(code "$base/")" "200"
chk "static/ relativo al directorio de trabajo" "$(code "$base/static/app.js")" "200"
chk "examples/ relativo al directorio de trabajo" "$(curl -s "$base/api/example/hello" | python3 -c 'import json,sys; print(json.load(sys.stdin)["name"])' 2>/dev/null)" "hello"
chk "ejemplo con ../ no sale de examples/" "$(code "$base/api/example/../static/app")" "404"
chk "ejemplo con ../ codificado no sale de examples/" "$(code "$base/api/example/..%2F..%2Ftoolchain%2Fstd%2Fhttp")" "404"
chk "static con ../ no sale de static/" "$(code "$base/static/../examples/hello.nx")" "404"

# Un programa → .wasm → wasmtime (si está) da la salida esperada.
correr() {  # $1 = texto a imprimir; imprime lo que da el wasm (o «wasm» sin wasmtime)
    printf 'fn main() {\n    print("%s")\n}\n' "$1" > "$W/req-$1.nx"
    curl -s -X POST --data-binary @"$W/req-$1.nx" "$base/api/run" > "$W/resp-$1.json"
    python3 - "$W/resp-$1.json" "$W/out-$1.wasm" <<'PY'
import base64, json, subprocess, shutil, sys
r = json.load(open(sys.argv[1]))
if not r.get("success"):
    print("ERROR: " + r.get("output", "")[:300]); sys.exit(0)
open(sys.argv[2], "wb").write(base64.b64decode(r["wasm_b64"]))
if shutil.which("wasmtime"):
    print(subprocess.run(["wasmtime", sys.argv[2]], capture_output=True, text=True, timeout=60).stdout.strip())
else:
    print("wasm" if open(sys.argv[2], "rb").read(4) == b"\0asm" else "no-wasm")
PY
}
esperado() { if command -v wasmtime > /dev/null; then echo "$1"; else echo "wasm"; fi; }

chk "un programa compila a wasm con el toolchain de al lado" "$(correr uno)" "$(esperado uno)"

# Cuatro peticiones A LA VEZ, cada una con su programa: cada respuesta es la suya.
for n in a b c d; do ( correr "paralelo-$n" > "$W/par-$n.txt" ) & PIDS="${PIDS:-} $!"; done
for p in $PIDS; do wait "$p"; done
mezcla=""
for n in a b c d; do [ "$(cat "$W/par-$n.txt")" = "$(esperado "paralelo-$n")" ] || mezcla="$mezcla $n=$(cat "$W/par-$n.txt" | head -c 80)"; done
chk "cuatro peticiones a la vez no se pisan" "$mezcla" ""

# Un error de compilación llega al usuario y no nombra el directorio temporal.
printf 'fn main() {\n    let x: int = "texto"\n}\n' > "$W/malo.nx"
err=$(curl -s -X POST --data-binary @"$W/malo.nx" "$base/api/run" | python3 -c 'import json,sys; r=json.load(sys.stdin); print(("ok" if r["success"] else "falla") + "|" + r.get("output",""))')
case "$err" in falla\|Compilation\ error*) ok "un error de compilación vuelve como error" ;; *) bad "un error de compilación vuelve como error" "${err:0:120}" ;; esac
case "$err" in *nyx-playground.*|*"$W"*) bad "el error no nombra el directorio temporal" "${err:0:200}" ;; *) ok "el error no nombra el directorio temporal" ;; esac

chk "no deja directorios de trabajo" "$(ls "$TMP_REQ" | wc -l)" "0"
chk "no toca script.nx/script.ll de la raíz del repo" "$(ls -la --time-style=full-iso script.nx script.ll 2>/dev/null | md5sum)" "$antes_raiz"
chk "no usa los nombres fijos de /tmp" "$(find /tmp -maxdepth 1 -name 'nyx_playground*' -newer "$W/build/server.nx" 2>/dev/null | wc -l)" "0"
if kill -0 "$PID" 2>/dev/null; then ok "el servidor sigue vivo al final"; else bad "el servidor sigue vivo al final"; fi

# PORT inválido: sale con error en vez de escuchar en otro lado.
(cd "$W/run" && PORT=abc timeout 5 ./nyx-playground > "$W/bad-port.log" 2>&1); rc=$?
chk "PORT inválido: sale con código 1" "$rc" "1"

echo ""
echo "  playground fuera del árbol: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
