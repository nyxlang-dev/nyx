#!/usr/bin/env python3
"""pdf_verify.py — verificación EXTERNA de los PDF que arma std/pdf.

Capa terciaria de la spec std-pdf (D-6): no es dependencia de `make test` (las
herramientas no están en todas las máquinas del repo). La corre
`scripts/testing/run_pdf_verify.sh`, que arma los PDF con Nyx y apunta acá.

Por cada `<nombre>.pdf` del directorio, con su `<nombre>.expect` al lado:

  1. Un parser PROPIO de la xref (no confía en ningún lector): cada offset cae
     exactamente sobre «N 0 obj», y cada /Length llega justo a endstream.
  2. pypdf con strict=True, los warnings convertidos en error Y sus logs de
     «reparé algo» contados como falla (strict no rechaza un offset corrido:
     lo repara con un log). Páginas, MediaBox, cantidad de imágenes, y cada
     imagen Flate inflada al largo exacto que pide su diccionario (un
     /Predictor, /Colors o /Columns mal declarado da otro largo).
  3. Los /Widths de cada fuente contra DOS transcripciones de los AFM que no
     son la nuestra: pypdf y pdfminer.six.
  4. pdfminer.six extrae el texto con SUS métricas (ignora /Widths en las 14
     estándar): cada `text` sale idéntico (tildes, eñe, ¿¡, €) y cada `right`
     termina en la x pedida (±0.05 mm).
  5. pdfium (el motor de PDF de Chrome) extrae el mismo texto y ubica cada
     `right`: el origen del último glifo más su ancho cae en el margen.
  6. pdfium DIBUJA cada página y, en cada `image`, el render coincide con lo
     que Pillow ve en el archivo de imagen original (orientación EXIF aplicada,
     transparencia compuesta sobre el fondo), en el centro de cada píxel.
  7. En cada `modules` (un QR dibujado con rect), el centro de cada módulo
     sale oscuro o claro en el render de pdfium según la matriz.
  Con --render DIR deja además un PNG por página para mirarlo.

Formato del .expect (una directiva por línea, # comenta):
  pages N
  mediabox P W H          (página P desde 1, en puntos)
  text <texto exacto>
  right <x_mm> <texto>    (el texto termina en x_mm, medido desde la izquierda)
  images N                (cantidad de XObject de imagen en todo el documento)
  image P X Y W H ARCHIVO (en ese rectángulo, en mm desde arriba a la izquierda,
                           pdfium tiene que dibujar lo que Pillow ve en ARCHIVO,
                           con la transparencia compuesta sobre blanco)
  image_on_black ...      (lo mismo, compuesta sobre negro: la imagen está
                           encima de un rectángulo relleno)
  modules P X Y M F1,F2,… (matriz de módulos de M mm con la esquina en X, Y:
                           cada fila una tira de 0 y 1)

Salida: una línea por PDF («ok nombre» o «FALLA nombre: motivo»); código 1 si
algo falló, 0 si todo pasó.
"""
import logging
import os
import re
import sys
import warnings

MM = 72.0 / 25.4


def parse_expect(path):
    exp = {"text": [], "right": [], "mediabox": {}, "pages": None, "images": None, "image": [], "modules": []}
    with open(path, encoding="utf-8") as f:
        for raw in f:
            line = raw.rstrip("\n")
            if not line.strip() or line.lstrip().startswith("#"):
                continue
            kw, _, rest = line.partition(" ")
            if kw == "pages":
                exp["pages"] = int(rest)
            elif kw == "images":
                exp["images"] = int(rest)
            elif kw == "mediabox":
                p, w, h = rest.split()
                exp["mediabox"][int(p)] = (float(w), float(h))
            elif kw == "text":
                exp["text"].append(rest)
            elif kw in ("image", "image_on_black"):
                p, x, y, w, h, fname = rest.split(" ", 5)
                bg = (0, 0, 0, 255) if kw == "image_on_black" else (255, 255, 255, 255)
                exp["image"].append((int(p), float(x), float(y), float(w), float(h), fname, bg))
            elif kw == "modules":
                p, x, y, mod, rows = rest.split(" ", 4)
                exp["modules"].append((int(p), float(x), float(y), float(mod), rows.split(",")))
            elif kw == "right":
                x, _, t = rest.partition(" ")
                exp["right"].append((float(x), t))
            else:
                raise ValueError("directiva desconocida en %s: %r" % (path, line))
    return exp


