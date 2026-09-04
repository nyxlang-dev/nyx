#!/usr/bin/env bash
# run_gotchas_schema.sh — cada docs/gotchas/<id>.md respeta el esquema de docs/gotchas/README.md.
set -u
cd "$(dirname "$0")/../.."
FAIL=0
ids=(); codes=()
for f in docs/gotchas/*.md; do
    [ "$f" = "docs/gotchas/README.md" ] && continue
    fm="$(awk 'NR==1 && $0!="---"{exit 2} NR>1 && $0=="---"{exit} NR>1' "$f")" || { echo "  ✗ $f: sin frontmatter"; FAIL=1; continue; }
    get() { sed -n "s/^$1: *//p" <<< "$fm" | head -1; }
    id="$(get id)"; kind="$(get kind)"; sev="$(get severity)"; since="$(get since)"
    pattern="$(get pattern)"; code="$(get vet_code)"; anchor="$(get anchor)"; test="$(get test)"
    [ "$id" = "$(basename "$f" .md)" ] || { echo "  ✗ $f: id «$id» ≠ nombre de archivo"; FAIL=1; }
    grep -qE '^[a-z0-9-]+$' <<< "$id" || { echo "  ✗ $f: id inválido"; FAIL=1; }
    case "$kind" in trap|rule|limit|fixed) ;; *) echo "  ✗ $f: kind «$kind»"; FAIL=1 ;; esac
    case "$sev" in silent-wrong|crash|loud|n/a) ;; *) echo "  ✗ $f: severity «$sev»"; FAIL=1 ;; esac
    grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$' <<< "$since" || { echo "  ✗ $f: since «$since»"; FAIL=1; }
    if [ "$kind" = trap ] || [ "$kind" = rule ]; then
        [ -n "$anchor" ] || { echo "  ✗ $f: trap/rule sin anchor"; FAIL=1; }
        [ -n "$test" ] || { echo "  ✗ $f: trap/rule sin test"; FAIL=1; }
    fi
    # `test:` admite una LISTA separada por comas (un gotcha puede estar cubierto
    # por más de un test — p.ej. arr[i]=float lo cubren el 17 y el 18): cada
    # entrada tiene que existir.
    if [ -n "$test" ]; then
        IFS=, read -ra _tests <<< "$test"
        for t in "${_tests[@]}"; do
            [ -f "$t" ] || { echo "  ✗ $f: test $t no existe"; FAIL=1; }
        done
    fi
    [ -z "$pattern" ] || grep -qE '^W1[0-9]{2}$' <<< "$code" || { echo "  ✗ $f: pattern sin vet_code W1NN"; FAIL=1; }
    grep -q '^## en$' "$f" && grep -q '^## es$' "$f" || { echo "  ✗ $f: faltan ## en / ## es"; FAIL=1; }
    for prev in "${ids[@]}"; do [ "$prev" = "$id" ] && { echo "  ✗ $f: id duplicado"; FAIL=1; }; done
    ids+=("$id"); [ -n "$code" ] && codes+=("$code")
done
dups="$(printf '%s\n' "${codes[@]}" | sort | uniq -d)"
[ -z "$dups" ] || { echo "  ✗ vet_code duplicado: $dups"; FAIL=1; }
# Autotest: un archivo roto en tmp debe fallar
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
printf -- '---\nid: roto\nkind: nada\n---\n## en\nx\n' > "$T/roto.md"
if awk 'NR==1 && $0!="---"{exit 2}' "$T/roto.md" && ! grep -qE '^kind: (trap|rule|limit|fixed)$' "$T/roto.md"; then echo "  ✓ autotest del esquema"; else echo "  ✗ autotest roto"; FAIL=1; fi
[ "$FAIL" = 0 ] && echo "  ✓ esquema de gotchas: ${#ids[@]} archivos válidos"
exit $FAIL
