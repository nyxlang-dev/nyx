#!/usr/bin/env python3
"""Guarda de drift: los builtins VOID que conoce semantic.nx == los que emite codegen.nx.

Nació de la fricción de nyxerp (2026-09-11): `let x: int = sleep(1)` pasaba el
checker y moría en clang con `alloca void`. El arreglo fue enseñarle a
`builtin_fn_ret` (semantic.nx) que esos builtins devuelven `ty_unit()`, y la
lista vive DUPLICADA por fuerza: codegen la tiene como 35 bloques `if name ==
"X"` que emiten `call void @...`, semantic como una tabla.

Las dos direcciones del drift NO son simétricas:
  - semantic dice void y codegen NO  → FALSO POSITIVO: el checker rechaza
    código válido. Es un error duro.
  - codegen dice void y semantic NO  → se pierde el diagnóstico para ese
    builtin y se vuelve al `alloca void`. Es un aviso.
"""
import re
import sys

CODEGEN = "compiler/codegen.nx"
SEMANTIC = "compiler/semantic.nx"


def void_builtins_de_codegen(ruta):
    """Bloques `if name == "X" ...` cuyo cuerpo retorna el marcador void.

    Se sigue la profundidad de llaves (ignorando las que viven dentro de
    strings o comentarios) para atribuir cada `return` al `if` que lo encierra
    de verdad — un grep hacia atrás toma el `if` equivocado en ramas anidadas.
    """
    src = open(ruta).read().split("\n")
    abre = re.compile(r'\bif\s+name\s*==\s*"([^"]+)"')
    todos = re.compile(r'\bname\s*==\s*"([^"]+)"')
    marcador = re.compile(r'^return\s+"void(\s+void)?"$')
    pila = []
    prof = 0
    nombres = set()
    for linea in src:
        limpia = re.sub(r'"(?:[^"\\]|\\.)*"', '""', linea)
        limpia = re.sub(r"//.*$", "", limpia)
        o, c = limpia.count("{"), limpia.count("}")
        if abre.search(linea) and o > c:
            pila.append((prof, todos.findall(linea)))
        if marcador.match(linea.strip()) and pila:
            nombres.update(pila[-1][1])
        prof += o - c
        while pila and pila[-1][0] >= prof:
            pila.pop()
    # `format` es el camino genérico de extern/user-fn con retorno void, no un
    # builtin void: su bloque envuelve el `if ret_type == "void"` de la llamada.
    nombres.discard("format")
    return nombres


def void_builtins_de_semantic(ruta):
    dentro = False
    pat = re.compile(r'^\s*if\s+name\s*==\s*"([^"]+)"\s*\{\s*return\s+ty_unit\(\)\s*\}')
    nombres = set()
    for linea in open(ruta):
        if linea.startswith("fn builtin_fn_ret("):
            dentro = True
        elif dentro and linea.startswith("}"):
            break
        elif dentro:
            m = pat.match(linea)
            if m:
                nombres.add(m.group(1))
    return nombres


def main():
    cg = void_builtins_de_codegen(CODEGEN)
    sem = void_builtins_de_semantic(SEMANTIC)
    if not cg or not sem:
        print("check_void_builtins: no se pudo extraer ninguna lista "
              f"(codegen={len(cg)}, semantic={len(sem)}) — ¿cambió la forma?")
        return 1
    sobran = sorted(sem - cg)
    faltan = sorted(cg - sem)
    rc = 0
    if sobran:
        print("check_void_builtins: ERROR — semantic.nx los declara void pero "
              "codegen.nx no los emite void (falso positivo: el checker "
              f"rechazaría código válido): {', '.join(sobran)}")
        rc = 1
    if faltan:
        print("check_void_builtins: AVISO — codegen.nx los emite void pero "
              "semantic.nx no lo sabe (vuelven al `alloca void` sin "
              f"diagnóstico): {', '.join(faltan)}")
    if rc == 0 and not faltan:
        print(f"check_void_builtins: OK — {len(cg)} builtins void sincronizados")
    return rc


if __name__ == "__main__":
    sys.exit(main())
