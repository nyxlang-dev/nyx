#!/usr/bin/env bash
# run_docs_health.sh — T1 de la campaña de reestructuración documental
# (docs/superpowers/plans/2026-08-30-campana-docs-restructura.md, sección
# "Guardas anti-regresión"). 10 checks, cada uno activable por su propia
# variable de entorno DOCS_HEALTH_CHECK_N=on|off — nacen TODOS OFF (incluido
# el 5: CHANGELOG.md tiene hoy 11 `[Unreleased]`, fallaría en verde) y las
# fases T3/T5/T7/T8/T10 los prenden a medida que el doc correspondiente queda
# limpio. Con todo OFF el script imprime qué está dormido y sale 0 — nunca
# rompe `make test-ai-first` antes de que haya algo que hacer cumplir.
# DOCS_HEALTH_ROOT=<dir> apunta los checks a un árbol alternativo (control
# positivo desde un fixture sembrado, o testeo futuro) en vez del repo real.
#
# EN: T1 of the docs restructuring campaign (see plan above). 10 checks, each
# toggled by its own DOCS_HEALTH_CHECK_N=on|off env var — ALL born OFF
# (including #5: CHANGELOG.md has 11 [Unreleased] today, it would fail on
# arrival) and later phases flip them on as each doc gets cleaned up. With
# everything OFF the script prints what's sleeping and exits 0 — it never
# breaks `make test-ai-first` before there is anything to enforce.
# DOCS_HEALTH_ROOT=<dir> points every check at an alternate tree (seeded
# fixture for a positive control, or future testing) instead of the real repo.
#
# set -u sin pipefail (regla del repo).
set -u

ROOT="${DOCS_HEALTH_ROOT:-$(cd "$(dirname "$0")/../.." && pwd)}"
cd "$ROOT"

# --- Defaults (fase 0 de la campaña: todos dormidos) ---
DEFAULT_1=off   # no-version-pin en PROJECT_STATE/PLAN/TASKS
DEFAULT_2=off   # paths muertos (nyx-*-stack | ~/nyx-sites | ~/nyx-gateway)
DEFAULT_3=off   # refs a archivos inexistentes (cuarteto+CLAUDE+README)
DEFAULT_4=off   # links markdown relativos rotos en docs públicos
DEFAULT_5=off   # un solo [Unreleased] en CHANGELOG.md
DEFAULT_6=off   # presupuestos de líneas/conteos (tabla del plan)
DEFAULT_7=off   # paridad de scores COMPARISON.md ↔ COMPARISON.es.md
DEFAULT_8=off   # INDEX.md de docs/superpowers completo
DEFAULT_9=off   # ratchet SPEC: cero refs a numeración muerta v1-v6
DEFAULT_10=off  # frescura blanda de PROJECT_STATE.md (WARN, nunca FAIL)

PUBLIC_DOCS="README.md LLM.md CHANGELOG.md docs/GETTING_STARTED.md docs/CONTRIBUTING.md docs/BENCHMARKS.md docs/COMPARISON.md docs/COMPARISON.es.md docs/DEPLOYMENT.md docs/CHEATSHEET.md docs/SPEC.md docs/SPEC.es.md docs/VERSIONING.md docs/ROADMAP.md docs/TESTS.md docs/README.es.md"

FAIL=0; WARN=0; SLEEPING=()

is_on() {
    local def_var="DEFAULT_$1" chk_var="DOCS_HEALTH_CHECK_$1"
    local def="${!def_var}"
    local val="${!chk_var:-$def}"
    [ "$val" = "on" ]
}

check_1() {
    local f pat='v[0-9]+\.[0-9]+\.[0-9]+' hits
    for f in PROJECT_STATE.md PLAN.md TASKS.md; do
        [ -f "$f" ] || continue
        hits=$(grep -noE "$pat" "$f" 2>/dev/null | head -3 | tr '\n' ' ')
        [ -n "$hits" ] && { echo "  ✗ [1] version pin en $f: $hits"; FAIL=$((FAIL+1)); }
    done
}

check_2() {
    local pat='nyx-[a-z]+-stack|~/nyx-sites|~/nyx-gateway' f
    for f in $(find . -name '*.md' -not -path './docs/archive/*' \
               -not -name 'CHANGELOG.md' -not -path './.git/*' 2>/dev/null); do
        grep -qE "$pat" "$f" 2>/dev/null && { echo "  ✗ [2] path muerto en $f"; FAIL=$((FAIL+1)); }
    done
}

