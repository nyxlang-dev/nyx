#!/usr/bin/env python3
"""Extractor del catálogo de builtins globales. Lo invoca gen_builtins_index.sh,
que documenta el porqué; acá está el cómo.

Salida: una línea por builtin, campos separados por TAB (formato estable, fácil
de parsear desde Nyx sin un lector de TOML/JSON):

    builtin<TAB>nombre<TAB>aridad<TAB>categoría<TAB>descripción

La descripción puede ser vacía. La categoría cae a "Otros".
"""
import re
import sys

SEMANTIC = "compiler/semantic.nx"
LLM = "LLM.md"

# Las categorías de LLM.md §4 mapeadas a las de CAPABILITIES.md, para que el
# índice hable UN solo vocabulario. Lo que no esté acá cae a "Otros".
# TERCERA red: el PREFIJO del nombre. No es adivinar — un builtin llamado
# `math_sqrt` pertenece a Matemática por su nombre, no por dónde lo mencionen.
# Cubre a los que LLM.md §4 no nombra (57 de 191 al 2026-09-13), que si no
# caerían todos en «Otros», que es tanto como no estar en el índice.
# El orden importa: gana el primer prefijo que matchee.
PREFIJOS = [
    ("math_", "Matemática"),
    ("datetime_", "Tiempo"),
    ("time", "Tiempo"),
    ("monotonic_", "Tiempo"),
    ("file_", "Archivos & I/O"),
    ("atomic_", "Concurrencia"),
    ("mutex_", "Concurrencia"),
    ("rwlock_", "Concurrencia"),
    ("condvar_", "Concurrencia"),
    ("channel_", "Concurrencia"),
    ("thread_", "Concurrencia"),
    ("go_", "Concurrencia"),
    ("__go_", "Concurrencia"),
    ("tcp_", "Red"),
    ("udp_", "Red"),
    ("tls_", "Red"),
    ("http_", "Red"),
    ("https_", "Red"),
    ("net_", "Red"),
    ("socket", "Red"),
    ("json_", "Serialización & datos"),
    ("str_", "Strings & texto"),
    ("string_", "Strings & texto"),
    ("term_", "Tooling & CLI"),
    ("raw_mode_", "Tooling & CLI"),
    ("signal_", "Tooling & CLI"),
    ("sha", "Cripto & seguridad"),
    ("hmac", "Cripto & seguridad"),
    ("pbkdf2", "Cripto & seguridad"),
    ("crc32", "Cripto & seguridad"),
    ("csprng", "Cripto & seguridad"),
    ("constant_time", "Cripto & seguridad"),
    ("regex_", "Strings & texto"),
    ("resp_", "Serialización & datos"),
    ("volatile_", "Memoria"),
]

# Los que no tienen prefijo útil y sí tienen hogar evidente. Lista corta y
# EXPLÍCITA a propósito: lo que no está acá se queda en «Otros», que es una
# respuesta honesta — mejor que inventarle una categoría a `format` o a `run`.
EXPLICITOS = {
    "mkdir": "Archivos & I/O",
    "readdir": "Archivos & I/O",
    "remove_file": "Archivos & I/O",
    "rename_file": "Archivos & I/O",
    "fsync": "Archivos & I/O",
    "fdatasync": "Archivos & I/O",
    "alloc": "Memoria",
    "free": "Memoria",
    "getpeername": "Red",
}

CATEGORIAS = {
    "I/O": "Archivos & I/O",
    "Conversion": "Strings & texto",
    "JSON": "Serialización & datos",
    "Process / Environment": "Tooling & CLI",
    "Networking": "Red",
    "TLS / HTTPS": "Red",
    "Threading / Concurrency": "Concurrencia",
    "Time": "Tiempo",
    "Math": "Matemática",
    "Crypto": "Cripto & seguridad",
    "Terminal (for CLI apps)": "Tooling & CLI",
}


def builtins_de_semantic(ruta):
    """name -> arity, desde las llamadas scope_declare_fn(..., "builtin", N)."""
    pat = re.compile(r'scope_declare_fn\("([A-Za-z_][A-Za-z_0-9]*)",\s*"builtin",\s*(-?\d+)\)')
    fuera = {}
    for linea in open(ruta):
        if linea.lstrip().startswith("//"):
            continue
        m = pat.search(linea)
        if m:
            fuera[m.group(1)] = int(m.group(2))
    return fuera


