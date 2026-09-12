#!/usr/bin/env bash
# run_prelude_divergence.sh — el prelude es una copia de 5 módulos de la std,
# y nadie avisa cuando la copia se desincroniza.
#
# Desde que std/prelude.nx lo GENERA scripts/gen_prelude.sh la copia ya no se
# hace a mano, pero el gate sigue siendo necesario: el generador puede no
# haberse corrido (eso lo caza el --check de más abajo) y la premisa de que
# concatenar los módulos basta para tener un prelude correcto es exactamente
# lo que estos tres ejes verifican.
#
# `compiler/resolve.nx::resolve_source` concatena `std/prelude.nx` al fuente de
# TODO programa de usuario y, acto seguido, pre-registra std/math, std/io,
# std/array, std/file y std/map en el mapa `imported`. Consecuencia directa:
# un `import "std/array"` NO vuelve a inlinear el módulo — el usuario ve
# siempre la copia del prelude, nunca el archivo. Los dos textos pueden
# divergir indefinidamente sin que falle un solo test:
#
#   - una función NUEVA en std/array.nx es INVISIBLE hasta que alguien la
#     copia al prelude a mano (y nadie se entera de que no lo hizo);
#   - una función con CUERPO distinto en cada lado hace que el módulo mienta
#     sobre lo que el programa realmente ejecuta;
#   - una función `pub` en el prelude y `fn` a secas en el módulo funciona
#     igual para el usuario (usa la del prelude) pero NO existe para
#     `import "std/array" as a` ni para el generador de documentación, porque
#     el extractor de exports de resolve.nx solo reconoce `pub fn`/`export fn`.
#     Este último caso estuvo mordiendo con 6 funciones array_* y una
#     comparación por NOMBRES no lo habría cazado nunca.
#
# Por eso este gate compara los tres ejes: presencia, cuerpo y modificador.
#
# Qué se compara y qué no:
#   - fn / enum / trait / struct: firma (sin el modificador) + cuerpo completo,
#     incluidos los comentarios INTERNOS — el comentario "Insertion sort" de
#     sort_by se había perdido en la copia y es exactamente lo que este eje caza.
#   - const y extern "C" fn: la línea entera.
#   - El modificador (pub / export / nada) se compara APARTE del cuerpo, para
#     poder decir cuál de los tres problemas es.
#   - Los comentarios PRECEDENTES a una declaración NO se comparan: cuando el
#     prelude se copiaba a mano, map_size usaba los suyos para referenciarse
#     cruzado ("mismo que std/prelude.nx" de un lado, "mismo que std/map.nx"
#     del otro). Con el prelude generado esos comentarios ya salen idénticos,
#     pero el eje se deja fuera igual: el --check de arriba compara el archivo
#     ENTERO byte a byte, que es más fuerte que cualquier regla por comentario.
#
# set -u sin pipefail (regla del repo: `grep -q` sobre un pipe ya mordió acá
# con rc=141 por SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

PRELUDE="std/prelude.nx"

# Los módulos que el prelude copia. NO es una lista a mano: se LEE del propio
# prelude (línea de contrato `//#prelude-modules:` que escribe gen_prelude.sh y
# que compiler/resolve.nx usa para pre-registrarlos). Una cuarta copia a mano
# volvería a abrir la puerta a que el gate mire un conjunto distinto del real.
MODULES=$(sed -n 's|^//#prelude-modules:[[:space:]]*||p' "$PRELUDE" | head -1)
if [ -z "$MODULES" ]; then
    echo "  ✗ $PRELUDE no trae la línea //#prelude-modules — regenerar con 'make prelude'"
    exit 1
fi