def check_xref_raw(data):
    """Parser propio de la xref: no confía en ningún lector."""
    m = re.search(rb"startxref\n(\d+)\n%%EOF\n$", data)
    if not m:
        return "no termina en startxref/%%EOF"
    sx = int(m.group(1))
    if data[sx:sx + 5] != b"xref\n":
        return "startxref %d no apunta a 'xref'" % sx
    m2 = re.match(rb"xref\n0 (\d+)\n", data[sx:])
    if not m2:
        return "subsección de xref ilegible"
    n = int(m2.group(1))
    p = sx + m2.end()
    for i in range(n):
        ent = data[p + 20 * i:p + 20 * i + 20]
        if len(ent) != 20 or ent[18:20] != b" \n":
            return "entrada %d de la xref no mide 20 bytes" % i
        if i == 0:
            if ent != b"0000000000 65535 f \n":
                return "entrada 0 de la xref inválida"
            continue
        off = int(ent[0:10])
        head = ("%d 0 obj\n" % i).encode()
        if data[off:off + len(head)] != head:
            return "objeto %d: la xref dice %d y ahí no empieza '%d 0 obj'" % (i, off, i)
    for sm in re.finditer(rb"/Length (\d+) >>\nstream\n", data):
        ln = int(sm.group(1))
        end = sm.end() + ln
        if data[end:end + 10] != b"\nendstream":
            return "stream en %d: /Length %d no llega a endstream" % (sm.start(), ln)
    return None


class _Collect(logging.Handler):
    def __init__(self):
        super().__init__(logging.WARNING)
        self.records = []

    def emit(self, record):
        self.records.append(record.getMessage())


def check_pypdf(path, exp):
    # pypdf REPARA en silencio (con un log, no un warning ni una excepción)
    # cosas que strict=True no rechaza: un offset de la xref corrido un byte
    # sale «Object ID 5,0 ref repaired» y el archivo abre igual. Medido al
    # escribir este script (sabotaje del arco std-pdf). Por eso cualquier log
    # de pypdf de nivel WARNING o más cuenta como falla.
    col = _Collect()
    lg = logging.getLogger("pypdf")
    lg.addHandler(col)
    try:
        err = _check_pypdf(path, exp)
    finally:
        lg.removeHandler(col)
    if err:
        return err
    if col.records:
        return "pypdf avisó: %s" % "; ".join(col.records[:3])
    return None


def _check_pypdf(path, exp):
    import pypdf
    with warnings.catch_warnings():
        warnings.simplefilter("error")
        r = pypdf.PdfReader(path, strict=True)
        # Forzar la lectura de TODOS los objetos de la xref: en strict, un
        # offset corrido es PdfReadError.
        for num in range(1, int(r.trailer["/Size"])):
            if r.get_object(num) is None:
                return "pypdf: el objeto %d de la xref no se pudo leer" % num
        n = len(r.pages)
        if exp["pages"] is not None and n != exp["pages"]:
            return "pypdf: %d páginas, se esperaban %d" % (n, exp["pages"])
        for p, (w, h) in exp["mediabox"].items():
            mb = r.pages[p - 1].mediabox
            if abs(float(mb.width) - w) > 0.001 or abs(float(mb.height) - h) > 0.001:
                return "pypdf: MediaBox de la página %d es %sx%s, se esperaba %sx%s" % (p, mb.width, mb.height, w, h)
        imgs = 0
        for pg in r.pages:
            res = pg.get("/Resources")
            if res is None:
                continue
            xo = res.get_object().get("/XObject")
            if xo is not None:
                imgs = len(xo.get_object())
            # las páginas comparten recursos: contar una vez
            break
        if exp["images"] is not None and imgs != exp["images"]:
            return "pypdf: %d imágenes, se esperaban %d" % (imgs, exp["images"])
        # Decodificar cada imagen: el predictor/paleta/máscara tienen que ser
        # coherentes con el tamaño declarado (pypdf los aplica).
        if imgs:
            for name, obj in r.pages[0]["/Resources"]["/XObject"].items():
                o = obj.get_object()
                for img in [o] + ([o["/SMask"].get_object()] if "/SMask" in o else []):
                    err = _check_flate_image(name, img)
                    if err:
                        return err
    return None


