#!/usr/bin/env python3
# xlsx_verify.py — compara el volcado de std/xlsx («hoja|A1|tipo|texto») con lo
# que lee openpyxl (data_only=True: el valor en caché de las fórmulas) celda por
# celda. Lo llama scripts/testing/run_xlsx_verify.sh; sale 1 si hay diferencias.
# Uso: xlsx_verify.py <libro.xlsx> <volcado.txt>
import sys, datetime, openpyxl
nyx = {}
for l in open(sys.argv[2], encoding="utf-8"):
    l = l.rstrip("\n")
    if "|" not in l: continue
    h, a, k, t = l.split("|", 3)
    nyx[(h, a)] = (k, t)
wb = openpyxl.load_workbook(sys.argv[1], data_only=True)
py = {}
for ws in wb.worksheets:
    for row in ws.iter_rows():
        for c in row:
            if c.value is None: continue
            py[(ws.title, c.coordinate)] = c
malas = []
for key, c in py.items():
    v = c.value
    if key not in nyx: malas.append((key, "falta en nyx", repr(v))); continue
    k, t = nyx[key]
    if isinstance(v, bool): ok = k == "bool" and t == str(v).lower()
    elif isinstance(v, datetime.datetime):
        iso = v.date().isoformat() if v.time() == datetime.time(0) else v.isoformat(timespec="seconds")
        ok = k == "date" and t == iso
    elif isinstance(v, datetime.time): ok = k == "date" and t == v.isoformat(timespec="seconds")
    elif isinstance(v, (int, float)): ok = k == "number" and abs(float(t) - v) <= 1e-9 * max(1, abs(v))
    elif c.data_type == "e": ok = k == "error" and t == v
    else: ok = t == str(v)
    if not ok: malas.append((key, (k, t), repr(v)))
for key in nyx:
    if key not in py: malas.append((key, nyx[key], "openpyxl no la tiene"))
print(f"openpyxl: {len(py)} celdas con valor; std/xlsx: {len(nyx)}; distintas: {len(malas)}")
for m in malas[:15]: print("  ", m)
sys.exit(1 if malas else 0)
