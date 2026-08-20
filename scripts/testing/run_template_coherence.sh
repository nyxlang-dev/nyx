#!/usr/bin/env bash
# run_template_coherence.sh — guardia de coherencia LLM.md ↔ manuales sembrados.
#
# El drift de los templates mordió DOS veces: (1) 2026-07-28, AGENTS.md arrastró
# gotchas falsos 2 días después de limpiarse LLM.md; (2) 2026-08-01, la auditoría
# encontró "closure capture is broken" (falso desde el 27/07 — la MISMA mentira
# que costó a un usuario un navegador de 2400 líneas sin callbacks), trampas
# muertas desde abril, y un CHEATSHEET auto-contradictorio con API inventada.
# La guardia de gotchas solo vigila LLM.md §5; esta vigila lo que se SIEMBRA.
#
# Dos chequeos + un pin:
#   A. Ratchet de MENTIRAS RESUCITADAS: frases que §5.4 declara arregladas no
#      pueden reaparecer en ningún manual sembrado. Lista con justificación
#      por entrada — se AGREGA cuando un gotcha se arregla, nunca se poda.
#   B. Anclas de TRAMPAS VIVAS: cada trampa de LLM.md §5.1 tiene un término
#      ancla que debe aparecer en CADA manual sembrado (el tono es libre; el
#      ancla no).
#   C. Pin del conteo de §5.1: si LLM.md gana o pierde una trampa viva, este
#      script falla pidiendo actualizar las anclas — la guardia no puede
#      quedarse muda ante un §5.1 que cambió.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

FAIL=0
MANUALES="templates/AGENTS.md templates/CLAUDE.md templates/CHEATSHEET.md docs/CHEATSHEET.md"

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT
printf 'closure capture of locals is broken\n' > "$TMPDIR/malo.md"
printf 'closures fully work now\n' > "$TMPDIR/bueno.md"
if grep -qiF "closure capture of locals is broken" "$TMPDIR/malo.md" \
   && ! grep -qiF "closure capture of locals is broken" "$TMPDIR/bueno.md"; then
    printf "  ✓ autotest del detector de frases\n"
else
    printf "  ✗ autotest roto — no confiar en los checks de abajo\n"
    FAIL=$((FAIL + 1))
fi

# ── Check A: mentiras resucitadas ────────────────────────────────────────
# Formato: "frase-a-detectar|por qué está muerta". Case-insensitive, literal.
MENTIRAS=(
  "closure capture of locals is broken|§5.4.1: closures funcionan COMPLETOS desde 2026-07-27 (test 12-closure-capture-paths); esta frase costó un navegador sin callbacks"
  "capture is BROKEN|misma familia que la anterior (redacción del gotcha 19 viejo)"
  "arr[i].method() causes SEGV|arreglado desde abril 2026 (CHANGELOG:2323); estuvo listado como trampa viva 4 meses de más"
  "map literal {} is NOT supported|§5.2: {\"k\": v} y {} funcionan desde v0.16; auto-contradicción cazada 2026-08-01"
  "open_file(|API inventada — las reales son file_open/file_close (§5.4.5); enseñada en el CHEATSHEET hasta 2026-08-01"
  "close_file(|misma familia open_file"
  "health_start()|función inexistente enseñada por el README de nyx-proxy hasta v0.4.1"
  "proxy_listen()|misma familia health_start"
  "interval_ms|clave de config inexistente (la real: health_check_interval en segundos)"
  "corrupts the value on the next read|arr[i]=float RESUELTO 2026-08-03 (tag estático C2, test-328): la escritura indexada taguea el slot con el tipo del VALOR"
)
for entrada in "${MENTIRAS[@]}"; do
    frase="${entrada%%|*}"
    for m in $MANUALES; do
        if grep -qiF "$frase" "$m"; then
            printf "  ✗ MENTIRA RESUCITADA en %s: «%s»\n" "$m" "$frase"
            printf "      (%s)\n" "${entrada#*|}"
            FAIL=$((FAIL + 1))
        fi
    done
done
if [ "$FAIL" -eq 0 ]; then
    printf "  ✓ ratchet de mentiras: %d frases muertas, ninguna resucitó en %d manuales\n" "${#MENTIRAS[@]}" 4
fi

# ── Check C (antes que B): pin del conteo de trampas vivas de §5.1 ──────
# Si LLM.md gana/pierde una trampa, la guardia EXIGE actualizar las anclas.
PIN_TRAMPAS=4
vivas=$(sed -n '/^### 5\.1/,/^### 5\.2/p' LLM.md | grep -cE '^[0-9]+\.')
if [ "$vivas" -ne "$PIN_TRAMPAS" ]; then
    printf "  ✗ LLM.md §5.1 tiene %d trampas vivas y el pin dice %d\n" "$vivas" "$PIN_TRAMPAS"
    printf "      actualizá ANCLAS y PIN_TRAMPAS en %s (y los manuales sembrados)\n" "$0"
    FAIL=$((FAIL + 1))
else
    printf "  ✓ pin de §5.1: %d trampas vivas (= pin)\n" "$vivas"
fi

# ── Check B: anclas de las trampas vivas en cada manual sembrado ────────
# Un ancla por trampa de §5.1 (término estable, tono libre). Mantener en
# sync con LLM.md §5.1 — el pin de arriba obliga.
ANCLAS=(
  "nested Maps|§5.1.1 Maps anidados (retorno de función SEGVea)"
  "Option<Array>|§5.1.2 boxing de struct multi-campo en Option/Result rompe el link (el workaround es el ancla)"
  "deadlock|§5.1.4 canal chico deadlockea productor/consumidor"
  "sign-extend|§5.1.5 (E5.5) extern \"C\" -> int de 32 bits no sign-extiende a Nyx int de 64"
)
for entrada in "${ANCLAS[@]}"; do
    ancla="${entrada%%|*}"
    for m in $MANUALES; do
        if ! grep -qiE "$ancla" "$m"; then
            printf "  ✗ trampa viva SIN ancla en %s: /%s/\n" "$m" "$ancla"
            printf "      (%s)\n" "${entrada#*|}"
            FAIL=$((FAIL + 1))
        fi
    done
done
if [ "$FAIL" -eq 0 ]; then
    printf "  ✓ anclas de trampas vivas: %d anclas presentes en los 4 manuales\n" "${#ANCLAS[@]}"
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  coherencia de manuales: FALLÓ ($FAIL problema(s))"
    echo "  (la doc sembrada por nyx init NO puede contradecir a LLM.md — ya pasó dos veces)"
    exit 1
fi
echo "  coherencia de manuales: PASS"
exit 0