check_3() {
    local srcs="PROJECT_STATE.md PLAN.md TASKS.md LLM.md CLAUDE.md README.md"
    local f path
    for f in $srcs; do
        [ -f "$f" ] || continue
        while IFS= read -r path; do
            [ -z "$path" ] && continue
            case "$path" in docs/archive/*|CHANGELOG.md) continue ;; esac
            [ -e "$path" ] || { echo "  ✗ [3] $f referencia inexistente: $path"; FAIL=$((FAIL+1)); }
        done < <(grep -oE '`[A-Za-z0-9_./-]+\.(md|nx|sh|toml|txt|yml)`' "$f" 2>/dev/null | tr -d '`' | sort -u)
    done
}

check_4() {
    local f dir link target resolved
    for f in $PUBLIC_DOCS; do
        [ -f "$f" ] || continue
        dir=$(dirname "$f")
        while IFS= read -r link; do
            [ -z "$link" ] && continue
            case "$link" in http*|mailto:*|\#*) continue ;; esac
            target="${link%%#*}"
            [ -z "$target" ] && continue
            resolved="$dir/$target"
            [ -e "$resolved" ] || { echo "  ✗ [4] $f link roto: $link"; FAIL=$((FAIL+1)); }
        done < <(grep -oE '\]\([^)]+\)' "$f" 2>/dev/null | sed -E 's/^\]\((.*)\)$/\1/')
    done
}

check_5() {
    [ -f CHANGELOG.md ] || return 0
    local n; n=$(grep -c '\[Unreleased\]' CHANGELOG.md)
    [ "$n" -ne 1 ] && { echo "  ✗ [5] CHANGELOG.md tiene $n [Unreleased] (debe ser 1)"; FAIL=$((FAIL+1)); }
}

check_6() {
    local n line
    if [ -f PROJECT_STATE.md ]; then
        n=$(wc -l < PROJECT_STATE.md)
        [ "$n" -gt 200 ] && { echo "  ✗ [6] PROJECT_STATE.md $n líneas > 200"; FAIL=$((FAIL+1)); }
    fi
    if [ -f PLAN.md ]; then
        n=$(wc -l < PLAN.md)
        [ "$n" -gt 250 ] && { echo "  ✗ [6] PLAN.md $n líneas > 250"; FAIL=$((FAIL+1)); }
    fi
    if [ -f docs/TESTS.md ]; then
        n=$(wc -l < docs/TESTS.md)
        [ "$n" -gt 150 ] && { echo "  ✗ [6] docs/TESTS.md $n líneas > 150"; FAIL=$((FAIL+1)); }
        line=$(awk '{ if (length($0) > 300) { print NR; exit } }' docs/TESTS.md)
        [ -n "$line" ] && { echo "  ✗ [6] docs/TESTS.md línea $line > 300 chars"; FAIL=$((FAIL+1)); }
    fi
    if [ -f TASKS.md ]; then
        n=$(grep -c '\[x\]' TASKS.md)
        [ "$n" -gt 20 ] && { echo "  ✗ [6] TASKS.md $n [x] > 20 tolerados"; FAIL=$((FAIL+1)); }
    fi
}

check_7() {
    [ -f docs/COMPARISON.md ] && [ -f docs/COMPARISON.es.md ] || return 0
    local a b
    a=$(grep -E '^\| \*\*Nyx\*\*' docs/COMPARISON.md)
    b=$(grep -E '^\| \*\*Nyx\*\*' docs/COMPARISON.es.md)
    [ "$a" = "$b" ] || { echo "  ✗ [7] fila Nyx difiere COMPARISON.md/.es.md — EN:[$a] ES:[$b]"; FAIL=$((FAIL+1)); }
}

check_8() {
    local idx="docs/superpowers/INDEX.md" f base
    if [ ! -f "$idx" ]; then echo "  ✗ [8] falta $idx"; FAIL=$((FAIL+1)); return; fi
    for f in $(find docs/superpowers -type f -name '*.md' ! -name 'INDEX.md' 2>/dev/null); do
        base=$(basename "$f")
        grep -qF "$base" "$idx" || { echo "  ✗ [8] $idx no menciona $f"; FAIL=$((FAIL+1)); }
    done
}

check_9() {
    [ -f docs/SPEC.md ] || return 0
    local n; n=$(grep -cE '\bv[1-6]\.[0-9]' docs/SPEC.md)
    [ "$n" -ne 0 ] && { echo "  ✗ [9] docs/SPEC.md: $n refs a numeración muerta v1-v6"; FAIL=$((FAIL+1)); }
}

check_10() {
    [ -f PROJECT_STATE.md ] || return 0
    local latest days
    latest=$(grep -oE '20[0-9]{2}-[0-9]{2}-[0-9]{2}' PROJECT_STATE.md | sort -r | head -1)
    if [ -z "$latest" ]; then echo "  ⚠ [10] PROJECT_STATE.md sin fecha detectable (WARN)"; WARN=$((WARN+1)); return; fi
    days=$(( ( $(date +%s) - $(date -d "$latest" +%s 2>/dev/null || date +%s) ) / 86400 ))
    [ "$days" -gt 14 ] && { echo "  ⚠ [10] PROJECT_STATE.md: fecha más reciente $latest, $days días (WARN, umbral 14)"; WARN=$((WARN+1)); }
}

DESCS=("" "no-version-pin cuarteto" "paths muertos" "refs a archivos inexistentes" \
    "links relativos rotos (públicos)" "un solo [Unreleased]" "presupuestos" \
    "paridad scores COMPARISON" "INDEX superpowers completo" "ratchet SPEC v1-6" \
    "frescura blanda PROJECT_STATE (WARN)")

for n in 1 2 3 4 5 6 7 8 9 10; do
    if is_on "$n"; then "check_$n"; else SLEEPING+=("[$n] ${DESCS[$n]}"); fi
done

if [ ${#SLEEPING[@]} -gt 0 ]; then
    echo "  checks dormidos (DOCS_HEALTH_CHECK_N=on para activar):"
    for s in "${SLEEPING[@]}"; do echo "    - $s"; done
fi

if [ "$FAIL" -gt 0 ]; then
    echo "  docs-health: FALLÓ ($FAIL, $WARN warning(s))"
    exit 1
fi
echo "  ✓ docs-health: 0 fallos, $WARN warning(s), ${#SLEEPING[@]} check(s) dormido(s)"
exit 0
