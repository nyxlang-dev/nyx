#!/usr/bin/env bash
# run_gotcha_coverage.sh — la doc no puede mentir sin que algo falle.
#
# Verifica el VÍNCULO entre los ítems de LLM.md §5.1-5.2 y sus tests.
# El verde de los tests lo da run_ai_first_tests.sh; acá sólo se chequea
# que la referencia exista en ambas direcciones.
#
# Formato de marca [test: ...]:
#   - sin "/"  → nombre simple, resuelve a tests/ai-first/<nombre>.nx
#   - con "/"  → ruta relativa desde tests/, resuelve a tests/<ruta>.nx
#     (se autorizó un segundo formato porque un ítem —el `await` de
#     float, NYX1021— tiene su cobertura fuera de ai-first)
#
# §5.3 y §5.4 están EXENTAS a propósito (por diseño, no por omisión):
#   - 5.3 son límites heredados de la plataforma sin test E2E viable
#     (ver SDD 2026-07-27 Task 2 report)
#   - 5.4 son gotchas ya resueltos, no necesitan guardia de regresión acá
#
# Motivo (2026-07-27): un gotcha se agrega cuando aparece el bug y nadie lo
# retira cuando se arregla. Cuatro de 21 mentían; uno de ellos costó que un
# usuario escribiera un navegador entero sin callbacks.
set -uo pipefail
cd "$(dirname "$0")/../.."

FAIL=0

# 0. LLM.md debe existir y ser legible — si no, todo lo demás abajo mide
#    strings vacíos y da "cobertura: 0 ítems, todos con test existente" con
#    rc=0: un no-op silencioso disfrazado de éxito. Falló así 9 días en este
#    repo con otro verificador — no repetir el patrón.
if [ ! -r LLM.md ]; then
    echo "  ✗ LLM.md no existe o no es legible desde $(pwd) — no se puede verificar cobertura de gotchas"
    exit 1
fi

# 1. Extraer sólo las secciones 5.1 y 5.2 (corta antes de que empiece 5.3).
#    Son las ÚNICAS donde la marca [test: ...] es OBLIGATORIA.
SECCION="$(awk '/^### 5\.3/{exit} /^### 5\.1/{f=1} f' LLM.md)"

# Las marcas para los chequeos de EXISTENCIA y HUÉRFANOS se toman de toda la §5
# (5.1 a 5.4), no sólo de las obligatorias. Motivo (2026-07-27): cuando un bug
# se arregla, su ítem se muda a 5.4 ("ya arreglado") y su test ai-first sigue
# siendo válido — de hecho es la prueba de que quedó arreglado. Si 5.4 no
# pudiera citar tests, ese test quedaría huérfano y el chequeo 4 fallaría
# obligando a borrar un test bueno. En 5.3/5.4 la marca es OPCIONAL: si está,
# tiene que resolver a un archivo real.
SECCION_TODA="$(awk '/^## 6\./{exit} /^### 5\.1/{f=1} f' LLM.md)"
MARCAS="$(grep -oE '\[test: [a-zA-Z0-9/_-]+\]' <<< "$SECCION_TODA" | sed 's/\[test: //; s/\]//' | sort -u)"

# 2. Todo ítem numerado de esas secciones debe tener marca. Un ítem puede
#    abarcar varias líneas (párrafo largo) y la marca puede estar en
#    cualquier línea del bloque, no sólo en el encabezado — se arma cada
#    bloque desde un "N. **" hasta el próximo (o el fin de sección).
SIN_MARCA="$(awk '
    /^[0-9]+\. \*\*/ {
        if (header != "" && !visto) print header
        header = $0; visto = 0
    }
    { if (index($0, "[test: ") > 0) visto = 1 }
    END { if (header != "" && !visto) print header }
' <<< "$SECCION")"
ITEMS=$(grep -cE '^[0-9]+\. \*\*' <<< "$SECCION")
if [ -n "$SIN_MARCA" ]; then
    N_SIN_MARCA=$(wc -l <<< "$SIN_MARCA")
    echo "  ✗ $N_SIN_MARCA ítem(s) de LLM.md §5.1-5.2 SIN marca [test: ...]"
    sed 's/^/      /' <<< "$SIN_MARCA"
    FAIL=1
fi

# 3. Todo test referenciado debe existir (resolver según formato de la marca)
for m in $MARCAS; do
    if [[ "$m" == */* ]]; then
        ruta="tests/$m.nx"
    else
        ruta="tests/ai-first/$m.nx"
    fi
    if [ ! -f "$ruta" ]; then
        echo "  ✗ LLM.md referencia $ruta — NO EXISTE"
        FAIL=1
    fi
done

# 4. Todo test ai-first referenciable debe estar referenciado (caza huérfanos:
#    el test que sobrevive cuando se borra su gotcha). Sólo aplica a
#    tests/ai-first/ — los tests 01-11 son ai-first pero existen por otras
#    razones y ningún ítem los cita a propósito, así que el barrido arranca
#    en 12 (el primero efectivamente referenciado hoy, closure-capture-paths).
for f in tests/ai-first/1[2-9]-*.nx tests/ai-first/[2-9][0-9]-*.nx; do
    [ -e "$f" ] || continue
    base="$(basename "$f" .nx)"
    if ! grep -q "^$base\$" <<< "$MARCAS"; then
        echo "  ✗ tests/ai-first/$base.nx no lo referencia ningún ítem de LLM.md (¿gotcha borrado?)"
        FAIL=1
    fi
done

# 5. Un conteo de 0 ítems no es éxito — significa que la sección 5.1/5.2
#    desapareció o el awk dejó de matchear (p.ej. LLM.md reestructurado).
#    Por diseño §5.1-5.2 siempre tiene ítems reales; 0 es una señal de rotura,
#    no de que no hay gotchas.
if [ "$ITEMS" -eq 0 ]; then
    echo "  ✗ 0 ítems detectados en LLM.md §5.1-5.2 — la sección desapareció o el parseo se rompió"
    FAIL=1
fi

if [ "$FAIL" -eq 0 ]; then
    echo "  ✓ cobertura de gotchas: $ITEMS ítems, todos con test existente"
else
    echo "  La doc de gotchas y sus tests están desincronizados."
fi
exit $FAIL
