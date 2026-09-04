#!/usr/bin/env bash
# run_vet_gotchas.sh — `nyx vet` caza los gotchas grep-ables con archivo:línea.
#
# Dos mitades, y las dos tienen dientes:
#   1. POSITIVA — tests/vet/gotchas_fixture.nx trae un caso por patrón de
#      docs/gotchas/ (campo `pattern:`), marcado con `// EXPECT W1NN` en la
#      línea que dispara. Se exige, por marca, EXACTAMENTE una línea
#      «warning[W1NN] tests/vet/gotchas_fixture.nx:<esa línea>:» — el código y
#      la línea, no sólo «hubo un aviso» — y ningún W1xx de más.
#   2. NEGATIVA — tests/vet/clean.nx (las versiones correctas) y la AUDITORÍA
#      DE FALSOS POSITIVOS sobre examples/by-example/*.nx y std/*.nx: cero
#      avisos W1xx. Un patrón que grite sobre la stdlib es ruido, no señal;
#      cuando eso pasa se ajusta el `pattern:` en docs/gotchas/<id>.md (y se
#      regenera con `make gen-agent-docs`) o se lo quita — nunca se excluye un
#      archivo acá.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

# build-vet pisa script.nx/script.ll de la raíz — sin el lock, dos runners
# simultáneos se entrelazan (ver lib_testroot_lock.sh).
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

FIXTURE="tests/vet/gotchas_fixture.nx"
CLEAN="tests/vet/clean.nx"
FAIL=0

T="$(mktemp -d)"
trap 'rm -rf "$T"' EXIT

if ! make -s build-vet > "$T/build.log" 2>&1; then
    echo "  ✗ no se pudo construir nyx_vet (make build-vet)"
    sed 's/^/      /' "$T/build.log" | tail -20
    exit 1
fi

# Corre `nyx vet` sobre $1 y deja sus avisos W1xx (uno por línea) en $2.
# Retorna el EXIT STATUS de nyx_vet: un vet que se cae imprime cero avisos, o
# sea que tragarlo convertía "el binario reventó" en "no hay falsos positivos".
vet_w1() {
    local out
    out="$T/vet.raw"
    NYX_SRC="$1" ./nyx_vet > "$out" 2>&1
    local rc=$?
    grep '^warning\[W1' "$out" > "$2"
    return $rc
}

# Verifica el fixture $1 contra sus propias marcas `// EXPECT W1NN`.
# Imprime los problemas encontrados; retorna 1 si hubo alguno.
check_fixture() {
    local fixture="$1"
    local log="$T/$(basename "$fixture").w1"
    local bad=0
    if ! vet_w1 "$fixture" "$log"; then
        echo "      ✗ nyx_vet salió con error sobre $fixture"
        bad=1
    fi

    local expected=0
    while IFS= read -r mark; do
        local ln="${mark%%:*}"
        local code="${mark##*:}"
        expected=$((expected + 1))
        local hits
        hits="$(grep -c "^warning\[$code\] $fixture:$ln:" "$log")"
        if [ "$hits" != 1 ]; then
            echo "      ✗ $fixture:$ln: se esperaba 1 aviso $code y hubo $hits"
            bad=1
        fi
    done < <(grep -nE '// EXPECT W1[0-9]{2}' "$fixture" \
             | sed -E 's|^([0-9]+):.*// EXPECT (W1[0-9]{2}).*|\1:\2|')

    local total
    total="$(grep -c '^warning\[W1' "$log")"
    if [ "$total" != "$expected" ]; then
        echo "      ✗ $fixture: $total avisos W1xx para $expected marcas EXPECT"
        sed 's/^/        /' "$log"
        bad=1
    fi
    return $bad
}

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
# Un fixture al que se le neutraliza el gotcha PERO se le deja la marca tiene
# que salir rojo. Si no, check_fixture no está midiendo nada.
mkdir -p "$T/tests/vet"
sed 's/Shape::Circle/Shape.Circle/' "$FIXTURE" > "$T/tests/vet/gotchas_fixture.nx"
if cmp -s "$FIXTURE" "$T/tests/vet/gotchas_fixture.nx"; then
    echo "  ✗ autotest ROTO: no se pudo neutralizar el caso W101 en la copia"
    FAIL=1
elif check_fixture "$T/tests/vet/gotchas_fixture.nx" > "$T/auto.log" 2>&1; then
    echo "  ✗ autotest ROTO: el fixture con el gotcha neutralizado dio VERDE"
    FAIL=1
else
    echo "  ✓ autotest del checker (gotcha neutralizado + marca viva ⇒ rojo)"
fi

# ── 1. Mitad positiva: el fixture real ──────────────────────────────────
if check_fixture "$FIXTURE"; then
    n="$(grep -cE '// EXPECT W1[0-9]{2}' "$FIXTURE")"
    echo "  ✓ fixture: $n casos, cada uno con su código y su línea exactos"
else
    echo "  ✗ el fixture no da los avisos esperados"
    FAIL=1
fi

# ── 2. Mitad negativa: el archivo limpio ────────────────────────────────
if ! vet_w1 "$CLEAN" "$T/clean.w1"; then
    echo "  ✗ nyx_vet salió con error sobre $CLEAN"
    FAIL=1
fi
if [ ! -s "$T/clean.w1" ]; then
    echo "  ✓ clean: cero avisos W1xx sobre las versiones correctas"
else
    echo "  ✗ $CLEAN dispara avisos W1xx:"
    sed 's/^/      /' "$T/clean.w1"
    FAIL=1
fi

# ── 3. Auditoría de falsos positivos: by-example + std ──────────────────
# PISO de cobertura: una auditoría que no escanea nada pasa vacía y verde. Hoy
# son 161 archivos (102 de by-example + 59 de std); el piso es 150 para tolerar
# que se borre alguno sin volverse un pin frágil, pero no que el glob se rompa.
FLOOR=150
: > "$T/fp.log"
scanned=0
for f in examples/by-example/*.nx std/*.nx; do
    [ -f "$f" ] || continue
    scanned=$((scanned + 1))
    if ! vet_w1 "$f" "$T/one.w1"; then
        echo "$f:?: nyx_vet salió con error" >> "$T/fp.log"
        continue
    fi
    sed -E "s|^warning\[(W1[0-9]{2})\] [^:]*:([0-9?]+):.*|$f:\2: \1|" "$T/one.w1" >> "$T/fp.log"
done
if [ "$scanned" -lt "$FLOOR" ]; then
    echo "  ✗ la auditoría escaneó $scanned archivos, menos que el piso $FLOOR — ¿se rompió el glob?"
    FAIL=1
elif [ ! -s "$T/fp.log" ]; then
    echo "  ✓ auditoría de falsos positivos: 0 avisos W1xx en $scanned archivos (by-example + std)"
else
    echo "  ✗ falsos positivos en $scanned archivos de by-example + std:"
    sed 's/^/      /' "$T/fp.log"
    echo '      → ajusta el pattern: en docs/gotchas/<id>.md y corre make gen-agent-docs'
    FAIL=1
fi

exit $FAIL
