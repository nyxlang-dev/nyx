#!/usr/bin/env bash
# run_seeded_blocks_compile.sh — todo bloque ```nyx sembrado por `nyx init`
# TIENE que compilar.
#
# La skill write-nyx-program vivió ~6 semanas con 8/11 bloques que no
# compilaban antes de la campaña de fricción de 2026-08-31 (ver
# scripts/testing/lib_seeded_files.sh) — nada corría esos bloques, así que
# nadie lo notó hasta que un usuario los copió. Esta guardia extrae cada
# bloque ```nyx de TODO lo sembrado (ambos idiomas) y lo compila de verdad
# con el bootstrap semántico + clang, con la misma receta de
# run_ai_first_tests.sh.
#
# Contrato de fence:
#   ```nyx           — código completo, DEBE tener `fn main` y DEBE compilar
#                       (más linkear: los símbolos del runtime tienen que
#                       resolver, igual que un test real de tests/ai-first/)
#   ```nyx-fragment   — snippet sin `fn main` (declaración suelta, expresión
#                       de ejemplo) — se salta, no se compila
# Un bloque ```nyx SIN `fn main` es un FALLO (no un salteo silencioso): hay
# que re-etiquetarlo `nyx-fragment` o completarlo con un main real.
#
# Toma el lock de script.nx/script.ll/script_bin de la raíz del repo
# (lib_testroot_lock.sh) — lo comparte con todos los demás runners.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

source scripts/testing/lib_seeded_files.sh
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

FAIL=0
LANGS=(en es)

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — corré 'make bootstrap' primero"
    exit 1
fi

