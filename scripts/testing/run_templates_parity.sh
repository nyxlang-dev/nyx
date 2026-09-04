#!/usr/bin/env bash
# run_templates_parity.sh — dos guardias del par EN/ES (Task 3):
#
#   A. Paridad EN/ES: cada archivo de `seeded_files_for en` tiene un twin en
#      `es` con la misma marca de template (`<!-- template: N -->` o
#      `<!-- sdd-template: N -->`), la misma cantidad de encabezados `^## `
#      y — si el archivo tiene una región generada por gendocs — los mismos
#      ids en `<!-- gen:ids ... -->`. Hasta que la Task 5 de este arco cree
#      `templates/es/`, `seeded_root en` y `seeded_root es` caen al mismo
#      plano (`templates/`) — no hay TWIN que comparar todavía, así que este
#      check es trivialmente verde (se imprime una línea diciéndolo, no se
#      saltea en silencio). El autotest de abajo prueba el comparador de
#      verdad con un fixture en tmp, independiente de que exista o no
#      templates/es/ en el árbol real.
#   B. Español neutro (regla 9 de la spec): denylist de conjugaciones
#      rioplatenses de 2da persona (voseo) y el pronombre plural peninsular
#      (vosotros), con `archivo:línea`, sobre `templates/es/**` (cuando
#      exista), `templates/adapters/*.es.*` (cuando exista) y los cuerpos
#      `## es` de `docs/gotchas/*.md` (los 35 datos, hoy).
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

source scripts/testing/lib_seeded_files.sh

FAIL=0

# ── Denylist de español neutro (regla 9) ─────────────────────────────────
# \b...\b para no cazar "vosotros" adentro de otra palabra ni "usa" dentro
# de "usable"; extendible.
# Segunda tanda (review final del arco andamiaje-sdd): las formas de voseo de
# más frecuencia en documentación técnica, que la lista de la spec no traía.
# El contenido sembrado ya está limpio contra todas ellas — esto es blindaje
# para que la regla 9 no se erosione en el próximo cambio de plantilla.
DENY_RE='\b(sos|tenés|podés|querés|sabés|hacé|seguí|ofrecé|leé|probá|declará|borrá|usá|corré|mirá|fijate|acordate|vos|vosotros|tenéis|podéis|sabéis|ejecutá|agregá|revisá|instalá|escribí|elegí|poné|dejá|decí|tené|asegurate|necesitás|debés|hacés|abrí|cambiá|verificá)\b'

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT
AUTOTEST_OK=1

# A.1 — control positivo del comparador de twins: fixture con templates/en/
# y templates/es/ reales (independiente de si el árbol tiene templates/es/).
mkdir -p "$TMPDIR/fixture/templates/en" "$TMPDIR/fixture/templates/es"
cat > "$TMPDIR/fixture/templates/en/AGENTS.md" <<'EOF'
<!-- template: 3 -->
## One
## Two
<!-- gen:gotchas kinds=trap lang=en form=short -->
<!-- gen:ids a-trap,b-trap -->
1. **a**
2. **b**
<!-- /gen:gotchas -->
EOF
# twin roto a propósito: marca de template distinta + un solo ## + ids distintos
cat > "$TMPDIR/fixture/templates/es/AGENTS.md" <<'EOF'
<!-- template: 4 -->
## Uno
<!-- gen:gotchas kinds=trap lang=es form=short -->
<!-- gen:ids a-trap -->
1. **a**
<!-- /gen:gotchas -->
EOF

