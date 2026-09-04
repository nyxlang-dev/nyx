#!/usr/bin/env bash
# run_init_golden.sh — LISTADO DORADO de `nyx init` (ADR-1 de la spec
# 2026-09-04-andamiaje-sdd-design.md).
#
# Lo que `nyx init` deja en un directorio limpio es la primera impresión que
# el lenguaje le da a un agente y a un humano. Hasta ADR-1 eso incluía tres
# archivos con marca comercial (CLAUDE.md, .cursorrules, copilot) y tres
# «skills» bajo .claude/ que repetían el núcleo — nadie tenía una guardia que
# dijera QUÉ se siembra, así que cada archivo agregado o quitado pasaba sin
# revisión. Esta guardia fija el listado exacto por idioma:
#
#   A. `init g` (default, en) → find g -type f == tests/ai-first/golden/init-default-en.txt
#   B. `init g --lang es`     → == tests/ai-first/golden/init-default-es.txt
#      (mismo árbol; lo que cambia es el idioma del contenido y el sello)
#   C. NEUTRALIDAD: `grep -ril 'claude\|cursor\|copilot'` sobre el proyecto
#      sembrado por defecto tiene que salir VACÍO, en los dos idiomas.
#   D. Adaptadores opt-in: `--agent=claude,cursor,copilot` agrega EXACTAMENTE
#      CLAUDE.md, .cursorrules y .github/copilot-instructions.md — cada uno de
#      a lo sumo 4 líneas no vacías (3 de contenido + el sello) y citando
#      `AGENTS.md`. Nada bajo .claude/ (ruling: sin skills).
#   E. `--agent=foo` → exit 1 con un mensaje que nombra el valor inválido.
#   F. El sello lleva idioma: última línea `<!-- nyx-version: X nyx-lang: xx -->`.
#   G. `NYX_LANG=es` sin `--lang` siembra en español; `--lang=es` (con `=`) también.
#
# NYX_HOME de prueba: se ARMA en tmp igual que `make install-local` (VERSION +
# std/ + templates/, con LLM.md inyectado en templates/en/docs/nyx/LLM.md).
# El repo pelado NO trae ese LLM.md — lo inyectan los instaladores — así que
# apuntar NYX_HOME al repo daría un listado incompleto y la guardia mentiría.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."
REPO_ROOT="$PWD"

FAIL=0
GOLDEN_DIR="tests/ai-first/golden"

if [ ! -x ./nyx_build ]; then
    echo "  ✗ falta ./nyx_build — corré 'make build-nyx-build' primero"
    exit 1
fi

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

# ── NYX_HOME de prueba (mismo contenido que install-local) ───────────────
STAGE="$TMPDIR/toolchain"
mkdir -p "$STAGE"
cp VERSION "$STAGE/VERSION"
ln -s "$REPO_ROOT/std" "$STAGE/std"
cp -r templates "$STAGE/templates"
if [ -d "$STAGE/templates/en/docs/nyx" ] || mkdir -p "$STAGE/templates/en/docs/nyx"; then
    cp LLM.md "$STAGE/templates/en/docs/nyx/LLM.md" 2>/dev/null || true
fi

