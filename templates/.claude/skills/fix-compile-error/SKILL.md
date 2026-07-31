---
name: fix-compile-error
description: Metodología para diagnosticar y arreglar errores de compilación en Nyx. Cubre lectura de diagnósticos (NYX_DIAG=json), aislamiento de casos mínimos, lectura del IR LLVM, y mapeo de síntomas a causas. Usar cuando un programa .nx no compila o da SEGV en runtime.
---

# fix-compile-error — Diagnóstico y fix de errores en Nyx

## Paso 1 — Leer el diagnóstico

```bash
# Compilación básica (muestra errores en stderr)
make compile FILE=mi_programa.nx

# Diagnósticos machine-readable (NDJSON, una línea por error)
NYX_DIAG=json make compile FILE=mi_programa.nx 2>&1 | grep '^{'

# Mensajes en español
NYX_LANG=es make compile FILE=mi_programa.nx

# Output verboso (muestra qué fase está corriendo)
NYX_VERBOSE=1 make compile FILE=mi_programa.nx
```

### Códigos de diagnóstico

**Fase parse (NYX0101–NYX0105)**:
| Código | Significado |
|--------|-------------|
| NYX0101 | Token inesperado |
| NYX0102 | Cierre faltante (`)`, `}`, `]`) |
| NYX0103 | Expresión esperada pero no encontrada |
| NYX0104 | Límite de errores alcanzado (>20 — el archivo tiene errores graves) |
| NYX0105 | Error de parse genérico |

**Fase semantic (NYX1001–NYX1020)**:
| Código | Significado |
|--------|-------------|
| NYX1001 | Variable no definida |
| NYX1002 | Función no definida |
| NYX1003 | Tipo desconocido |
| NYX1004 | Error de tipo (type mismatch) |
| NYX1005 | Método desconocido en tipo |
| NYX1006 | Return faltante en función no-void |
| NYX1007 | Match no exhaustivo |
| NYX1008 | Campo no existe en struct (did you mean?) |
| NYX1009 | Llamada a valor no callable |
| NYX1010–NYX1019 | Checks varios (binop/unop de trait, dyn compat, etc.) |
| NYX1020 | Violación de trait bound en genérico |

El campo `suggestion` en JSON contiene el identificador crudo del "did you mean".

## Paso 2 — Aislar un caso mínimo

Si el archivo tiene muchas líneas, aislar el error en un archivo pequeño:

```bash
# Crear caso mínimo
cat > /tmp/test_min.nx << 'EOF'
fn main() -> int {
    // reproducir el error aquí con el código mínimo
    return 0
}
EOF

make compile FILE=/tmp/test_min.nx 2>&1
```

Reducir hasta que el error desaparezca para identificar la línea exacta.

## Paso 3 — Leer el IR generado

```bash
make compile FILE=mi_programa.nx
# El IR queda en script.ll (o el nombre del archivo)
cat script.ll | head -100    # ver comienzo

# Para buscar una función específica en el IR:
grep -n "define.*mi_funcion" script.ll
```

El IR revela:
- Tipos reales que el codegen emite (¿`i64` donde debería ser `%nyx_string*`?)
- Instrucciones inválidas (`ptrtoint` de tipo erróneo)
- Funciones definidas vs. declaradas

## Paso 4 — Tabla de síntomas → causa → fix

### Errores de compilación (el programa no produce binario)

