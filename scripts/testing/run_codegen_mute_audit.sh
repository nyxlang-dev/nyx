#!/usr/bin/env bash
# run_codegen_mute_audit.sh — Task 6 (campaña "Primer intento verde", cierre
# Fase 3): auditoría-RATCHET de los catch-alls mudos de codegen.nx.
#
# Las Tasks 4 y 5 convirtieron 4 catch-alls silenciosos en aborts bilingües
# NYX2001-NYX2004 (exit(1)). Quedan, A PROPÓSITO, los catch-alls de la
# familia "campo no encontrado" — son el fallback load-bearing del
# bootstrap (parser.nx los dispara ×3 y hoy funciona así; arreglarlos de
# raíz es tarea de otra fase, no de esta). Esta auditoría no los arregla:
# los CUENTA y falla si el número CRECE (alguien agregó un catch-all mudo
# nuevo) o si los aborts de Fase 3 desaparecen (alguien revirtió el fix).
#
# set -u sin pipefail — "grep -q" sobre un pipe con SIGPIPE ya mordió este
# repo (rc=141, ver run_silent_failure_checks.sh). Se usan archivos
# intermedios en su lugar.
set -u
cd "$(dirname "$0")/../.."

FAIL=0

# ------------------------------------------------------------------
# count_mute_prints <archivo>
#   Cuenta apariciones de print("Error: o print("Warning: que NO están
#   seguidas (a <=6 líneas) de un exit(1) — es decir: imprimen y el
#   control de flujo SIGUE (catch-all mudo clásico: warn/print y retorna
#   un valor default en silencio).
#   Imprime el conteo por stdout (un entero, nada más).
# ------------------------------------------------------------------
count_mute_prints() {
    local file="$1"
    # Una sola pasada con awk (nada de sed por-línea — sobre codegen.nx,
    # ~17k líneas, esto tardaba >1min con el enfoque O(n) invocaciones de
    # sed; awk lee el archivo una vez y mira 6 líneas hacia adelante con un
    # buffer circular).
    awk '
        /print\("(Error:|Warning:)/ {
            hits[NR] = 1
        }
        { lines[NR] = $0 }
        END {
            total = NR
            mute = 0
            for (h in hits) {
                found_exit = 0
                end = h + 6
                if (end > total) end = total
                for (i = h + 1; i <= end; i++) {
                    if (lines[i] ~ /exit\(1\)/) { found_exit = 1; break }
                }
                if (!found_exit) mute++
            }
            print mute
        }
    ' "$file"
}

# ------------------------------------------------------------------
# Check 3 (autotest del propio audit) — PRIMERO: si el contador está
# roto, no tiene sentido confiar en los checks 1 y 2. Regla del repo
# (ver run_gotcha_coverage.sh / run_silent_failure_checks.sh): sin
# control positivo, el audit puede ponerse verde por un grep roto.
# ------------------------------------------------------------------
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

cat > "$TMPDIR/mute_case.nx" <<'NX'
fn f(x: int) -> String {
    if x < 0 {
        print("Error: valor inesperado en f: " + string(x))
        return "i64 0"
    }
    return "ok"
}
NX

cat > "$TMPDIR/abort_case.nx" <<'NX'
fn f(x: int) -> String {
    if x < 0 {
        print("error [NYX9999]: valor inesperado en f: " + string(x))
        exit(1)
        return "i64 0"
    }
    return "ok"
}
NX

mute_count_self=$(count_mute_prints "$TMPDIR/mute_case.nx")
abort_count_self=$(count_mute_prints "$TMPDIR/abort_case.nx")

if [ "$mute_count_self" -eq 1 ] && [ "$abort_count_self" -eq 0 ]; then
    printf "  ✓ autotest del contador (print-mudo detectado, exit(1) no cuenta)\n"
else
    printf "  ✗ autotest del contador — mute_case dio %s (esperado 1), abort_case dio %s (esperado 0)\n" \
        "$mute_count_self" "$abort_count_self"
    printf "    el contador está roto: no se puede confiar en los checks 1 y 2 de abajo\n"
    FAIL=$((FAIL + 1))
fi

# ------------------------------------------------------------------
# Check 1: los aborts NYX2001-NYX2007 (Fase 3 Tasks 4/5 + sub-proyecto 4
# Task 5 + campaña cerrar-silently-wrong Task 3) siguen ahí. Si falta
# alguno, alguien lo revirtió sin querer (o queriendo).
# ------------------------------------------------------------------
MARKERS=(NYX2001 NYX2002 NYX2003 NYX2004 NYX2005 NYX2006 NYX2007)
missing=()
for m in "${MARKERS[@]}"; do
    if ! grep -q "$m" compiler/codegen.nx; then
        missing+=("$m")
    fi
done

if [ "${#missing[@]}" -eq 0 ]; then
    printf "  ✓ los %s aborts ruidosos siguen en compiler/codegen.nx (%s)\n" "${#MARKERS[@]}" "${MARKERS[*]}"
else
    printf "  ✗ faltan marcadores de Fase 3 en compiler/codegen.nx: %s\n" "${missing[*]}"
    printf "    alguien revirtió un catch-all que debía abortar (Tasks 4/5 de 'Primer intento verde', Task 5 del sub-proyecto 4)\n"
    FAIL=$((FAIL + 1))
fi

