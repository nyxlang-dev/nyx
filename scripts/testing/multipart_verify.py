#!/usr/bin/env python3
"""Verificación EXTERNA de multipart_build (std/multipart) + try_http_post_multipart
(std/http): Python levanta un servidor HTTP local, un programa Nyx le sube un
"PDF" binario (los 256 bytes, con NUL, CR/LF y "--") más campos de texto, y el
parser de `email` del stdlib de Python (independiente de std/multipart) tiene que
ver exactamente las mismas partes, con los mismos bytes.

Uso: multipart_verify.py <raiz del repo> <programa.nx>
"""
import email
import email.policy
import http.server
import os
import subprocess
import sys
import threading

RAIZ, PROG = sys.argv[1], sys.argv[2]
PDF = b"%PDF-1.4\n" + bytes(range(256)) * 3 + b"\r\n--ABC--\r\n\r\n%%EOF"
visto = {}


class H(http.server.BaseHTTPRequestHandler):
    def do_POST(self):
        n = int(self.headers.get("Content-Length", "0"))
        cuerpo = self.rfile.read(n)
        visto["ctype"] = self.headers.get("Content-Type", "")
        visto["auth"] = self.headers.get("Authorization", "")
        visto["len_ok"] = (len(cuerpo) == n)
        msg = email.message_from_bytes(
            b"Content-Type: " + visto["ctype"].encode() + b"\r\nMIME-Version: 1.0\r\n\r\n" + cuerpo,
            policy=email.policy.HTTP,
        )
        partes = {}
        for p in msg.iter_parts():
            partes[p.get_param("name", header="content-disposition")] = (
                p.get_filename(),
                p.get_content_type() if p.get_filename() else None,
                p.get_payload(decode=True),
            )
        visto["partes"] = partes
        self.send_response(200)
        self.send_header("Content-Length", "2")
        self.end_headers()
        self.wfile.write(b"ok")

    def log_message(self, *a):
        pass


srv = http.server.HTTPServer(("127.0.0.1", 0), H)
threading.Thread(target=srv.serve_forever, daemon=True).start()
env = dict(os.environ, NYX_HOME=RAIZ, NYX_PROJECT_DIR=RAIZ, MP_URL="http://127.0.0.1:%d/upload" % srv.server_port)
r = subprocess.run(["bash", os.path.join(RAIZ, "scripts/nyx"), PROG], env=env, capture_output=True, text=True, timeout=120)
srv.shutdown()
if "ok 200" not in r.stdout:
    print("FALLO: el programa Nyx no recibió 200:\n" + r.stdout + r.stderr[-800:])
    sys.exit(1)
errores = []
p = visto.get("partes", {})
if not visto.get("ctype", "").startswith("multipart/form-data; boundary="):
    errores.append("content-type: %r" % visto.get("ctype"))
if visto.get("auth") != "Bearer secreto":
    errores.append("Authorization: %r" % visto.get("auth"))
if p.get("messaging_product", (0, 0, 0))[2] != b"whatsapp":
    errores.append("campo messaging_product")
if p.get("nota", (0, 0, 0))[2] != "línea1\r\nlínea2 -- fin".encode():
    errores.append("campo nota: %r" % (p.get("nota"),))
f = p.get("file")
if f is None or f[0] != "cotización.pdf" or f[1] != "application/pdf" or f[2] != PDF:
    errores.append("archivo: nombre/tipo/bytes distintos (%s bytes vs %d)" % (len(f[2]) if f else None, len(PDF)))
if errores:
    print("FALLO:\n  " + "\n  ".join(errores))
    sys.exit(1)
print("multipart verify: ok (parser de email de Python ve las mismas partes y los mismos bytes)")