| Síntoma | Causa probable | Dónde buscar |
|---------|---------------|--------------|
| `NYX1005: unknown method 'X' on Array` | Typo en nombre de método | Ver LLM.md sección 3 para métodos Array |
| `NYX1005: unknown method 'X' on String` | Typo en nombre de método | LLM.md sección 3 — `length()` no `len()`, `toUpper()` no `toUpperCase()` |
| `NYX1006: missing return` | Función `-> T` sin `return` en todos los paths | Agregar `return` en branch faltante |
| `NYX1004: type mismatch` | Asignar String a int o viceversa | Revisar tipo de variable y tipo de expresión |
| `NYX1008: field 'X' does not exist` | Typo en nombre de campo de struct | El error sugiere el nombre correcto con Levenshtein |
| `NYX0101: unexpected token` en `Enum::Variant` | Usar `::` en vez de `.` | Cambiar a `Enum.Variant` |
| `NYX0101` en `{ident: v}` | Nyx no acepta identificadores como claves de map | Usar `{"ident": v}` (string literal) |
| Parse cuelga o tarda minutos | Loop infinito en parser (bug conocido en versiones <v0.16) | Actualizar; en v0.16 el parser aborta en 20 errores |

### Errores en runtime (SEGV, exit code no-zero)

| Síntoma | Causa probable | Fix |
|---------|---------------|-----|
| SEGV en `arr[i].method()` | Nyx no puede encadenar indexado + método call | `let elem: Tipo = arr[i]` + `elem.method()` en líneas separadas |
| SEGV con `Map<String, Map<...>>` | Maps anidados no son seguros en el runtime actual | Usar claves planas: `"nivel1:nivel2"` |
| SEGV en child de `fork()` | Child aloca memoria GC antes de `execvp()` | Child solo debe llamar `execvp()` sin más alocaciones |
| `charAt(i)` da valor incorrecto | `charAt` retorna `int` (byte), no `char` | Si necesitás char: `let c: char = s.charAt(i)` |
| `length()` da número raro en string UTF-8 | `length()` cuenta bytes | Para caracteres: `s.char_length()` |
| `substring(0, n)` trunca mal | Offset en bytes, no chars | Calcular offset en bytes correctamente |
| Channel produce SEGV | Channel declarado como tipo incorrecto | `let ch: Map = channel_new()` — siempre `Map` |

### Errores de linking (undefined symbol en el .ll)

| Síntoma | Causa | Fix |
|---------|-------|-----|
| `undefined symbol: nyx_XXXX` | Función del runtime no linkeada | Verificar que `runtime/XXXX.c` está en RUNTIME_SRCS del Makefile |
| `undefined symbol: llvm.XXX` | Intrinsic LLVM no soportado | Ver si la versión de LLVM instalada lo soporta |

## Paso 5 — Localizar en el compilador (para bugs del compilador)

Si el error es en el compilador mismo (no en tu código):

```bash
# Ver en qué función de codegen.nx se genera el nodo problemático
# (solo aplica si desarrollas el COMPILADOR — en un proyecto de usuario,
# si el error parece bug del compilador: reportalo con `nyx report`)

# Ver en semantic.nx qué valida ese nodo
grep -n "\"TIPO_NODO\"\|validate_NOMBRE" /home/admin/NyxLang/compiler/semantic.nx | head -20
```

Flujo canónico de fix del compilador:
1. Aislar → caso mínimo que reproduce
2. Leer IR → `make compile FILE=caso_minimo.nx`
3. Si el caso mínimo sigue fallando y parece bug del COMPILADOR → `nyx report` (genera la plantilla y la envía al equipo)
4. Proponer → describir el cambio antes de aplicarlo
5. Aplicar → cambio mínimo
6. Verificar → `make test` → 225/225 ARM64
7. Commit atómico

## Paso 6 — Verificar fix

```bash
# Compilar el caso que fallaba
make compile FILE=mi_programa.nx   # debe dar 0 errores

# Ejecutar
nyx run  # o: nyx build   (antes: make run FILE=mi_programa.nx

# Verificar que no rompiste nada más
make test   # debe dar 225/225 ARM64
```

## Referencias

- `LLM.md` — lista completa de builtins, métodos, gotchas
- `nyx report` — reporte de bugs del compilador al equipo de Nyx
- `compiler/semantic.nx` — análisis semántico y códigos de error
- `docs/SPEC.md §Structured Diagnostics` — catálogo de códigos NYX0101-NYX1020