# ------------------------------------------------------------------
# Check 2: ratchet de prints-mudos. Baseline medido a mano el
# 2026-07-28 (Task 6): 10 sitios, todos de la familia "campo no
# encontrado" / miembro de namespace / field_assign — el fallback
# load-bearing del bootstrap que parser.nx dispara ×3 y del que depende
# HOY (ver contexto de la Task 6). No se arreglan acá (fuera de scope).
# Sitios (línea real puede correrse con el archivo, se recuenta cada
# corrida — este número es SOLO la cuenta esperada):
#   - "tuple index not found" (codegen_tuple_access)
#   - "'<field>' is not a public member of module" (field_access)
#   - "namespace member not found" (Warning)
#   - "variable no definida en field_access"
#   - "campo no encontrado" (field_access, struct_field_index)
#   - "'<method>' is not a public member of module" (method call)
#   - "variable no definida en field_assign"
#   - "campo no encontrado en field_assign"
# 2026-07-30 (sub-proyecto 4, Task 5): baja de 10 a 9 — el sitio
# "field_assign solo soporta identificadores como objeto" dejó de existir:
# `a.b.c = x` se IMPLEMENTÓ (cadena de GEPs) y los receivers que siguen sin
# soporte abortan con NYX2005/NYX2006.
# 2026-07-31 (épica dispatch, Task 4): baja de 9 a 8 — desaparece "campo no
# encontrado en nested access" (por eso ya no está en la lista de arriba). Era
# el fallback del bloque de acceso ANIDADO de codegen_field_access, y su print
# mudo tapaba un silently-wrong REAL, no un caso teórico: `s.f.length` con
# `f: String` caía ahí, avisaba por stdout y devolvía el literal `i64 0` con
# exit 0 — la propiedad daba 0 mientras `s.f.length()` y la variable bindeada
# daban 4. Ahora el bloque atiende las propiedades builtin (`.length` sobre
# %nyx_string* y sobre { i64, i8* }*) y lo que de verdad no resuelve aborta con
# NYX2007, como los backstops de la Task 3.
BASELINE=8

current=$(count_mute_prints compiler/codegen.nx)

if [ "$current" -eq "$BASELINE" ]; then
    printf "  ✓ ratchet de prints-mudos: %s sitios (= baseline)\n" "$current"
elif [ "$current" -gt "$BASELINE" ]; then
    printf "  ✗ ratchet de prints-mudos: %s sitios (> baseline %s)\n" "$current" "$BASELINE"
    printf "    un catch-all NUEVO en codegen.nx imprime y sigue en vez de abortar.\n"
    printf "    patrón correcto (ver codegen.nx ~NYX2001-NYX2004): print(\"error [NYXNNNN]: ...\"); exit(1)\n"
    FAIL=$((FAIL + 1))
else
    printf "  ⚠ ratchet de prints-mudos: %s sitios (< baseline %s) — bajó, ¡buenas noticias!\n" "$current" "$BASELINE"
    printf "    para que el ratchet no quede flojo, actualizá BASELINE=%s en %s\n" "$current" "$0"
    printf "    (y actualizá también la lista de sitios en el comentario de arriba)\n"
    FAIL=$((FAIL + 1))
fi

# ------------------------------------------------------------------
# Check 4: semantic y codegen no pueden divergir sin que se note.
# La lista blanca de methods_for_kind (semantic.nx) es la fuente de verdad
# del par (método, tipo). Si codegen maneja un método para un tipo que
# semantic no cataloga, ese método es inalcanzable o —peor— alcanzable por
# una rama equivocada: exactamente la familia que NYX1022/NYX2007 cerraron.
#
# LIMITACIÓN DECLARADA (misma clase que la del ratchet de prints-mudos):
# este check garantiza que el catálogo sigue EXISTIENDO y es LEGIBLE por
# forma (si alguien renombra methods_for_kind o reescribe sus bloques, el
# extractor devuelve vacío y el gate falla). NO enumera las ramas de
# codegen para compararlas método a método — eso exigiría parsear
# codegen_method_call (2362 líneas, 16 sitios, orden load-bearing; ver el
# inventario 2026-07-31). La comparación viva la hace la matriz
# (run_dispatch_matrix.sh), que EJECUTA cada par (método, forma).
# ------------------------------------------------------------------
# Anclado al cuerpo de `fn methods_for_kind`: `rk == "TyString"` aparece
# también en otras funciones del archivo (p.ej. semantic.nx:742-744) y sin
# el ancla el extractor arranca en la aparición equivocada y devuelve vacío
# — lo cazó el control positivo de esta misma tarea.
extraer_lista() {
  awk -v kind="$1" '
    /^fn methods_for_kind\(/ { infn = 1 }
    infn && /^}/ { exit }
    infn && $0 ~ ("rk == \"" kind "\"") { f = 1 }
    infn && f { print }
    infn && f && /^    }/ { exit }
  ' compiler/semantic.nx | grep -oE '"[a-zA-Z_]+"' | tr -d '"' | grep -v "^Ty" | sort -u
}

div=0
for kind in TyString TyArray TyMap TyOption TyResult; do
    lista="$(extraer_lista "$kind")"
    if [ -z "$lista" ]; then
        printf "  ✗ no se pudo extraer la lista blanca de %s — ¿cambió methods_for_kind en semantic.nx?\n" "$kind"
        div=1
    fi
done

if [ "$div" -ne 0 ]; then
    printf "  ✗ ratchet de divergencia: el catálogo de methods_for_kind no es legible\n"
    printf "    NYX1022 valida contra ese catálogo; si no se puede leer, tampoco se puede auditar\n"
    FAIL=$((FAIL + 1))
else
    printf "  ✓ catálogo de methods_for_kind legible (TyString/TyArray/TyMap/TyOption/TyResult)\n"
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  auditoría-ratchet de codegen: FALLÓ ($FAIL check(s))"
    exit 1
fi
echo "  auditoría-ratchet de codegen: PASS"
exit 0
