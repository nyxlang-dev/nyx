#!/usr/bin/env bash
# ============================================================
#  Suite AI-FIRST — valida el OBJETIVO, no solo el compilador
# ============================================================
# Cada caso en tests/ai-first/ es código idiomático que una IA
# escribiría guiándose SOLO por la doc sembrada (LLM.md / CLAUDE.md /
# CHEATSHEET). Cada programa verifica su propia corrección con assert()
# (abortivo, exit 1 desde v0.14). Si la doc enseñara algo falso —como
# pasó con "and/or no cortocircuitan"— el assert aborta y el caso cae.
#
# "Pasa" = compila Y corre con exit 0. Esto convierte "¿alcanza la doc
# para escribir Nyx bien al primer intento?" de opinión a número.
set -u

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo "✗ falta ./nyx_bootstrap — corré 'make bootstrap' primero"
    exit 1
fi

PASS=0; FAIL=0; FAILED=()
echo "╔════════════════════════════════════════════════╗"
echo "║   Suite AI-FIRST — ¿alcanza la doc para Nyx?    ║"
echo "╚════════════════════════════════════════════════╝"

for f in tests/ai-first/*.nx; do
    name="$(basename "$f")"
    cp "$f" script.nx
    if ./nyx_bootstrap >/tmp/aif_c.log 2>&1 && \
       clang -O2 script.ll $RT $LIBS -o script_bin 2>/tmp/aif_cl.log; then
        out="$(timeout 30 ./script_bin 2>&1)"; ec=$?
        if [ $ec -eq 0 ]; then
            echo "  ✅ $name — $out"
            PASS=$((PASS+1))
        else
            echo "  ❌ $name — RUNTIME exit=$ec — $out"
            FAIL=$((FAIL+1)); FAILED+=("$name")
        fi
    else
        msg="$(grep -iE 'error|NYX[0-9]' /tmp/aif_c.log /tmp/aif_cl.log | head -1)"
        echo "  ❌ $name — COMPILE — $msg"
        FAIL=$((FAIL+1)); FAILED+=("$name")
    fi
done

rm -f script.nx script.ll script_bin
echo "────────────────────────────────────────────────"
echo "  AI-FIRST: $PASS pasados, $FAIL fallidos"
if [ $FAIL -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    echo "  → un fallo aquí significa que la doc enseña algo que NO compila/corre."
    exit 1
fi
echo "  🏆 La doc sembrada produce Nyx correcto al primer intento."
