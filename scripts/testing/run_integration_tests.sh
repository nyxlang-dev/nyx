#!/usr/bin/env bash
# =============================================================================
# run_integration_tests.sh — End-to-end integration tests
#
# Tests the full stack: HTTP requests through serve with KV backend.
#
# Usage:
#   bash scripts/testing/run_integration_tests.sh
#
# Prerequisites: el server web es std/serve (fixture compilado acá mismo con
# el bootstrap — desde la absorción 2026-09-03 no hay binario nyx-serve
# aparte); el daemon nyx-kv viene de su repo extraído
# (~/nyx/products/kv/daemon/nyxkv, override NYX_KV_BIN). Si el daemon kv no
# está, el E2E serve+kv se SKIPEA con aviso (exit 0) — no es un fallo del
# monorepo.
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source "$SCRIPT_DIR/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

# Colors
if [ -t 1 ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN='' RED='' YELLOW='' BOLD='' NC=''
fi

echo -e "\n${BOLD}=======================================${NC}"
echo -e "${BOLD}   Nyx Integration Tests (E2E)${NC}"
echo -e "${BOLD}=======================================${NC}\n"

OVERALL=0

# ── Runtime precompilado (UNA vez) para los sub-tests que linkean binarios ──
# Antes cada harness (FFI callback, llm stub, HTTP/2) recompilaba los 24
# runtime/*.c con clang -O2 desde cero → builds redundantes seriales (finding
# del code-review 2026-07-17). Ahora: .o una vez → libnyxrt.a; los harnesses
# python la usan vía NYX_RT_ARCHIVE (fallback a fuentes si no está).
RT_CACHE="$(mktemp -d /tmp/nyx-rt-cache.XXXXXX)"
trap 'rm -rf "$RT_CACHE"' EXIT
echo -e "${BOLD}-- Precompilando runtime (una vez) --${NC}"
RT_OK=1
# El glob runtime/*.c NO desciende a runtime/os/ — os_posix.c (capa nyx_os_*,
# W1) va explícito o el link muere con símbolos os_* indefinidos.
for c in runtime/*.c runtime/os/os_posix.c; do
    clang -O2 -c "$c" -o "$RT_CACHE/$(basename "${c%.c}").o" 2>/dev/null || { RT_OK=0; break; }
done
if [ "$RT_OK" -eq 1 ] && ar rcs "$RT_CACHE/libnyxrt.a" "$RT_CACHE"/*.o 2>/dev/null; then
    export NYX_RT_ARCHIVE="$RT_CACHE/libnyxrt.a"
    echo "  runtime cacheado en libnyxrt.a"
else
    echo "  (precompilado falló — los sub-tests usan las fuentes directas)"
fi

# ── WebSocket proxying E2E ────────────────────────────────────────────────
# Fixture propio (tests/integration/ws_gateway): gateway TLS mínimo en puerto
# no privilegiado. Se auto-SKIPEA (exit 0) si falta el toolchain ~/.nyx.
echo -e "${BOLD}-- WebSocket proxying --${NC}"
if python3 tests/integration/test_ws_proxy.py; then
    echo -e "  ${GREEN}WS proxy E2E passed${NC}"
else
    echo -e "  ${RED}WS proxy E2E failed${NC}"
    OVERALL=1
fi

# ── FFI callback C→Nyx (c_fn_ptr) ─────────────────────────────────────────
# Repro: fns Nyx top-level pasadas como callbacks C-callable (c_fn_ptr) a una
# toy lib C que las invoca (escalar + logging con string_from_cstr + streaming).
echo -e "\n${BOLD}-- FFI callback C→Nyx --${NC}"
if python3 tests/integration/test_ffi_callback.py; then
    echo -e "  ${GREEN}FFI callback E2E passed${NC}"
else
    echo -e "  ${RED}FFI callback E2E failed${NC}"
    OVERALL=1
fi

# ── Lectura tipada de slots de Array (slots-tag, residuo post-Etapa 4) ────
# print inline consulta el tag (float/String/bool correctos) + lecturas
# tipadas: mismatch definido = abort ORDENADO (exit 1 + mensaje, nunca SEGV).
echo -e "\n${BOLD}-- Lectura tipada de slots (slots-tag) --${NC}"
if python3 tests/integration/test_slot_typed_read.py; then
    echo -e "  ${GREEN}slot typed read E2E passed${NC}"
else
    echo -e "  ${RED}slot typed read E2E failed${NC}"
    OVERALL=1
fi

# ── std/llm contra stub de libllama (bindings llama.cpp) ──────────────────
# Adapter dlopen + LLM afín/Drop + streaming c_fn_ptr, determinista sin modelo.
echo -e "\n${BOLD}-- std/llm (stub llama) --${NC}"
if python3 tests/integration/test_llm_stub.py; then
    echo -e "  ${GREEN}llm stub E2E passed${NC}"
else
    echo -e "  ${RED}llm stub E2E failed${NC}"
    OVERALL=1
fi

# ── HTTP/2 (std/http2 + runtime/http2.c) ─────────────────────────────────
# Servidor del ejemplo examples/http2-server.nx en puerto de test efímero.
# El test usa la lib python h2 si está, o fallback raw-socket sin deps.
# (Test movido de tests/products/ al absorber nyx-http2 al core, 2026-07-05.)
echo -e "\n${BOLD}-- HTTP/2 --${NC}"
H2_PORT=13004
H2_BIN="/tmp/nyx-http2-test-server"
echo -e "  Compiling examples/http2-server.nx..."
cp examples/http2-server.nx script.nx
if NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap >/dev/null 2>&1 && \
   clang -O2 script.ll ${NYX_RT_ARCHIVE:-runtime/*.c runtime/os/os_posix.c} -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
       -o "$H2_BIN" 2>/dev/null; then
    rm -f script.nx script.ll
    "$H2_BIN" "$H2_PORT" >/dev/null 2>&1 &
    H2_PID=$!
    sleep 0.8
    if python3 tests/integration/test_http2.py "$H2_PORT"; then
        echo -e "  ${GREEN}HTTP/2 E2E passed${NC}"
    else
        echo -e "  ${RED}HTTP/2 E2E failed${NC}"
        OVERALL=1
    fi
    kill -TERM "$H2_PID" 2>/dev/null || true
    sleep 0.3
    kill -9 "$H2_PID" 2>/dev/null || true
    rm -f "$H2_BIN"
else
    rm -f script.nx script.ll
    echo -e "  ${RED}HTTP/2: no se pudo compilar el ejemplo${NC}"
    OVERALL=1
fi

# ── Cap de body HTTP (std/http, NYX_HTTP_MAX_BODY + 413 automático) ──────
# Fixture propio (tests/integration/http_body_cap): http_serve con handler
# eco de len(body); un Content-Length sobre el cap debe dar 413 sin handler.
echo -e "\n${BOLD}-- HTTP body cap (413) --${NC}"
BC_BIN="/tmp/nyx-http-body-cap-server"
echo -e "  Compiling tests/integration/http_body_cap/server.nx..."
cp tests/integration/http_body_cap/server.nx script.nx
if NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap >/dev/null 2>&1 && \
   clang -O2 script.ll ${NYX_RT_ARCHIVE:-runtime/*.c runtime/os/os_posix.c} -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
       -o "$BC_BIN" 2>/dev/null; then
    rm -f script.nx script.ll
    if python3 tests/integration/test_http_body_cap.py "$BC_BIN"; then
        echo -e "  ${GREEN}HTTP body cap E2E passed${NC}"
    else
        echo -e "  ${RED}HTTP body cap E2E failed${NC}"
        OVERALL=1
    fi
    rm -f "$BC_BIN"
else
    rm -f script.nx script.ll
    echo -e "  ${RED}HTTP body cap: no se pudo compilar el fixture${NC}"
    OVERALL=1
fi

# ── std/serve (framework web absorbido al core) ──────────────────────────
# Fixture propio (tests/integration/serve_std): server mínimo con std/serve +
# std/template. Cubre el CONTRATO público del módulo: {param}, JSON,
# keep-alive, POST urlencoded, tpl_render, static con ETag/304/Cache-Control,
# traversal 403, 404 y drain de SIGTERM con exit 0. El harness levanta y mata
# el server él mismo (nunca queda uno vivo).
echo -e "\n${BOLD}-- std/serve --${NC}"
SS_BIN="/tmp/nyx-serve-std-test-server"
if [ ! -x ./nyx_bootstrap ]; then
    echo -e "  SKIP: falta ./nyx_bootstrap (make bootstrap)"
else
    echo -e "  Compiling tests/integration/serve_std/server.nx..."
    cp tests/integration/serve_std/server.nx script.nx
    if ./nyx_bootstrap >/dev/null 2>&1 && \
       clang -O2 script.ll ${NYX_RT_ARCHIVE:-runtime/*.c runtime/os/os_posix.c} -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
           -o "$SS_BIN" 2>/dev/null; then
        rm -f script.nx script.ll
        if python3 tests/integration/test_serve_std.py "$SS_BIN"; then
            echo -e "  ${GREEN}std/serve E2E passed${NC}"
        else
            echo -e "  ${RED}std/serve E2E failed${NC}"
            OVERALL=1
        fi
        rm -f "$SS_BIN"
    else
        rm -f script.nx script.ll
        echo -e "  ${RED}std/serve: no se pudo compilar el fixture${NC}"
        OVERALL=1
    fi
fi

# ── std/serve: smoke COMPLETO (los 64 checks de nyx-serve v0.7.1) ─────────
# Fixture tests/integration/serve_std/standalone.nx = examples/standalone.nx
# del producto con los imports en std/*; harness test_serve_std_smoke.py =
# su tests/test_serve_smoke.py. Portados al congelar el producto (T4 de la
# absorción, 2026-09-03) para no perder cobertura: redirect+Set-Cookie,
# after-hooks, 404/500 custom con panic, WS {param}/404/rooms/broadcast,
# multipart, 413, wraps, routers, ctx, access-log, drain, bind fallido y
# serve_on_shutdown. Puertos 13080-13083. El binario se reutiliza abajo
# como server del E2E serve+kv.
echo -e "\n${BOLD}-- std/serve smoke completo --${NC}"
SS_SMOKE_BIN="/tmp/nyx-serve-std-smoke"
rm -f "$SS_SMOKE_BIN"
if [ ! -x ./nyx_bootstrap ]; then
    echo -e "  SKIP: falta ./nyx_bootstrap (make bootstrap)"
else
    echo -e "  Compiling tests/integration/serve_std/standalone.nx..."
    cp tests/integration/serve_std/standalone.nx script.nx
    if ./nyx_bootstrap >/dev/null 2>&1 && \
       clang -O2 script.ll ${NYX_RT_ARCHIVE:-runtime/*.c runtime/os/os_posix.c} -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
           -o "$SS_SMOKE_BIN" 2>/dev/null; then
        rm -f script.nx script.ll
        if python3 tests/integration/test_serve_std_smoke.py "$SS_SMOKE_BIN"; then
            echo -e "  ${GREEN}std/serve smoke passed${NC}"
        else
            echo -e "  ${RED}std/serve smoke failed${NC}"
            OVERALL=1
        fi
    else
        rm -f script.nx script.ll "$SS_SMOKE_BIN"
        echo -e "  ${RED}std/serve smoke: no se pudo compilar el fixture${NC}"
        OVERALL=1
    fi
fi

# ── serve + kv E2E ────────────────────────────────────────────────────────
# Server = el fixture de std/serve compilado arriba (standalone acepta
# --port y expone /api/health, el contrato del daemon viejo); el daemon kv
# viene de su repo extraído. SKIP limpio si falta cualquiera de los dos.
echo -e "\n${BOLD}-- serve + kv --${NC}"
KV_BIN="${NYX_KV_BIN:-$HOME/nyx/products/kv/daemon/nyxkv}"
SERVE_BIN="${NYX_SERVE_BIN:-$SS_SMOKE_BIN}"
if [ ! -x "$KV_BIN" ]; then
    echo -e "  SKIP: binario nyx-kv no encontrado en $KV_BIN"
    echo -e "  (clonar ~/nyx/products/kv y buildear el daemon, o exportar NYX_KV_BIN)"
elif [ ! -x "$SERVE_BIN" ]; then
    echo -e "  SKIP: server de std/serve no disponible en $SERVE_BIN (el smoke de arriba no compiló)"
else
    if NYX_KV_BIN="$KV_BIN" NYX_SERVE_BIN="$SERVE_BIN" python3 tests/integration/test_serve_kv.py; then
        echo -e "  ${GREEN}serve+kv E2E passed${NC}"
    else
        echo -e "  ${RED}serve+kv E2E failed${NC}"
        OVERALL=1
    fi
fi
rm -f "$SS_SMOKE_BIN"

if [ "$OVERALL" -eq 0 ]; then
    echo -e "\n${GREEN}Integration tests passed${NC}"
else
    echo -e "\n${RED}Integration tests failed${NC}"
fi
exit $OVERALL