# --- Excepciones: lo que el prelude tiene DE MÁS a propósito -----------------
#
# El prelude no es solo la copia de sus módulos: también es el CORE del
# lenguaje, declarado una única vez y en ningún módulo. Nada de esto tiene
# original con el que compararse, así que "sobra en el prelude" es lo correcto
# para estas entradas y solo para estas. Lista EXPLÍCITA a propósito: un filtro
# genérico (p.ej. "ignorar todo enum/trait") dejaría entrar sin ruido a
# cualquier declaración futura que sí debería estar en un módulo.
#
#   enum Option / enum Result — los dos enums genéricos builtin sobre los que
#   descansa el manejo de errores del lenguaje entero.
#
#   Los 11 traits de sobrecarga de operadores: cada uno le da significado a un
#   operador del lenguaje (Add=+, Sub=-, Mul=*, Div=/, Rem=%, Neg=-unario,
#   PartialEq===, PartialOrd=<, Clone, Debug, Copy) y el compilador los busca
#   por nombre. Viven en el prelude porque tienen que existir en TODO programa.
PRELUDE_CORE_ONLY=(
    "enum:Option"
    "enum:Result"
    "trait:Add"
    "trait:Sub"
    "trait:Mul"
    "trait:Div"
    "trait:Rem"
    "trait:Neg"
    "trait:PartialEq"
    "trait:PartialOrd"
    "trait:Clone"
    "trait:Debug"
    "trait:Copy"
)

FAIL=0
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

if [ ! -f "$PRELUDE" ]; then
    echo "  ✗ falta $PRELUDE"
    exit 1
fi

# --- Staleness: el prelude es GENERADO ---------------------------------------
# Desde que std/prelude.nx lo produce scripts/gen_prelude.sh (banner "ARCHIVO
# GENERADO" en la línea 1), el modo de divergencia más probable ya no es una
# copia mal hecha sino la trampa clásica del archivo derivado y trackeado:
# alguien toca un std/*.nx, no regenera, y commitea. La comparación
# declaración-por-declaración de más abajo caza casi todo eso, pero no todo —
# un cambio en un comentario suelto, en el core, o en el orden, pasaría — así
# que se pregunta primero, y directo, si el archivo commiteado es exactamente
# lo que el generador produce hoy.
if [ -x scripts/gen_prelude.sh ] || [ -f scripts/gen_prelude.sh ]; then
    if ! bash scripts/gen_prelude.sh --check; then
        FAIL=$((FAIL + 1))
    fi
else
    echo "  ✗ falta scripts/gen_prelude.sh — $PRELUDE es un archivo generado y se quedó sin generador"
    FAIL=$((FAIL + 1))
fi

# --- resolve.nx no puede volver a hardcodear la lista -----------------------
# Desde el 2026-09-12 la lista tiene UNA fuente: la línea //#prelude-modules del
# prelude, que resolve.nx lee con prelude_module_list(). Una segunda copia se
# desincroniza con el BINARIO instalado —compilador y prelude se instalan por
# separado— y un prelude nuevo con un compilador viejo hace que el import
# re-inlinee el módulo: %Error dos veces, `redefinition of type`, todo programa
# rechazado (fricción de nyxerp, BLOQUEO TOTAL). Se descartan los comentarios:
# resolve.nx cita `imported.insert("std/math", 1)` como TEXTO.
RESOLVE_MODS=$(grep -v '^[[:space:]]*//' compiler/resolve.nx \
    | grep -oE 'imported\.insert\("std/[a-z_]+"' \
    | sed 's/.*"std\///; s/"//' | grep -v '^prelude$' | LC_ALL=C sort -u | tr '\n' ' ')
if [ -n "$RESOLVE_MODS" ]; then
    echo "  ✗ compiler/resolve.nx volvió a hardcodear módulos del prelude: $RESOLVE_MODS"
    echo "      la lista vive en la línea //#prelude-modules del prelude y se lee con"
    echo "      prelude_module_list(); una segunda copia se desincroniza con el binario"
    FAIL=$((FAIL + 1))
fi

