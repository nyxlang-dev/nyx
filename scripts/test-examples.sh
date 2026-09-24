#!/usr/bin/env bash
# test-examples.sh — verifica que los ejemplos de "Nyx by Example" compilan,
# ENLAZAN y CORREN con exit 0.
#
# Hasta el 2026-09-09 solo corría el compilador (script.nx → script.ll) y ni
# siquiera linkeaba: una receta PUBLICADA podía compilar y reventar al ejecutar
# —o imprimir cualquier cosa— y el gate la daba por buena. Ficha [ALTA, test,
# dogfooding:lenguaje].
#
# Los ejemplos que necesitan red, un servidor o entrada interactiva no se pueden
# ejecutar en un gate: esos SOLO se compilan y enlazan, y están listados abajo
# con su motivo. La lista es explícita a propósito — si un ejemplo deja de
# necesitar el servidor, sale de la lista y pasa a ejecutarse.
#
# Usa el toolchain instalado en ~/.nyx/ si existe, o el bootstrap del monorepo.
#
# Uso: bash scripts/test-examples.sh
# Target Makefile: make test-examples

set -e
cd "$(dirname "$0")/.."

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh). Este script vive
# fuera de scripts/testing/ (follow-up de la cosecha [arco:W3-paso0b] ficha B
# — quedó fichado como fuera del scope original porque no es
# scripts/testing/*.sh ni parte de make test/test-all).
source "$(dirname "$0")/testing/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

# El bootstrap DEL REPO manda: este gate mide el compilador de este árbol, que
# es lo que se está por commitear. El toolchain instalado en ~/.nyx puede ser
# más viejo —lo fue— y entonces el gate mediría otra cosa. Solo se usa como
# fallback para quien clona sin haber corrido `make bootstrap`.
NYX_BIN="./nyx_bootstrap"
if [ ! -x "$NYX_BIN" ] && [ -x "$HOME/.nyx/bin/nyx" ]; then
    NYX_BIN="$HOME/.nyx/bin/nyx"
fi

if [ ! -x "$NYX_BIN" ]; then
    echo "error: no Nyx compiler found. Run 'make bootstrap' or install the toolchain." >&2
    exit 1
fi

EXAMPLES_DIR="examples/by-example"
if [ ! -d "$EXAMPLES_DIR" ]; then
    echo "error: $EXAMPLES_DIR not found" >&2
    exit 1
fi

PASS=0
FAIL=0
FAILED_LIST=()

# Ejemplos que NO se pueden ejecutar en un gate, con el motivo. Solo se exige
# que compilen y ENLACEN (que es más de lo que se exigía antes: nada).
SOLO_COMPILA=(
    # necesitan un servidor escuchando o hacen de servidor
    "47-tcp-server" "51-http-server" "46-tcp-client" "52-http-client"
    "53-websocket" "54-websocket-server" "55-http-routes" "56-http-middleware"
    # necesitan el daemon de nyx-kv
    "71-kv-basic" "72-kv-lists" "73-kv-hashes" "74-kv-sets" "75-kv-pubsub"
    "76-kv-ttl" "77-kv-pipelined" "78-kv-transactions"
    # necesitan entrada interactiva
    "12-stdin-input"
    # necesitan red externa o un modelo local
    "80-llm-basic" "81-llm-stream" "82-http-download"
    # necesita un PostgreSQL con la base y el usuario de la receta
    "104-postgres"
    # mismo servidor/base que 104-postgres (ver ese archivo para montarlo
    # local): sin él, #[derive(Fields)] compila igual pero la conexión falla
    "103-orm-sin-mapeo"
)

en_lista_solo_compila() {
    local n="$1"
    for x in "${SOLO_COMPILA[@]}"; do [ "$x" = "$n" ] && return 0; done
    return 1
}

# TODOS los .c del runtime, glob incluido llama_adapter.c: una lista escrita a
# mano se desactualiza en cuanto alguien agrega un .c, y el síntoma es un
# «undefined reference» que parece un ejemplo roto y no lo es (pasó con
# nyx_llm_last_error en la primera corrida de este runner).
RT="$(ls runtime/*.c | tr '\n' ' ')runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
CLANG="${CLANG:-clang}"