# check_twin_pair FILE_EN FILE_ES — compara marca de template, cantidad de
# encabezados ## y <!-- gen:ids ... -->. Imprime los mismatches y devuelve
# 1 si hay alguno (0 si el par es coherente).
check_twin_pair() {
    local en="$1" es="$2" bad=0
    if [ ! -f "$es" ]; then
        printf "  ✗ falta el twin ES de %s (%s)\n" "$en" "$es"
        return 1
    fi
    local t_en t_es
    t_en="$(grep -m1 -E '<!-- (sdd-)?template: [0-9]+ -->' "$en" 2>/dev/null || true)"
    t_es="$(grep -m1 -E '<!-- (sdd-)?template: [0-9]+ -->' "$es" 2>/dev/null || true)"
    if [ "$t_en" != "$t_es" ]; then
        printf "  ✗ %s vs %s: marca de template distinta («%s» vs «%s»)\n" "$en" "$es" "$t_en" "$t_es"
        bad=1
    fi
    local h_en h_es
    h_en="$(grep -c '^## ' "$en" 2>/dev/null || echo 0)"
    h_es="$(grep -c '^## ' "$es" 2>/dev/null || echo 0)"
    if [ "$h_en" != "$h_es" ]; then
        printf "  ✗ %s vs %s: distinta cantidad de encabezados ## (%s vs %s)\n" "$en" "$es" "$h_en" "$h_es"
        bad=1
    fi
    local ids_en ids_es
    ids_en="$(grep -m1 -E '<!-- gen:ids ' "$en" 2>/dev/null || true)"
    ids_es="$(grep -m1 -E '<!-- gen:ids ' "$es" 2>/dev/null || true)"
    if [ "$ids_en" != "$ids_es" ]; then
        printf "  ✗ %s vs %s: <!-- gen:ids --> distinto («%s» vs «%s»)\n" "$en" "$es" "$ids_en" "$ids_es"
        bad=1
    fi
    return $bad
}

# scan_file_deny ARCHIVO — reporta archivo:línea: contenido por cada hit del
# DENY_RE, incrementando los contadores globales deny_hits/FAIL. Declarada
# ACÁ (antes del autotest de la denylist, más abajo) para que el control
# positivo llame a la función REAL — no un grep inline que podría divergir
# de lo que corre en los checks de verdad.
deny_hits=0
scan_file_deny() {
    local f="$1"
    while IFS= read -r line; do
        [ -z "$line" ] && continue
        local lineno="${line%%:*}" content="${line#*:}"
        printf "  ✗ %s:%s: %s\n" "$f" "$lineno" "$(printf '%s' "$content" | sed -E 's/^[[:space:]]+//')"
        deny_hits=$((deny_hits + 1)); FAIL=$((FAIL + 1))
    done < <(grep -niE -- "$DENY_RE" "$f" 2>/dev/null)
}

if check_twin_pair "$TMPDIR/fixture/templates/en/AGENTS.md" "$TMPDIR/fixture/templates/es/AGENTS.md" > "$TMPDIR/autotest_a.log" 2>&1; then
    printf "  ✗ autotest de paridad ROTO — el fixture con marca/encabezados/ids distintos dio VERDE\n"
    AUTOTEST_OK=0
else
    n_mismatches="$(grep -c '✗' "$TMPDIR/autotest_a.log")"
    if [ "$n_mismatches" -eq 3 ]; then
        printf "  ✓ autotest del comparador de twins (3 mismatches: marca + encabezados + gen:ids)\n"
    else
        printf "  ✗ autotest de paridad ROTO — se esperaban 3 mismatches, salieron %s\n" "$n_mismatches"
        AUTOTEST_OK=0
    fi
fi
# control positivo del caso feliz: mismo archivo contra sí mismo es coherente
if ! check_twin_pair "$TMPDIR/fixture/templates/en/AGENTS.md" "$TMPDIR/fixture/templates/en/AGENTS.md" > /dev/null 2>&1; then
    printf "  ✗ autotest de paridad ROTO — un archivo comparado contra sí mismo dio mismatches\n"
    AUTOTEST_OK=0
fi

# B — control positivo de la denylist: «vos tenés» en tmp → rojo, pasando
# por scan_file_deny() de verdad (no un grep inline) — FAIL/deny_hits se
# restauran después para que este control no ensucie el resultado real.
FAIL_ANTES="$FAIL"; DENY_HITS_ANTES="$deny_hits"
printf 'vos tenés razón en esto\n' > "$TMPDIR/voseo.md"
scan_file_deny "$TMPDIR/voseo.md" > "$TMPDIR/autotest_b.log" 2>&1
if [ "$FAIL" -eq $((FAIL_ANTES + 1)) ] && [ "$deny_hits" -eq $((DENY_HITS_ANTES + 1)) ] \
   && grep -qE "voseo\.md:1: vos tenés razón en esto" "$TMPDIR/autotest_b.log"; then
    printf "  ✓ autotest de la denylist de español neutro (scan_file_deny real: «vos tenés» en voseo.md:1, FAIL +1)\n"
