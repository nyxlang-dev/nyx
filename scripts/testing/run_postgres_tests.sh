#!/usr/bin/env bash
# ============================================================
#  run_postgres_tests.sh — E2E de std/postgres contra un servidor REAL
# ============================================================
# El cliente habla el protocolo v3 en Nyx puro (sin libpq), así que lo único que
# prueba de verdad que el handshake, SCRAM, los tipos y los errores son los
# correctos es un PostgreSQL de carne y hueso. Un mock validaría mi lectura del
# protocolo contra mi propia lectura.
#
# SKIP LIMPIO si no hay servidor: `make test` tiene que correr en cualquier
# máquina. El skip imprime la receta para montarlo, para que no sea un misterio.
#
# set -u sin pipefail: grep sobre un pipe con SIGPIPE ya mordió este repo.
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

PGHOST="${NYX_PG_HOST:-127.0.0.1}"
PGPORT="${NYX_PG_PORT:-5432}"
PGDB="${NYX_PG_DB:-nyx_test}"
PGUSER="${NYX_PG_USER:-nyx_test}"
PGPW="${NYX_PG_PASSWORD:-nyx_test_pw}"
export NYX_PG_CONNINFO="host=$PGHOST port=$PGPORT dbname=$PGDB user=$PGUSER password=$PGPW"

echo "╔════════════════════════════════════════════════╗"
echo "║   std/postgres — E2E contra servidor real      ║"
echo "╚════════════════════════════════════════════════╝"

# ── ¿Hay servidor? ──────────────────────────────────────────
# Se sondea con psql (el cliente oficial): si él no puede, el problema es el
# entorno y no el código, y conviene decirlo antes de culpar a nadie.
if ! command -v psql >/dev/null 2>&1; then
    echo "  · SKIP: no hay psql instalado"
    echo "    Montarlo:  sudo apt-get install -y postgresql"
    exit 0
fi
if ! PGPASSWORD="$PGPW" psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDB" -c "SELECT 1;" >/dev/null 2>&1; then
    echo "  · SKIP: no hay servidor en $PGHOST:$PGPORT con la base de pruebas"
    echo "    Montarla:"
    echo "      sudo -u postgres psql -c \"CREATE USER $PGUSER WITH PASSWORD '$PGPW';\""
    echo "      sudo -u postgres psql -c \"CREATE DATABASE $PGDB OWNER $PGUSER;\""
    exit 0
fi

# Serializa contra otros runners: todos comparten script.nx/script.ll en la raíz.
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero"
    exit 1
fi

PASS=0; FAIL=0; FAILED=()
for f in tests/postgres/*.nx; do
    [ -e "$f" ] || continue
    name="$(basename "$f")"
    cp "$f" script.nx
    if ./nyx_bootstrap >/tmp/pg_c.log 2>&1 && clang -O2 script.ll $RT $LIBS -o script_bin 2>/tmp/pg_cl.log; then
        out="$(timeout 60 ./script_bin 2>&1)"; ec=$?
        if [ $ec -eq 0 ]; then
            echo "  ✅ $name — $(printf '%s' "$out" | tail -1)"
            PASS=$((PASS+1))
        else
            echo "  ❌ $name — RUNTIME exit=$ec"
            printf '%s\n' "$out" | tail -5 | sed 's/^/      /'
            FAIL=$((FAIL+1)); FAILED+=("$name")
        fi
    else
        echo "  ❌ $name — COMPILE"
        grep -iE 'error|NYX[0-9]' /tmp/pg_c.log /tmp/pg_cl.log | head -3 | sed 's/^/      /'
        FAIL=$((FAIL+1)); FAILED+=("$name")
    fi
done

rm -f script.nx script.ll script_bin
echo "────────────────────────────────────────────────"
echo "  POSTGRES E2E: $PASS pasados, $FAIL fallidos"
if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    echo "  (el log del servidor suele decir el motivo real:"
    echo "   sudo tail -20 /var/log/postgresql/postgresql-*-main.log)"
    exit 1
fi
exit 0