# --- Extractor ---------------------------------------------------------------
# Vuelca cada declaración top-level de un .nx a dos archivos:
#   $out/body/<kind>__<name>  → firma SIN modificador + cuerpo
#   $out/mod/<kind>__<name>   → pub | export | (vacío)
# Solo mira declaraciones en columna 0 (todo lo top-level en estos archivos lo
# está); lo anidado dentro de un cuerpo queda dentro del cuerpo, como debe ser.
extract() {
    local src="$1" out="$2"
    mkdir -p "$out/body" "$out/mod"
    awk -v out="$out" '
    function sanitize(l,   s) {
        s = l
        gsub(/"[^"]*"/, "", s)   # llaves dentro de strings no cuentan
        sub(/\/\/.*/, "", s)     # ni dentro de comentarios de línea
        return s
    }
    function finish(   bodyfile, modfile) {
        bodyfile = out "/body/" kind "__" name
        modfile  = out "/mod/"  kind "__" name
        if (system("test -e " bodyfile) == 0) {
            print "DUP\t" kind "\t" name
        }
        printf "%s", buf > bodyfile
        close(bodyfile)
        printf "%s\n", modifier > modfile
        close(modfile)
        print "DECL\t" kind "\t" name
        depth = 0; open = 0; buf = ""; kind = ""; name = ""; modifier = ""
    }
    {
        line = $0
        sub(/[ \t\r]+$/, "", line)          # el espacio final no es divergencia
    }
    kind == "" {
        rest = line; modifier = ""
        if (rest ~ /^pub /)         { modifier = "pub";    sub(/^pub /, "", rest) }
        else if (rest ~ /^export /) { modifier = "export"; sub(/^export /, "", rest) }

        if (rest ~ /^extern "C" fn [A-Za-z_]/)   { kind = "extern" }
        else if (rest ~ /^fn [A-Za-z_]/)         { kind = "fn" }
        else if (rest ~ /^const [A-Za-z_]/)      { kind = "const" }
        else if (rest ~ /^enum [A-Za-z_]/)       { kind = "enum" }
        else if (rest ~ /^trait [A-Za-z_]/)      { kind = "trait" }
        else if (rest ~ /^struct [A-Za-z_]/)     { kind = "struct" }
        else if (rest ~ /^impl /)                { kind = "impl" }
        else { next }

        # nombre: primer identificador tras la palabra clave
        tmp = rest
        sub(/^extern "C" /, "", tmp)
        sub(/^(fn|const|enum|trait|struct|impl) +/, "", tmp)
        if (match(tmp, /^[A-Za-z_][A-Za-z0-9_]*/)) {
            name = substr(tmp, 1, RLENGTH)
        } else { kind = ""; next }

        buf = rest "\n"
        s = sanitize(rest)
        depth = gsub(/\{/, "{", s) - gsub(/\}/, "}", s)
        open = (index(s, "{") > 0)
        # const y extern "C" fn son de una sola línea (sin cuerpo con llaves)
        if (kind == "const" || kind == "extern") { finish(); next }
        if (open && depth == 0) { finish() }
        next
    }
    {
        buf = buf line "\n"
        s = sanitize(line)
        depth += gsub(/\{/, "{", s) - gsub(/\}/, "}", s)
        if (index(s, "{") > 0) open = 1
        if (open && depth <= 0) { finish() }
    }
    END {
        if (kind != "") print "UNTERMINATED\t" kind "\t" name
    }
    ' "$src"
}

PDIR="$TMPDIR/prelude"
PLOG="$TMPDIR/prelude.log"
extract "$PRELUDE" "$PDIR" > "$PLOG"
if grep -q '^UNTERMINATED' "$PLOG"; then
    echo "  ✗ $PRELUDE: declaración sin cerrar — el extractor no puede compararla"
    grep '^UNTERMINATED' "$PLOG" | sed 's/^/      /'
    FAIL=$((FAIL + 1))
fi
if grep -q '^DUP' "$PLOG"; then
    echo "  ✗ $PRELUDE: declaración duplicada dentro del propio prelude"
    grep '^DUP' "$PLOG" | sed 's/^/      /'
    FAIL=$((FAIL + 1))
fi

# --- Módulo por módulo -------------------------------------------------------
# Cada clave vista en un módulo se anota acá, para después detectar lo que el
# prelude tiene de más.
SEEN="$TMPDIR/seen"
: > "$SEEN"
N_OK=0