# extract_blocks FILE BLOCKDIR MANIFEST — escribe un .nx por bloque
# ```nyx/```nyx-fragment de FILE bajo BLOCKDIR y agrega una fila
# "archivo<TAB>tag<TAB>línea-de-inicio<TAB>ruta-del-bloque" a MANIFEST.
extract_blocks() {
    local file="$1" blockdir="$2" manifest="$3"
    awk -v file="$file" -v blockdir="$blockdir" -v manifest="$manifest" '
        BEGIN { safe = file; gsub(/[^A-Za-z0-9]/, "_", safe); intag = "" }
        /^```nyx-fragment[ \t]*$/ { intag = "fragment"; start = NR; outpath = blockdir "/" safe "_" start ".nx"; buf = ""; next }
        /^```nyx[ \t]*$/         { intag = "nyx";      start = NR; outpath = blockdir "/" safe "_" start ".nx"; buf = ""; next }
        intag != "" && /^```[ \t]*$/ {
            printf "%s", buf > outpath
            close(outpath)
            print file "\t" intag "\t" start "\t" outpath >> manifest
            intag = ""
            next
        }
        intag != "" { buf = buf $0 "\n" }
    ' "$file"
}

# has_main_fn BLOCKPATH — ¿el bloque declara un entry point real? Ancla la
# declaración (inicio de línea, `fn main`, paréntesis) en vez de un grep de
# substring — `fn maintain()` o un comentario que mencione "fn main" en
# prosa NO deben contar como entry point.
has_main_fn() {
    grep -qE '^[[:space:]]*(pub[[:space:]]+)?fn[[:space:]]+main[[:space:]]*\(' "$1"
}

# compile_block BLOCKPATH — cp a script.nx, corre el bootstrap (semántico
# ON) + clang. Devuelve 0 si compila y linkea, 1 si no (no CORRE el
# binario: algunos ejemplos sembrados son servidores bloqueantes).
compile_block() {
    local blockpath="$1"
    cp "$blockpath" script.nx
    if ./nyx_bootstrap >/tmp/blk_c.log 2>&1 && clang -O2 script.ll $RT $LIBS -o script_bin 2>/tmp/blk_cl.log; then
        return 0
    fi
    return 1
}

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR" "$BLOCKDIR" 2>/dev/null' EXIT
AUTOTEST_OK=1

cat > "$TMPDIR/fixture.md" <<'EOF'
Texto de ejemplo.

```nyx-fragment
let x: int = 1  // fragmento sin main — se debe SALTEAR
```

```nyx
fn main() -> int {
    return 0
}
```

```nyx
let sin_entry: int = 1   // bloque nyx sin entry point — debe FALLAR
```

```nyx
fn main() -> int {
    let x: int = "esto no tipa"   // roto a propósito — debe FALLAR al compilar
    return 0
}
```
EOF

BLOCKDIR="$(mktemp -d)"
MANIFEST_AT="$BLOCKDIR/manifest.tsv"
: > "$MANIFEST_AT"
extract_blocks "$TMPDIR/fixture.md" "$BLOCKDIR" "$MANIFEST_AT"

n_blocks="$(wc -l < "$MANIFEST_AT" | tr -d ' ')"
if [ "$n_blocks" != "4" ]; then
    printf "  ✗ autotest roto: se esperaban 4 bloques extraídos del fixture, salieron %s\n" "$n_blocks"
    AUTOTEST_OK=0
fi

frag_ok=0; nomain_caught=0; broken_caught=0; good_ok=0
while IFS=$'\t' read -r f tag start blockpath; do
    if [ "$tag" = "fragment" ]; then
        frag_ok=1
        continue
    fi
    if ! has_main_fn "$blockpath"; then
        nomain_caught=1
        continue
    fi
    if compile_block "$blockpath"; then
        good_ok=1
    else
        broken_caught=1
    fi
done < "$MANIFEST_AT"

if [ "$frag_ok" -eq 1 ] && [ "$nomain_caught" -eq 1 ] && [ "$broken_caught" -eq 1 ] && [ "$good_ok" -eq 1 ]; then
    printf "  ✓ autotest del detector de bloques (fragmento salteado, sin-main cazado, roto cazado, sano compila)\n"
else
    printf "  ✗ autotest ROTO — no confiar en los checks de abajo (fragment=%s nomain=%s broken=%s good=%s)\n" \
        "$frag_ok" "$nomain_caught" "$broken_caught" "$good_ok"
    AUTOTEST_OK=0
fi
rm -rf "$BLOCKDIR"

# has_main_fn no puede ser un grep de substring: `fn maintain()` (o un
# comentario en prosa que mencione "fn main") no es un entry point.
printf 'fn maintain() -> int { return 0 }\n// no llames a esto "fn main" en un comentario\n' > "$TMPDIR/no_entry.nx"
if has_main_fn "$TMPDIR/no_entry.nx"; then
    printf "  ✗ autotest de has_main_fn ROTO — «fn maintain()» clasificó como entry point (substring match)\n"
    AUTOTEST_OK=0
else
    printf "  ✓ autotest de has_main_fn (ancla la declaración: «fn maintain()» NO cuenta)\n"
fi
if [ "$AUTOTEST_OK" -eq 0 ]; then
    exit 1
fi

# ── Checks reales sobre todo lo sembrado ─────────────────────────────────
BLOCKDIR="$(mktemp -d)"
MANIFEST="$BLOCKDIR/manifest.tsv"
: > "$MANIFEST"
mapfile -t ALL_SEEDED < <(seeded_files_for_all_langs "${LANGS[@]}")
for f in "${ALL_SEEDED[@]}"; do
    [ -f "$f" ] || continue
    extract_blocks "$f" "$BLOCKDIR" "$MANIFEST"
done

n_total="$(wc -l < "$MANIFEST" | tr -d ' ')"
if [ "$n_total" -eq 0 ]; then
    printf "  · ningún bloque \`\`\`nyx/\`\`\`nyx-fragment en lo sembrado\n"
fi

n_compiled=0; n_skipped=0
while IFS=$'\t' read -r f tag start blockpath; do
    if [ "$tag" = "fragment" ]; then
        n_skipped=$((n_skipped + 1))
        continue
    fi
    if ! has_main_fn "$blockpath"; then
        printf "  ✗ %s:%s bloque \`\`\`nyx sin \`fn main\` — re-etiquetalo \`\`\`nyx-fragment o agregale un main\n" "$f" "$start"
        FAIL=$((FAIL + 1))
        continue
    fi
    if compile_block "$blockpath"; then
        printf "  ✓ %s:%s compila\n" "$f" "$start"
        n_compiled=$((n_compiled + 1))
    else
        msg="$(grep -iE 'error|NYX[0-9]' /tmp/blk_c.log /tmp/blk_cl.log 2>/dev/null | head -1)"
        printf "  ✗ %s:%s NO compila — %s\n" "$f" "$start" "${msg:-(sin mensaje reconocible, ver /tmp/blk_c.log)}"
        FAIL=$((FAIL + 1))
    fi
done < "$MANIFEST"

rm -f script.nx script.ll script_bin
rm -rf "$BLOCKDIR"

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  bloques sembrados: FALLÓ ($FAIL problema(s) de $n_total bloques; $n_compiled compilaron, $n_skipped fragmentos salteados)"
    exit 1
fi
echo "  bloques sembrados: PASS ($n_compiled compilaron, $n_skipped fragmentos salteados, $n_total totales)"
exit 0