def docs_de_llm(ruta):
    r"""name -> (categoría, descripción) leyendo la §4 de LLM.md.

    Dos cosas que el formato real exige y que una lectura línea-a-línea no da:

    - Un bullet puede listar VARIOS builtins antes del guión
      (`- \`sha256(s)\`, \`md5(s)\`, \`hmac_sha256(k, d)\` — devuelven hex`).
      Tomar solo el primero dejaba a `md5` y `hmac_sha256` sin categoría ni
      descripción — justo la sección que originó el reporte de fricción.
    - Un bullet puede ENVOLVER en varias líneas, y cortar en el salto partía la
      descripción a mitad de frase.

    Por eso primero se reconstruyen los bullets completos y después se parsean.
    """
    lineas = open(ruta).read().split("\n")
    dentro = False
    cat_actual = "Otros"
    fuera = {}
    bullets = []          # (categoría, texto completo del bullet)
    acum = None

    def cerrar():
        if acum is not None:
            bullets.append((acum[0], " ".join(acum[1]).strip()))

    for linea in lineas:
        if linea.startswith("## 4."):
            dentro = True
            continue
        if dentro and linea.startswith("## ") and not linea.startswith("## 4."):
            break
        if not dentro:
            continue
        if linea.startswith("### "):
            cerrar()
            acum = None
            bruta = linea[4:].strip().split("—")[0].strip()
            cat_actual = CATEGORIAS.get(bruta, "Otros")
            continue
        if linea.lstrip().startswith("- "):
            cerrar()
            acum = (cat_actual, [linea.strip()[2:]])
        elif acum is not None and linea.strip() and not linea.startswith("```"):
            acum[1].append(linea.strip())
        else:
            cerrar()
            acum = None
    cerrar()

    # Un bullet tiene la forma: <cabeza de nombres> <separador> <descripción>,
    # donde la cabeza es una corrida de `nombre(args)` entre backticks unidos por
    # comas o barras, y el separador puede ser —, -, → o ->. Hay bullets SIN
    # separador (`- \`read_file(path)\` → String`, o una lista pelada de nombres):
    # esos igual registran sus nombres con su categoría, porque el índice
    # responde «¿existe?» antes que «¿cómo se usa?». Una versión anterior los
    # descartaba enteros y mandaba 86 builtins a «Otros».
    item_pat = re.compile(r"`([^`]+)`")
    nombre_pat = re.compile(r"^([A-Za-z_][A-Za-z_0-9]*)\s*\(")
    for cat, texto in bullets:
        nombres = []
        pos = 0
        for m in item_pat.finditer(texto):
            entre = texto[pos:m.start()]
            # entre dos nombres de la cabeza solo puede haber separadores
            if pos > 0 and entre.strip(" ,/y·") != "":
                break
            nm = nombre_pat.match(m.group(1).strip())
            if not nm:
                if pos == 0:
                    continue     # el bullet arranca con otra cosa; seguir buscando
                break
            nombres.append(nm.group(1))
            pos = m.end()
        if not nombres:
            continue
        desc = texto[pos:].strip()
        # sacar el separador inicial, cualquiera de las cuatro formas
        desc = re.sub(r"^\s*(—|->|→|-)\s*", "", desc).strip()
        desc = desc.rstrip(",;")
        corte = re.split(r"(?<=[.;])\s", desc, maxsplit=1)
        desc = corte[0].strip() if corte else ""
        desc = desc.replace("\t", " ").replace("|", "/")
        if len(desc) > 200:
            desc = desc[:197].rstrip() + "..."
        for n in nombres:
            if n not in fuera:
                fuera[n] = (cat, desc)

    # SEGUNDA PASADA — recuperación de CATEGORÍA, sin descripción.
    #
    # La primera pasada es deliberadamente estricta: solo toma los nombres de la
    # CABEZA del bullet, para no atribuirle una descripción a un builtin que
    # apenas se menciona de pasada dentro de la descripción de otro. Eso da
    # descripciones correctas y deja muchos builtins sin categoría, porque §4
    # también los nombra dentro de bloques de código y de prosa.
    #
    # Acá se recupera SOLO la categoría: si un builtin todavía sin clasificar
    # aparece en alguna sección de §4, hereda la categoría de esa sección. Gana
    # la primera mención. Es la diferencia entre 104 builtins en «Otros» y ~40:
    # una categoría aproximada ayuda a encontrar; «Otros» no ayuda a nada.
    cat_por_seccion = "Otros"
    dentro = False
    for linea in lineas:
        if linea.startswith("## 4."):
            dentro = True
            continue
        if dentro and linea.startswith("## ") and not linea.startswith("## 4."):
            break
        if not dentro:
            continue
        if linea.startswith("### "):
            bruta = linea[4:].strip().split("—")[0].strip()
            cat_por_seccion = CATEGORIAS.get(bruta, "Otros")
            continue
        if cat_por_seccion == "Otros":
            continue
        for m in re.finditer(r"\b([A-Za-z_][A-Za-z_0-9]*)\s*\(", linea):
            n2 = m.group(1)
            if n2 not in fuera:
                fuera[n2] = (cat_por_seccion, "")
    return fuera


def main():
    reg = builtins_de_semantic(SEMANTIC)
    if not reg:
        print("gen_builtins_index: no se extrajo ningún builtin de "
              f"{SEMANTIC} — ¿cambió la forma de scope_declare_fn?", file=sys.stderr)
        return 1
    docs = docs_de_llm(LLM)
    for nombre in reg:
        if docs.get(nombre, ("Otros", ""))[0] != "Otros":
            continue
        if nombre in EXPLICITOS:
            docs[nombre] = (EXPLICITOS[nombre], docs.get(nombre, ("", ""))[1])
            continue
        for pref, cat in PREFIJOS:
            if nombre.startswith(pref):
                docs[nombre] = (cat, docs.get(nombre, ("", ""))[1])
                break
    print("# ARCHIVO GENERADO — NO EDITAR A MANO.")
    print("# Regenerar con: bash scripts/gen_builtins_index.sh   (verificar: --check)")
    print("# Catálogo de los builtins GLOBALES (sin import). Fuente de verdad: las")
    print("# llamadas scope_declare_fn(..., \"builtin\", N) de compiler/semantic.nx.")
    print("# Formato: builtin<TAB>nombre<TAB>aridad<TAB>categoría<TAB>descripción")
    for nombre in sorted(reg):
        cat, desc = docs.get(nombre, ("Otros", ""))
        print("builtin\t%s\t%d\t%s\t%s" % (nombre, reg[nombre], cat, desc))
    return 0


if __name__ == "__main__":
    sys.exit(main())
