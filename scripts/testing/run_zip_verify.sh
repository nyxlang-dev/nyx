#!/usr/bin/env bash
# run_zip_verify.sh — verificación EXTERNA de lo que escribe std/zip (arco
# std-xlsx, Task 2). test-459 relee con el propio lector; eso no prueba que OTRO
# programa acepte el archivo. Acá un programa Nyx escribe un .zip (texto, binario,
# nombre UTF-8, entrada vacía, algo que no comprime) y dos lectores ajenos lo
# revisan: zipfile de Python (testzip = CRC de cada entrada, y el contenido byte
# a byte contra lo que se escribió) y `unzip -t` si está instalado.
#
# SKIP limpio (exit 0) sin python3. Corre dentro de `make test-stdlib`.
# Compila en un directorio temporal propio (NYX_SRC), sin tocar el script.nx
# compartido de la raíz: no necesita el candado de los runners.
#
# Uso: bash scripts/testing/run_zip_verify.sh
set -u
cd "$(dirname "$0")/../.."
ROOT="$PWD"
command -v python3 > /dev/null 2>&1 || { echo "SKIP run_zip_verify: sin python3"; exit 0; }

T="$(mktemp -d "${TMPDIR:-/tmp}/nyx-zipv-XXXXXX")"
trap 'rm -rf "$T"' EXIT

cat > "$T/escribe.nx" <<'EOF'
import "std/zip"

fn main() -> int {
    var binario: StringBuilder = StringBuilder.new()
    var i: int = 0
    while i < 4096 {
        binario.append(chr((i * 7919) % 256))
        i = i + 1
    }
    var filas: StringBuilder = StringBuilder.new()
    i = 0
    while i < 3000 {
        filas.append("fila " + int_to_string(i) + ";Proveedor " + int_to_string(i % 13) + ";100,00\n")
        i = i + 1
    }
    var w: ZipWriter = zip_writer()
    w.add("xl/worksheets/sheet1.xml", filas.to_string())
    w.add("binario.bin", binario.to_string())
    w.add("año/cañón.txt", "ñandú")
    w.add("vacio.txt", "")
    w.add("x", "x")
    write_file(getenv("ZIPV_OUT"), w.finish())
    return 0
}
EOF

if ! ZIPV_OUT="$T/salida.zip" NYX_HOME="$ROOT" NYX_PROJECT_DIR="$T" bash "$ROOT/scripts/nyx" "$T/escribe.nx" > "$T/build.log" 2>&1; then
    echo "  ✗ run_zip_verify: no compiló o no corrió el escritor"
    sed 's/^/      /' "$T/build.log" | tail -8
    exit 1
fi

fallos=0
if python3 - "$T/salida.zip" <<'EOF'
import sys, zipfile
z = zipfile.ZipFile(sys.argv[1])
malo = z.testzip()
assert malo is None, f"CRC malo en {malo}"
binario = bytes((i * 7919) % 256 for i in range(4096))
filas = "".join(f"fila {i};Proveedor {i % 13};100,00\n" for i in range(3000)).encode()
esperado = {"xl/worksheets/sheet1.xml": filas, "binario.bin": binario,
            "año/cañón.txt": "ñandú".encode(), "vacio.txt": b"", "x": b"x"}
assert sorted(z.namelist()) == sorted(esperado), z.namelist()
for n, d in esperado.items():
    assert z.read(n) == d, f"contenido distinto en {n}"
tipos = {i.filename: i.compress_type for i in z.infolist()}
assert tipos["xl/worksheets/sheet1.xml"] == zipfile.ZIP_DEFLATED, tipos
assert tipos["x"] == zipfile.ZIP_STORED, tipos
EOF
then
    echo "  ✓ zipfile de Python: CRC, nombres (UTF-8) y contenido byte a byte"
else
    echo "  ✗ zipfile de Python rechazó o leyó distinto el .zip de std/zip"; fallos=$((fallos + 1))
fi

if command -v unzip > /dev/null 2>&1; then
    if unzip -tq "$T/salida.zip" > "$T/unzip.log" 2>&1; then
        echo "  ✓ unzip -t: sin errores"
    else
        echo "  ✗ unzip -t:"; sed 's/^/      /' "$T/unzip.log"; fallos=$((fallos + 1))
    fi
else
    echo "  (sin unzip: solo zipfile)"
fi

[ "$fallos" -eq 0 ] || exit 1
echo "  zip verify: PASS"
