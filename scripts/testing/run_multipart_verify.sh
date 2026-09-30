#!/usr/bin/env bash
# run_multipart_verify.sh — verificación EXTERNA del multipart de std/http
# (arco friccion-nyxerp-0929, Task 6). test-467 hace la ida y vuelta con el
# parser propio (std/multipart); acá un servidor HTTP local en Python recibe el
# POST real de try_http_post_multipart y el parser `email` del stdlib de Python
# tiene que ver las mismas partes y los mismos bytes (binario con NUL incluido).
#
# NO es parte de make test (levanta un servidor local y necesita python3).
# SKIP limpio (exit 0) sin python3.
set -u
cd "$(dirname "$0")/../.."
ROOT="$PWD"
if ! command -v python3 > /dev/null 2>&1; then
    echo "SKIP: no hay python3"
    exit 0
fi
T="$(mktemp -d "${TMPDIR:-/tmp}/nyx-mpv-XXXXXX")"
trap 'rm -rf "$T"' EXIT
cat > "$T/subir.nx" <<'NX'
import "std/http"
import "std/multipart"

fn main() -> int {
    var pdf: String = "%PDF-1.4\n"
    var r: int = 0
    while r < 3 {
        var i: int = 0
        while i < 256 {
            pdf = pdf + chr(i)
            i = i + 1
        }
        r = r + 1
    }
    pdf = pdf + "\r\n--ABC--\r\n\r\n%%EOF"
    var partes: Array = []
    partes.push(multipart_field("messaging_product", "whatsapp"))
    partes.push(multipart_field("nota", "línea1\r\nlínea2 -- fin"))
    partes.push(multipart_file("file", "cotización.pdf", "application/pdf", pdf))
    match multipart_build(partes) {
        Result.Ok(mp) => {
            let cab: Array = ["Authorization", "Bearer secreto"]
            match try_http_post_multipart(getenv("MP_URL"), mp, cab) {
                Result.Ok(resp) => { println("ok " + int_to_string(http_status(resp))) }
                Result.Err(e) => { println("ERR " + e.msg) }
            }
        }
        Result.Err(e) => { println("ERR " + e.msg) }
    }
    return 0
}
NX
python3 "$ROOT/scripts/testing/multipart_verify.py" "$ROOT" "$T/subir.nx"