# init_at DIR NOMBRE [flags…] — corre `nyx_build init` dentro de DIR con el
# NYX_HOME de prueba. Devuelve el exit code y deja la salida en $TMPDIR/init.log.
init_at() {
    local where="$1"; shift
    mkdir -p "$where"
    (cd "$where" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" init "$@" > "$TMPDIR/init.log" 2>&1)
}

# listing DIR PROY — `find` relativo a DIR, ordenado en C.
listing() {
    (cd "$1" && find "$2" -type f | LC_ALL=C sort)
}

# nonblank_lines FILE
nonblank_lines() { grep -cve '^[[:space:]]*$' "$1"; }

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
AUTOTEST_OK=1
mkdir -p "$TMPDIR/auto/g/src"
touch "$TMPDIR/auto/g/nyx.toml" "$TMPDIR/auto/g/src/main.nx"
printf 'g/nyx.toml\ng/src/main.nx\n' > "$TMPDIR/auto/expected.txt"
if listing "$TMPDIR/auto" g | diff -u "$TMPDIR/auto/expected.txt" - > /dev/null 2>&1; then
    printf "  ✓ autotest del comparador de listados (caso feliz)\n"
else
    printf "  ✗ autotest ROTO — un listado idéntico salió distinto\n"
    AUTOTEST_OK=0
fi
touch "$TMPDIR/auto/g/DE_MAS.md"
if listing "$TMPDIR/auto" g | diff -u "$TMPDIR/auto/expected.txt" - > /dev/null 2>&1; then
    printf "  ✗ autotest ROTO — un archivo de más NO se detectó (la guardia no puede fallar)\n"
    AUTOTEST_OK=0
else
    printf "  ✓ autotest del comparador de listados (un archivo de más ⇒ rojo)\n"
fi
if [ "$AUTOTEST_OK" -eq 0 ]; then
    echo "  autotest roto — no confiar en los checks de abajo"
    exit 1
fi

# ── Checks A/B/C/F: el default de cada idioma ────────────────────────────
for lang in en es; do
    W="$TMPDIR/default_$lang"
    if [ "$lang" = "en" ]; then
        init_at "$W" g
    else
        init_at "$W" g --lang es
    fi
    if [ ! -f "$W/g/nyx.toml" ]; then
        printf "  ✗ init (%s) falló:\n" "$lang"; sed 's/^/      /' "$TMPDIR/init.log"
        FAIL=$((FAIL + 1)); continue
    fi
    GOLD="$GOLDEN_DIR/init-default-$lang.txt"
    if [ ! -f "$GOLD" ]; then
        printf "  ✗ falta el listado dorado %s\n" "$GOLD"; FAIL=$((FAIL + 1)); continue
    fi
    if listing "$W" g | diff -u "$GOLD" - > "$TMPDIR/diff_$lang.txt" 2>&1; then
        printf "  ✓ listado dorado (%s): %s archivos, exacto\n" "$lang" "$(wc -l < "$GOLD" | tr -d ' ')"
    else
        printf "  ✗ el listado sembrado por 'nyx init --lang %s' NO coincide con %s:\n" "$lang" "$GOLD"
        sed 's/^/      /' "$TMPDIR/diff_$lang.txt"
        FAIL=$((FAIL + 1))
    fi
    # C — neutralidad de proveedor sobre TODO lo sembrado por defecto
    if grep -ril 'claude\|cursor\|copilot' "$W/g" > "$TMPDIR/neutral_$lang.txt" 2>/dev/null; then
        printf "  ✗ marca de proveedor en lo sembrado por defecto (%s):\n" "$lang"
        sed "s|$W/||; s/^/      /" "$TMPDIR/neutral_$lang.txt"
        FAIL=$((FAIL + 1))
    else
        printf "  ✓ neutralidad (%s): ni claude/cursor/copilot en el default\n" "$lang"
    fi
    # F — sello con idioma en la última línea de cada archivo sembrado de texto
    SEED_VER="$(tr -d '[:space:]' < VERSION)"
    stamp_bad=0
    for f in AGENTS.md docs/nyx/LLM.md docs/nyx/guides/write-a-program.md \
             docs/nyx/guides/fix-a-compile-error.md docs/nyx/guides/report-friction.md; do
        [ -f "$W/g/$f" ] || { printf "  ✗ %s no sembrado (%s)\n" "$f" "$lang"; stamp_bad=1; continue; }
        last="$(tail -n 1 "$W/g/$f")"
        printf '%s' "$last" | grep -q "nyx-version: $SEED_VER" || { printf "  ✗ %s (%s): última línea sin «nyx-version: %s» («%s»)\n" "$f" "$lang" "$SEED_VER" "$last"; stamp_bad=1; }
        printf '%s' "$last" | grep -q "nyx-lang: $lang" || { printf "  ✗ %s (%s): última línea sin «nyx-lang: %s» («%s»)\n" "$f" "$lang" "$lang" "$last"; stamp_bad=1; }
    done
    if [ "$stamp_bad" -eq 0 ]; then
        printf "  ✓ sello (%s): «nyx-version: %s nyx-lang: %s» al final de los 5 archivos sembrados\n" "$lang" "$SEED_VER" "$lang"
    else
        FAIL=$((FAIL + 1))
    fi
done

# ── Check G: NYX_LANG=es sin --lang, y --lang=es con signo igual ─────────
W="$TMPDIR/env_es"
mkdir -p "$W"
(cd "$W" && NYX_HOME="$STAGE" NYX_LANG=es "$REPO_ROOT/nyx_build" init g >/dev/null 2>&1)
if [ -f "$W/g/AGENTS.md" ] && tail -n 1 "$W/g/AGENTS.md" | grep -q 'nyx-lang: es'; then
    printf "  ✓ NYX_LANG=es sin --lang siembra en español\n"
else
    printf "  ✗ NYX_LANG=es sin --lang NO siembra en español\n"; FAIL=$((FAIL + 1))
fi
W="$TMPDIR/eq_es"
init_at "$W" g --lang=es
if [ -f "$W/g/AGENTS.md" ] && tail -n 1 "$W/g/AGENTS.md" | grep -q 'nyx-lang: es'; then
    printf "  ✓ --lang=es (con signo igual) siembra en español\n"
else
    printf "  ✗ --lang=es (con signo igual) NO siembra en español\n"; FAIL=$((FAIL + 1))
fi

# ── Check D: adaptadores opt-in ──────────────────────────────────────────
W="$TMPDIR/agents"
init_at "$W" g2 --agent=claude,cursor,copilot
if [ ! -f "$W/g2/nyx.toml" ]; then
    printf "  ✗ init --agent=... falló:\n"; sed 's/^/      /' "$TMPDIR/init.log"
    FAIL=$((FAIL + 1))
else
    { sed 's|^g/|g2/|' "$GOLDEN_DIR/init-default-en.txt"
      printf 'g2/.cursorrules\ng2/.github/copilot-instructions.md\ng2/CLAUDE.md\n'; } | LC_ALL=C sort > "$TMPDIR/expected_agents.txt"
    if listing "$W" g2 | diff -u "$TMPDIR/expected_agents.txt" - > "$TMPDIR/diff_agents.txt" 2>&1; then
        printf "  ✓ --agent=claude,cursor,copilot agrega EXACTAMENTE los 3 adaptadores\n"
    else
        printf "  ✗ --agent=claude,cursor,copilot no agrega exactamente los 3 adaptadores:\n"
        sed 's/^/      /' "$TMPDIR/diff_agents.txt"; FAIL=$((FAIL + 1))
    fi
    ad_bad=0
    for f in CLAUDE.md .cursorrules .github/copilot-instructions.md; do
        [ -f "$W/g2/$f" ] || { printf "  ✗ adaptador %s no sembrado\n" "$f"; ad_bad=1; continue; }
        n="$(nonblank_lines "$W/g2/$f")"
        [ "$n" -le 4 ] || { printf "  ✗ adaptador %s: %s líneas no vacías (máximo 4: 3 de contenido + sello)\n" "$f" "$n"; ad_bad=1; }
        grep -q 'AGENTS.md' "$W/g2/$f" || { printf "  ✗ adaptador %s: no cita AGENTS.md\n" "$f"; ad_bad=1; }
        tail -n 1 "$W/g2/$f" | grep -q 'nyx-version:' || { printf "  ✗ adaptador %s: sin sello al final\n" "$f"; ad_bad=1; }
    done
    [ -e "$W/g2/.claude" ] && { printf "  ✗ el adaptador de claude sembró algo bajo .claude/ (ruling: solo CLAUDE.md)\n"; ad_bad=1; }
    if [ "$ad_bad" -eq 0 ]; then
        printf "  ✓ adaptadores: ≤ 4 líneas, citan AGENTS.md, sellados, nada bajo .claude/\n"
    else
        FAIL=$((FAIL + 1))
    fi
fi

# ── Check E: --agent con un valor inválido es RUIDOSO ────────────────────
W="$TMPDIR/badagent"
if init_at "$W" g3 --agent=foo; then
    printf "  ✗ --agent=foo salió con exit 0 (tiene que fallar ruidosamente)\n"; FAIL=$((FAIL + 1))
else
    if grep -qi 'foo' "$TMPDIR/init.log" && grep -qi 'agent' "$TMPDIR/init.log"; then
        printf "  ✓ --agent=foo: exit 1 y el mensaje nombra el valor inválido\n"
    else
        printf "  ✗ --agent=foo falló pero sin un mensaje que nombre «foo»:\n"
        sed 's/^/      /' "$TMPDIR/init.log"; FAIL=$((FAIL + 1))
    fi
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  listado dorado de nyx init: FALLÓ ($FAIL problema(s))"
    exit 1
fi
echo "  listado dorado de nyx init: PASS"
exit 0