else
    printf "  ✗ autotest de la denylist ROTO — «vos tenés» no incrementó FAIL/deny_hits con archivo:línea\n"
    AUTOTEST_OK=0
fi
FAIL="$FAIL_ANTES"; deny_hits="$DENY_HITS_ANTES"
# control negativo: texto neutro no dispara nada (ni FAIL ni deny_hits se mueven)
printf 'tú tienes razón en esto\n' > "$TMPDIR/neutro.md"
scan_file_deny "$TMPDIR/neutro.md" > /dev/null 2>&1
if [ "$FAIL" -ne "$FAIL_ANTES" ] || [ "$deny_hits" -ne "$DENY_HITS_ANTES" ]; then
    printf "  ✗ autotest de la denylist ROTO — un falso positivo en texto neutro\n"
    AUTOTEST_OK=0
fi
FAIL="$FAIL_ANTES"; deny_hits="$DENY_HITS_ANTES"

if [ "$AUTOTEST_OK" -eq 0 ]; then
    echo "  autotest roto — no confiar en los checks de abajo"
    exit 1
fi

# ── Check A: paridad EN/ES sobre lo sembrado real ────────────────────────
if [ "$(seeded_root en)" = "$(seeded_root es)" ]; then
    printf "  · paridad EN/ES: (sin templates/es/: paridad no aplica todavía)\n"
else
    paridad_hits=0
    while IFS= read -r f_en; do
        rel="${f_en#"$(seeded_root en)"/}"
        f_es="$(seeded_root es)/$rel"
        if ! check_twin_pair "$f_en" "$f_es"; then
            FAIL=$((FAIL + 1)); paridad_hits=$((paridad_hits + 1))
        fi
    done < <(seeded_files_for en)
    if [ "$paridad_hits" -eq 0 ]; then
        printf "  ✓ paridad EN/ES: todos los twins coherentes\n"
    fi
fi

# ── Check B: español neutro sobre lo sembrado real ───────────────────────
# (deny_hits ya está en 0 acá — el autotest de arriba restaura su valor
# después de usar scan_file_deny(), definida más arriba junto a esa sección)
if [ -d templates/es ]; then
    while IFS= read -r f; do
        scan_file_deny "$f"
    done < <(find templates/es -type f 2>/dev/null | sort)
else
    printf "  · español neutro: templates/es/ no existe todavía — nada que escanear ahí\n"
fi

if compgen -G "templates/adapters/*.es.*" > /dev/null 2>&1; then
    for f in templates/adapters/*.es.*; do
        scan_file_deny "$f"
    done
else
    printf "  · español neutro: templates/adapters/*.es.* no existe todavía — nada que escanear ahí\n"
fi

gotchas_scanned=0
for f in docs/gotchas/*.md; do
    [ "$(basename "$f")" = "README.md" ] && continue
    gotchas_scanned=$((gotchas_scanned + 1))
    while IFS= read -r line; do
        [ -z "$line" ] && continue
        lineno="${line%%:*}"; content="${line#*:}"
        printf "  ✗ %s:%s: %s\n" "$f" "$lineno" "$(printf '%s' "$content" | sed -E 's/^[[:space:]]+//')"
        deny_hits=$((deny_hits + 1)); FAIL=$((FAIL + 1))
    done < <(awk '/^## es/{flag=1} flag{print NR": "$0}' "$f" | grep -inE -- "$DENY_RE")
done

if [ "$deny_hits" -eq 0 ]; then
    printf "  ✓ español neutro: sin voseo/vosotros en %d gotchas (## es) + templates/es/ + templates/adapters/*.es.*\n" "$gotchas_scanned"
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  paridad EN/ES + español neutro: FALLÓ ($FAIL problema(s))"
    exit 1
fi
echo "  paridad EN/ES + español neutro: PASS"
exit 0