for m in $MODULES; do
    src="std/$m.nx"
    if [ ! -f "$src" ]; then
        echo "  ✗ falta $src (registrado como módulo del prelude en compiler/resolve.nx)"
        FAIL=$((FAIL + 1))
        continue
    fi
    MDIR="$TMPDIR/mod_$m"
    MLOG="$TMPDIR/mod_$m.log"
    extract "$src" "$MDIR" > "$MLOG"
    if grep -q '^UNTERMINATED' "$MLOG"; then
        echo "  ✗ $src: declaración sin cerrar — el extractor no puede compararla"
        FAIL=$((FAIL + 1))
    fi

    for bf in "$MDIR"/body/*; do
        [ -e "$bf" ] || continue
        key="$(basename "$bf")"
        kind="${key%%__*}"
        name="${key#*__}"
        echo "$key" >> "$SEEN"

        pbody="$PDIR/body/$key"
        if [ ! -e "$pbody" ]; then
            echo "  ✗ FALTA EN EL PRELUDE: $kind $name — definida en $src y ausente de $PRELUDE"
            echo "      (el usuario NO la ve: resolve.nx no re-inlinea el módulo)"
            FAIL=$((FAIL + 1))
            continue
        fi

        mmod="$(cat "$MDIR/mod/$key")"
        pmod="$(cat "$PDIR/mod/$key")"
        if [ "$mmod" != "$pmod" ]; then
            echo "  ✗ MODIFICADOR DISTINTO: $kind $name — '${mmod:-(sin pub)}' en $src vs '${pmod:-(sin pub)}' en $PRELUDE"
            echo "      (solo \`pub fn\`/\`export fn\` se exportan: con el módulo sin pub,"
            echo "       \`import \"std/$m\" as x\` y el generador de docs no la ven)"
            FAIL=$((FAIL + 1))
        fi

        if ! diff -q "$bf" "$pbody" > /dev/null 2>&1; then
            echo "  ✗ CUERPO DISTINTO: $kind $name — $src y $PRELUDE no coinciden"
            diff -u --label "$src" "$bf" --label "$PRELUDE" "$pbody" | sed -n '3,23p' | sed 's/^/        /'
            FAIL=$((FAIL + 1))
        fi

        if [ "$mmod" = "$pmod" ] && diff -q "$bf" "$pbody" > /dev/null 2>&1; then
            N_OK=$((N_OK + 1))
        fi
    done
done

# --- Lo que sobra en el prelude ---------------------------------------------
for pf in "$PDIR"/body/*; do
    [ -e "$pf" ] || continue
    key="$(basename "$pf")"
    if grep -qxF "$key" "$SEEN"; then continue; fi
    kind="${key%%__*}"
    name="${key#*__}"
    excepted=0
    for e in "${PRELUDE_CORE_ONLY[@]}"; do
        [ "$e" = "$kind:$name" ] && excepted=1
    done
    if [ "$excepted" -eq 1 ]; then continue; fi
    echo "  ✗ SOBRA EN EL PRELUDE: $kind $name — está en $PRELUDE y en ningún módulo"
    echo "      (si es core del lenguaje, agregarlo a PRELUDE_CORE_ONLY con su porqué;"
    echo "       si no, copiarlo al módulo std/ que le corresponde)"
    FAIL=$((FAIL + 1))
done

echo "  declaraciones comparadas prelude ↔ módulos: $N_OK idénticas (+ ${#PRELUDE_CORE_ONLY[@]} core solo-prelude)"

if [ "$FAIL" -gt 0 ]; then
    echo "  divergencia prelude ↔ std: FALLÓ ($FAIL problema(s))"
    echo "  (el prelude se concatena a TODO programa de usuario y tapa al módulo:"
    echo "   lo que diverge se vuelve invisible o miente, sin romper un solo test)"
    exit 1
fi
echo "  ✓ $PRELUDE en sincronía con sus módulos ($MODULES) — presencia, cuerpo y modificador"
exit 0
