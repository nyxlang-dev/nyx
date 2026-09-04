#!/usr/bin/env bash
# run_gendocs_noop.sh — regenerar la capa de información del lenguaje es un NO-OP.
#
# Lo generado desde docs/gotchas/ (las regiones <!-- gen:gotchas … --> de
# LLM.md y templates/{en,es}/AGENTS.md, la tabla compiler/gotchas_table.nx y los arrays
# de scripts/testing/gotchas_generated.sh) tiene que estar en sync con los
# datos EN EL COMMIT: si alguien edita un docs/gotchas/<id>.md y no corre
# `make gen-agent-docs`, o edita a mano dentro de una región generada, esta
# guardia falla y dice qué destino quedó stale.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."
ROOT="$PWD"

# build-gendocs y el smoke de abajo pisan script.nx/script.ll de la raíz — sin
# el lock, dos runners simultáneos se entrelazan (ver lib_testroot_lock.sh).
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

FAIL=0

if ! make -s build-gendocs >/dev/null 2>&1; then
    echo "  ✗ no se pudo construir nyx_gendocs (make build-gendocs)"
    exit 1
fi

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
# Un destino con una edición a mano DENTRO de una región tiene que salir rojo.
T="$(mktemp -d)"
trap 'rm -rf "$T"' EXIT
cp LLM.md "$T/LLM.md"
# Se cuela una línea DENTRO de la primera región generada (justo detrás del
# marcador de apertura): es exactamente la clase de edición a mano que la
# guardia tiene que cazar.
perl -0pi -e 's/(<!-- gen:gotchas [^\n]*-->\n)/$1DRIFT INYECTADO POR EL AUTOTEST\n/' "$T/LLM.md"
if cmp -s LLM.md "$T/LLM.md"; then
    echo "  ✗ autotest ROTO: no se pudo inyectar drift en la copia de LLM.md"
    FAIL=1
fi
if NYX_GENDOCS_TARGETS="$T/LLM.md" ./nyx_gendocs --check > "$T/auto.log" 2>&1; then
    echo "  ✗ autotest ROTO: --check dio verde sobre un LLM.md con drift inyectado"
    FAIL=1
elif grep -q "^stale: $T/LLM.md\$" "$T/auto.log"; then
    echo "  ✓ autotest del detector de drift (edición a mano ⇒ stale)"
else
    echo "  ✗ autotest ROTO: --check falló pero no reportó «stale: $T/LLM.md»"
    sed 's/^/      /' "$T/auto.log"
    FAIL=1
fi

# ── El chequeo real: nada generado está stale en el árbol ────────────────
if ./nyx_gendocs --check > "$T/check.log" 2>&1; then
    echo "  ✓ gendocs: regenerar es un no-op (todo lo generado está en sync con docs/gotchas/)"
else
    echo "  ✗ hay destinos generados STALE — corré: make gen-agent-docs"
    sed 's/^/      /' "$T/check.log"
    FAIL=1
fi

# ── Smoke: compiler/gotchas_table.nx tiene que COMPILAR ─────────────────
# Es un .nx generado que nadie más compila: si un cuerpo de docs/gotchas/ trae
# una comilla o una barra que el escapado no cubre, el archivo queda roto en el
# árbol y nadie se entera hasta que la Task 4 lo importe desde vet.
#
# Dos pasos, y el que tiene dientes es el PRIMERO. Medido 2026-09-04: compilar
# sólo el programa consumidor NO valida nada — un `import { … } from
# "compiler/gotchas_table"` es declaration-only (el módulo se compila aparte y
# se linkea, ver build-vet en el Makefile), así que el bootstrap lo acepta con
# «lex 38 tokens / 1 functions» aunque la tabla tenga un error de sintaxis. El
# segundo paso queda igual porque prueba la OTRA mitad: que la forma de import
# que van a usar las herramientas resuelve los dos símbolos públicos.
#
# Se compila a IR, sin linkear: linkear obligaría a duplicar acá la lista de
# fuentes del runtime — ya hay ~18 copias en el repo (ver runtime/CLAUDE.md) y
# esta guardia no necesita una más. Parse + chequeo + codegen es donde vive el
# riesgo real (el escapado).
cp compiler/gotchas_table.nx script.nx
if ./nyx_bootstrap > "$T/smoke1.log" 2>&1 && grep -q '^define .*@gotchas_table' script.ll; then
    echo "  ✓ smoke: compiler/gotchas_table.nx compila (define @gotchas_table)"
else
    echo "  ✗ compiler/gotchas_table.nx NO compila — ¿escapado roto en un cuerpo de docs/gotchas/?"
    sed 's/^/      /' "$T/smoke1.log" | tail -20
    FAIL=1
fi

cat > script.nx <<'SMOKE'
import { gotchas_table, gotcha_field } from "compiler/gotchas_table"

fn main() -> int {
    let rows: Array = gotchas_table()
    let n: int = rows.length()
    let first: Array = rows[0]
    let id: String = gotcha_field(first, "id")
    print(int_to_string(n) + " " + id)
    return 0
}
SMOKE
if ./nyx_bootstrap > "$T/smoke2.log" 2>&1; then
    echo "  ✓ smoke: un consumidor puede importar gotchas_table/gotcha_field"
else
    echo "  ✗ un programa que importa compiler/gotchas_table no compila"
    sed 's/^/      /' "$T/smoke2.log" | tail -20
    FAIL=1
fi

cd "$ROOT"
exit $FAIL