def _check_flate_image(name, o):
    """Una imagen Flate (con o sin predictor) tiene que inflar a EXACTAMENTE
    alto x bytes por fila: pypdf aplica el predictor con los /Colors,
    /BitsPerComponent y /Columns declarados, así que uno mal declarado da otro
    largo (o una excepción)."""
    if o.get("/Filter") != "/FlateDecode":
        return None
    data = o.get_data()
    cs = o["/ColorSpace"]
    if isinstance(cs, list):
        ncomp = 1  # [/Indexed ...]
    else:
        ncomp = {"/DeviceGray": 1, "/DeviceRGB": 3}[cs]
    w, h, bpc = int(o["/Width"]), int(o["/Height"]), int(o["/BitsPerComponent"])
    want = h * ((w * ncomp * bpc + 7) // 8)
    if len(data) != want:
        return "pypdf: la imagen %s infla a %d bytes y su diccionario pide %d" % (name, len(data), want)
    return None


def extract_lines(path):
    from pdfminer.high_level import extract_pages
    from pdfminer.layout import LTTextContainer, LTTextLine, LAParams
    lines = []
    for page_no, page in enumerate(extract_pages(path, laparams=LAParams(char_margin=0.5, line_margin=0.1))):
        for el in page:
            if isinstance(el, LTTextContainer):
                for ln in el:
                    if isinstance(ln, LTTextLine):
                        lines.append((page_no + 1, ln.get_text().rstrip("\n"), ln.x0, ln.x1))
    return lines


def check_pdfminer(path, exp):
    lines = extract_lines(path)
    texts = [t for (_, t, _, _) in lines]
    for want in exp["text"]:
        if want not in texts:
            return "pdfminer: no salió la línea %r (salieron: %r)" % (want, texts[:40])
    for x_mm, want in exp["right"]:
        # pdfminer ubica los glifos de las 14 estándar con SUS métricas (ignora
        # /Widths: pdffont.PDFType1Font), que es lo que hace útil esta medida:
        # es una transcripción de los AFM que no es la nuestra. Pero la suya es
        # la de 1997, sin €: lo mide 0 y un renglón con € le termina 0.556 em
        # antes. Esos renglones los miden pdfium y check_font_widths.
        if "€" in want:
            continue
        hit = [l for l in lines if l[1] == want]
        if not hit:
            return "pdfminer: no salió %r para medir su borde derecho" % want
        for h in hit:
            x1_mm = h[3] / MM
            if abs(x1_mm - x_mm) > 0.05:
                return "pdfminer: %r termina en %.2f mm, se esperaba %.2f" % (want, x1_mm, x_mm)
    return None


def core_width(basefont, ch):
    """Ancho AFM (milésimas de em) según pypdf, que transcribe los AFM Core14
    por su cuenta. El € sí está (pdfminer no lo trae)."""
    from pypdf._codecs.core_font_metrics import CORE_FONT_METRICS
    return CORE_FONT_METRICS[basefont].character_widths[ch]


def check_font_widths(path):
    """Los /Widths que std/pdf escribe en cada fuente, contra DOS transcripciones
    de los AFM de Adobe que no son la nuestra: pypdf (los 217 glifos, € incluido)
    y pdfminer.six (todos menos el €, que sus AFM de 1997 no traen)."""
    import pypdf
    from pdfminer.fontmetrics import FONT_METRICS
    r = pypdf.PdfReader(path)
    seen = set()
    for pg in r.pages:
        fonts = pg["/Resources"].get_object().get("/Font")
        if fonts is None:
            continue
        for _, ref in fonts.get_object().items():
            f = ref.get_object()
            base = f["/BaseFont"][1:]
            if base in seen:
                continue
            seen.add(base)
            if int(f["/FirstChar"]) != 32 or int(f["/LastChar"]) != 255:
                return "fuente %s: /FirstChar /LastChar no son 32..255" % base
            ws = [int(w) for w in f["/Widths"]]
            if len(ws) != 224:
                return "fuente %s: /Widths tiene %d anchos, no 224" % (base, len(ws))
            for i, w in enumerate(ws):
                b = 32 + i
                if b == 0xA0:
                    ch = " "
                elif b == 0xAD:
                    ch = "-"
                else:
                    try:
                        ch = bytes([b]).decode("cp1252")
                    except UnicodeDecodeError:
                        ch = None
                if ch is None or b == 0x7F:
                    if w != 0:
                        return "fuente %s: el byte %#x no tiene glifo y mide %d" % (base, b, w)
                    continue
                if w != core_width(base, ch):
                    return "fuente %s: %r mide %d y pypdf dice %d" % (base, ch, w, core_width(base, ch))
                if ch != "€" and w != FONT_METRICS[base][1][ch]:
                    return "fuente %s: %r mide %d y pdfminer dice %d" % (base, ch, w, FONT_METRICS[base][1][ch])
    return None


def check_pdfium(path, exp):
    """El mismo texto, extraído por pdfium, y dónde ubica pdfium cada renglón
    alineado a la derecha: el ORIGEN del último carácter (donde pdfium decidió
    ponerlo tras avanzar por todos los anteriores) más su ancho AFM según pypdf
    tiene que caer en el margen. No se usa la caja del glifo: la tinta de un
    sustituto puede pasarse del avance (el € de la Helvetica de pdfium se pasa
    0.35 mm) sin que eso mueva nada en la línea."""
    import ctypes
    import pypdfium2 as pdfium
    import pypdfium2.raw as praw
    doc = pdfium.PdfDocument(path)
    full = []
    info = []
    for i in range(len(doc)):
        tp = doc[i].get_textpage()
        t = tp.get_text_range()
        for k, ch in enumerate(t):
            full.append(ch)
            info.append((tp, k))
        full.append("\n")
        info.append(None)
    joined = "".join(full)
    lines = joined.replace("\r", "").split("\n")
    # pdfium junta en un renglón todo lo que comparte línea base (la etiqueta
    # y el valor de un formulario, las celdas de una fila), separado por
    # espacios: acá el texto tiene que aparecer como PALABRAS enteras de un
    # renglón. La igualdad de renglón exacta la exige pdfminer.
    def in_line(want, line):
        at = line.find(want)
        while at >= 0:
            end = at + len(want)
            if (at == 0 or line[at - 1] == " ") and (end == len(line) or line[end] == " "):
                return True
            at = line.find(want, at + 1)
        return False
    for want in exp["text"]:
        if not any(in_line(want, ln) for ln in lines):
            return "pdfium: no salió la línea %r" % want
    buf = ctypes.create_string_buffer(256)
    flags = ctypes.c_int()
    for x_mm, want in exp["right"]:
        at = joined.find(want)
        found = 0
        while at >= 0:
            end = at + len(want)
            if (end >= len(joined) or joined[end] in "\r\n ") and (at == 0 or joined[at - 1] in "\r\n "):
                found += 1
                tp, k = info[end - 1]
                ox = ctypes.c_double()
                oy = ctypes.c_double()
                praw.FPDFText_GetCharOrigin(tp.raw, k, ox, oy)
                size = praw.FPDFText_GetFontSize(tp.raw, k)
                n = praw.FPDFText_GetFontInfo(tp.raw, k, buf, 256, flags)
                font = buf.raw[:max(n - 1, 0)].decode()
                right = (ox.value + core_width(font, want[-1]) * size / 1000.0) / MM
                if abs(right - x_mm) > 0.05:
                    return "pdfium: %r termina en %.2f mm, se esperaba %.2f" % (want, right, x_mm)
            at = joined.find(want, at + 1)
        if not found:
            return "pdfium: no salió %r para medir su borde derecho" % want
    return None


SCALE = 150 / 72  # píxeles de render por punto


def check_images(path, exp):
    """Cada `image` del .expect: pdfium dibujó en ese rectángulo lo mismo que
    Pillow ve en el archivo de imagen (con la orientación EXIF aplicada y la
    transparencia compuesta sobre el fondo). Se mide en el centro de cada píxel
    de la imagen (hasta 16 x 16 muestras): un canal cambiado, una paleta mal
    armada, un predictor PNG mal declarado, una rotación al revés o una máscara
    invertida dan colores que no coinciden."""
    if not exp["image"]:
        return None
    import pypdfium2 as pdfium
    from PIL import Image, ImageOps
    doc = pdfium.PdfDocument(path)
    pages = {}
    base = os.path.dirname(path)
    for (p, x, y, w, h, fname, bg) in exp["image"]:
        if p not in pages:
            pages[p] = doc[p - 1].render(scale=SCALE).to_pil().convert("RGB")
        page = pages[p]
        src = Image.open(os.path.join(base, fname))
        src = ImageOps.exif_transpose(src)
        rgba = src.convert("RGBA")
        under = Image.new("RGBA", rgba.size, bg)
        ref = Image.alpha_composite(under, rgba).convert("RGB")
        dw, dh = ref.size
        mm_px = SCALE * MM
        x0, y0 = x * mm_px, y * mm_px
        bw, bh = w * mm_px, h * mm_px
        # Solo se compara una imagen AMPLIADA (cada píxel suyo cubre al menos
        # 2 x 2 del render): reducida, el visor promedia vecinos y un borde
        # suavizado da otro color sin que nada esté mal.
        if bw / dw < 2 or bh / dh < 2:
            return ("imagen %s: se dibuja reducida (%.1f píxeles de render por píxel); "
                    "la directiva image necesita al menos 2" % (fname, min(bw / dw, bh / dh)))
        nx, ny = min(dw, 16), min(dh, 16)
        worst = 0
        for j in range(ny):
            for i in range(nx):
                sx = int((i + 0.5) * dw / nx)
                sy = int((j + 0.5) * dh / ny)
                want = ref.getpixel((sx, sy))
                px = int(x0 + (sx + 0.5) * bw / dw)
                py = int(y0 + (sy + 0.5) * bh / dh)
                got = page.getpixel((px, py))
                d = max(abs(a - b) for a, b in zip(want, got))
                worst = max(worst, d)
                if d > 24:
                    return ("imagen %s: en el píxel (%d,%d) Pillow ve %s y pdfium dibujó %s"
                            % (fname, sx, sy, want, got))
    return None


def check_modules(path, exp):
    """Cada `modules`: una matriz (un QR) dibujada con rect, módulo a módulo.
    pdfium dibuja la página a 4 píxeles por punto y el centro de cada módulo
    tiene que ser oscuro donde la matriz dice 1 y claro donde dice 0: prueba
    que el dibujo (posiciones, volteo, módulos contiguos) no corrió ni perdió
    ninguno."""
    if not exp["modules"]:
        return None
    import pypdfium2 as pdfium
    doc = pdfium.PdfDocument(path)
    scale = 4.0
    for (p, x, y, mod, rows) in exp["modules"]:
        page = doc[p - 1].render(scale=scale).to_pil().convert("L")
        mm_px = scale * MM
        for r, row in enumerate(rows):
            for c, bit in enumerate(row):
                px = int((x + (c + 0.5) * mod) * mm_px)
                py = int((y + (r + 0.5) * mod) * mm_px)
                v = page.getpixel((px, py))
                if (bit == "1" and v > 80) or (bit == "0" and v < 175):
                    return "módulo (%d,%d) debía ser %s y el render da %d" % (r, c, "oscuro" if bit == "1" else "claro", v)
    return None


def render(path, outdir):
    import pypdfium2 as pdfium
    doc = pdfium.PdfDocument(path)
    base = os.path.splitext(os.path.basename(path))[0]
    for i in range(len(doc)):
        page = doc[i]
        img = page.render(scale=150 / 72).to_pil()
        img.save(os.path.join(outdir, "%s-p%d.png" % (base, i + 1)))
    return None


def main(argv):
    if len(argv) < 2:
        print("uso: pdf_verify.py DIR [--render OUTDIR]")
        return 2
    d = argv[1]
    outdir = None
    if "--render" in argv:
        outdir = argv[argv.index("--render") + 1]
        os.makedirs(outdir, exist_ok=True)
    fails = 0
    names = sorted(f for f in os.listdir(d) if f.endswith(".pdf"))
    if not names:
        print("FALLA: no hay PDF en %s" % d)
        return 1
    for name in names:
        path = os.path.join(d, name)
        expf = path[:-4] + ".expect"
        exp = parse_expect(expf) if os.path.exists(expf) else parse_expect(os.devnull)
        with open(path, "rb") as f:
            data = f.read()
        err = None
        try:
            err = (check_xref_raw(data) or check_pypdf(path, exp) or check_font_widths(path)
                   or check_pdfminer(path, exp) or check_pdfium(path, exp)
                   or check_images(path, exp) or check_modules(path, exp))
            if not err and outdir:
                err = render(path, outdir)
        except Exception as e:  # noqa: BLE001
            err = "%s: %s" % (type(e).__name__, e)
        if err:
            fails += 1
            print("FALLA %s: %s" % (name, err))
        else:
            print("ok %s" % name)
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