# Recetas SOLO-navegador (std/browser, std/dom o extern "js"): en nativo abortan
# a propósito, así que se compilan a wasm32-wasi y se enlazan, con Asyncify si el
# .ll trae imports que suspenden (arco async-real-wasm). No se ejecutan: los
# imports js:: los pone un navegador o el shim; su conducta la fija make test-wasm.
WASI_SYSROOT="${WASI_SYSROOT:-/usr}"
WASM_OPT="${NYX_WASM_OPT:-$(command -v wasm-opt || true)}"
correr_ejemplo_wasm() {
    local name="$1"
    if [ ! -f "$WASI_SYSROOT/lib/wasm32-wasi/libc.a" ]; then
        printf "  \033[1;33m○\033[0m %s (SKIP: receta wasm32-wasi y falta wasi-libc)\n" "$name"
        return 0
    fi
    if ! NYX_TARGET=wasm32-wasi NYX_NO_GC=1 "$NYX_BIN" > /tmp/ex_c.log 2>&1; then
        printf "  \033[1;31m✗\033[0m %s (compila a wasm32-wasi)\n" "$name"
        grep -iE "error|NYX[0-9]" /tmp/ex_c.log | head -2 | sed 's/^/      /'
        return 1
    fi
    local srcs asy
    srcs="$(grep -v '^#' runtime/wasm.srcs | grep -v '^$' | tr '\n' ' ')"
    if ! $CLANG --target=wasm32-wasi --sysroot="$WASI_SYSROOT" -O2 -Iruntime/wasi \
            -Wl,-z,stack-size=1048576 -Wl,--export-table script.ll $srcs -o script.wasm > /tmp/ex_l.log 2>&1; then
        printf "  \033[1;31m✗\033[0m %s (enlaza a wasm32-wasi)\n" "$name"
        grep -iE "error" /tmp/ex_l.log | head -2 | sed 's/^/      /'
        return 1
    fi
    asy="$(grep -m1 '^; nyx-asyncify-imports: ' script.ll | sed 's/^; nyx-asyncify-imports: //')"
    if [ -n "$asy" ]; then
        if [ -z "$WASM_OPT" ]; then
            printf "  \033[1;33m○\033[0m %s (compila+enlaza a wasm; Asyncify SIN verificar: falta wasm-opt)\n" "$name"
            return 0
        fi
        if ! "$WASM_OPT" script.wasm --asyncify --pass-arg=asyncify-imports@"$asy" -O2 -o script.wasm > /tmp/ex_o.log 2>&1; then
            printf "  \033[1;31m✗\033[0m %s (wasm-opt --asyncify)\n" "$name"
            head -2 /tmp/ex_o.log | sed 's/^/      /'
            return 1
        fi
    fi
    printf "  \033[1;33m○\033[0m %s (solo compila+enlaza a wasm32-wasi: corre en el navegador)\n" "$name"
    return 0
}

# Compila, enlaza y (si corresponde) ejecuta UN ejemplo.
correr_ejemplo() {
    local nx_file="$1" name="$2"
    cp "$nx_file" script.nx
    # NYX_PROJECT_DIR: `include_bytes` resuelve su ruta desde la raíz del
    # proyecto, y sin esto la receta 112 no compila (arco include-bytes). Es el
    # directorio del repo, así que una receta nombra su recurso por su ruta
    # real; para las demás es inocuo.
    export NYX_PROJECT_DIR="$PWD"
    if grep -qE 'extern "js"|import "std/(browser|browser_await|browser_idb|browser_serial|dom)"' "$nx_file"; then
        correr_ejemplo_wasm "$name"
        return $?
    fi

    if ! "$NYX_BIN" > /tmp/ex_c.log 2>&1; then
        printf "  \033[1;31m✗\033[0m %s (compila)\n" "$name"
        grep -iE "error|NYX[0-9]" /tmp/ex_c.log | head -2 | sed 's/^/      /'
        return 1
    fi
    if ! $CLANG -O1 script.ll $RT $LIBS -o script_bin > /tmp/ex_l.log 2>&1; then
        printf "  \033[1;31m✗\033[0m %s (enlaza)\n" "$name"
        grep -iE "error" /tmp/ex_l.log | head -2 | sed 's/^/      /'
        return 1
    fi
    if en_lista_solo_compila "$name"; then
        printf "  \033[1;33m○\033[0m %s (solo compila+enlaza: necesita red/servidor/entrada)\n" "$name"
        return 0
    fi
    local out ec
    # `|| true` explícito: con `set -e` una asignación desde un comando que
    # falla aborta el script, y acá el fallo es justamente lo que se quiere
    # medir. (Dentro de la condición de un `if` bash lo suspende, pero no se
    # depende de esa sutileza.)
    out="$(timeout 30 ./script_bin 2>&1)" || true; ec=$?
    if [ $ec -eq 0 ]; then
        printf "  \033[1;32m✓\033[0m %s\n" "$name"
        return 0
    fi
    printf "  \033[1;31m✗\033[0m %s (ejecuta, exit=%d)\n" "$name" "$ec"
    printf '%s\n' "$out" | tail -3 | sed 's/^/      /'
    return 1
}

for nx_file in "$EXAMPLES_DIR"/*.nx; do
    name="$(basename "$nx_file" .nx)"
    if correr_ejemplo "$nx_file" "$name"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        FAILED_LIST+=("$name")
    fi
done

rm -f script.nx script.ll script_bin script.wasm

# examples/ raíz (no by-example): puñado curado de ejemplos citados por docs/scripts
# vivos — cada uno vuelve a compilar acá para que no se pudran en silencio
# (fix: ola B4 de la campaña SDD-nyx, 2026-09-02 — 19 ejemplos muertos o sin cita
# se borraron del repo; los que quedan entran a este loop).
echo ""
echo "examples/ (raíz):"
for nx_file in examples/*.nx; do
    name="$(basename "$nx_file" .nx)"
    if correr_ejemplo "$nx_file" "$name"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        FAILED_LIST+=("$name")
    fi
done

rm -f script.nx script.ll script_bin script.wasm

echo ""
echo "────────────────────────────────────────"
echo "  Passed: $PASS   Failed: $FAIL"
echo "────────────────────────────────────────"

if [ "$FAIL" -gt 0 ]; then
    echo ""
    echo "Failed examples:"
    for name in "${FAILED_LIST[@]}"; do
        echo "  - $name"
    done
    echo ""
    echo "To debug: cp examples/by-example/<name>.nx script.nx && $NYX_BIN  (or examples/<name>.nx for the root ones)"
    exit 1
fi
