#!/usr/bin/env bash
# run_xlsx_verify.sh — verificación EXTERNA de std/xlsx (arco std-xlsx, D-7).
#
# test-461 compara el lector contra volcados que calculó Python al generar los
# fixtures; acá se compara contra OTRO lector en vivo, y lo que escribe test-462
# se abre con openpyxl (xlsx_write_verify.py). Lectura: openpyxl lee el mismo libro
# (data_only=True, el valor en caché de las fórmulas) y cada celda con valor
# tiene que coincidir en tipo y texto (números con tolerancia de 1e-9 relativa).
# Libros: los de tests/fixtures/xlsx/ y todos los .xlsx de $NYX_XLSX_EXTRA si
# está definido — ahí van los reales de nyxerp, que NO se versionan (el espejo
# público publica tests/).
#
# NO es parte de make test: openpyxl no está en todas las máquinas. SKIP limpio
# (exit 0) si no hay un python con openpyxl. El python se elige con
# NYX_XLSX_VERIFY_PY (un venv: `python3 -m venv /tmp/xv && /tmp/xv/bin/pip
# install openpyxl`); sin la variable se prueba el python3 del sistema.
#
# Compila en un directorio temporal propio (NYX_SRC), sin tocar el script.nx
# compartido de la raíz: no necesita el candado de los runners.
set -u
cd "$(dirname "$0")/../.."
ROOT="$PWD"
PY="${NYX_XLSX_VERIFY_PY:-python3}"
if ! "$PY" -c "import openpyxl" > /dev/null 2>&1; then
    echo "SKIP: $PY no tiene openpyxl (NYX_XLSX_VERIFY_PY apunta a un venv que lo tenga)"
    exit 0
fi
T="$(mktemp -d "${TMPDIR:-/tmp}/nyx-xlsxv-XXXXXX")"
trap 'rm -rf "$T"' EXIT
cat > "$T/volcar.nx" <<'NX'
import "std/xlsx"
fn main() -> int {
    match xlsx_read(read_file(getenv("XLSX")), xlsx_read_opts()) {
        Result.Ok(libro) => {
            for h: XlsxSheet in libro.sheets {
                for fila: Array in h.rows {
                    for c: XlsxCell in fila {
                        if c.kind != "empty" {
                            println(h.name + "|" + c.addr + "|" + c.kind + "|" + c.text)
                        }
                    }
                }
            }
        }
        Result.Err(e) => {
            println("ERROR " + e.msg)
            return 1
        }
    }
    return 0
}
NX
libros=( tests/fixtures/xlsx/*.xlsx )
if [ -n "${NYX_XLSX_EXTRA:-}" ] && [ -d "$NYX_XLSX_EXTRA" ]; then
    for f in "$NYX_XLSX_EXTRA"/*.xlsx; do [ -f "$f" ] && libros+=( "$f" ); done
fi
fallos=0
for libro in "${libros[@]}"; do
    if ! XLSX="$libro" NYX_HOME="$ROOT" NYX_PROJECT_DIR="$T" bash "$ROOT/scripts/nyx" "$T/volcar.nx" > "$T/volcado.txt" 2> "$T/err.txt"; then
        echo "  ✗ $(basename "$libro"): std/xlsx no lo leyó"; sed 's/^/      /' "$T/volcado.txt" "$T/err.txt" | tail -5
        fallos=$((fallos + 1)); continue
    fi
    if out=$("$PY" scripts/testing/xlsx_verify.py "$libro" "$T/volcado.txt" 2>&1); then
        echo "  ✓ $(basename "$libro"): ${out%%;*}"
    else
        echo "  ✗ $(basename "$libro"):"; echo "$out" | sed 's/^/      /'
        fallos=$((fallos + 1))
    fi
done
# Escritura: test-462 arma el libro y openpyxl lo abre.
if XLSX_OUT="$T/escrito.xlsx" NYX_HOME="$ROOT" NYX_PROJECT_DIR="$T" bash "$ROOT/scripts/nyx" tests/compiler/stdlib-suite/test-462-xlsx-escribir.nx > "$T/w.log" 2>&1 \
   && [ -f "$T/escrito.xlsx" ] && out=$("$PY" scripts/testing/xlsx_write_verify.py "$T/escrito.xlsx" 2>&1); then
    echo "  ✓ lo que escribe std/xlsx lo abre openpyxl: valores, tipos, formatos, negrita, anchos, combinadas, paneles, autofiltro"
else
    echo "  ✗ escritura:"; { tail -5 "$T/w.log"; echo "${out:-}"; } | sed 's/^/      /'
    fallos=$((fallos + 1))
fi
[ "$fallos" -eq 0 ] || exit 1
echo "  xlsx verify: PASS"
