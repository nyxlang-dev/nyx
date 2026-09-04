# Arreglar un error de compilación

<!-- template: 1 -->

Método para diagnosticar y arreglar un programa que no compila — o que compila y después
falla en tiempo de ejecución. Lee el diagnóstico, aísla un caso mínimo, lee el IR generado,
mapea el síntoma a la causa. Las trampas viven en `AGENTS.md` (sección «Trampas»); esta
guía las cita por id.

## Paso 1 — Leer el diagnóstico

```bash
nyx check                      # solo parse + tipos: lo más rápido, sale distinto de cero ante un error
nyx build                      # build completo (compilar + linkear)
NYX_DIAG=json nyx build 2>&1 | grep '^{'   # un objeto JSON por error, para herramientas
NYX_LANG=es nyx build          # mensajes del compilador en español
NYX_VERBOSE=1 nyx build        # muestra qué fase está corriendo
```

Cada diagnóstico trae un código, un archivo y una línea, y muchas veces un «did you mean».
Léelo antes de cambiar nada: el código solo ya suele nombrar el arreglo.

### Fase parse (NYX0101–NYX0106)

| Código | Significado |
|--------|-------------|
| NYX0101 | Token inesperado |
| NYX0102 | Cierre faltante (`)`, `}`, `]`) |
| NYX0103 | Se esperaba una expresión y no apareció |
| NYX0104 | Límite de errores alcanzado (>20 — el archivo está muy roto) |
| NYX0105 | Error de parse genérico |
| NYX0106 | La clave de un map literal no es String |

### Fase semantic (NYX1001–NYX1021)

| Código | Significado |
|--------|-------------|
| NYX1001 | Variable no definida |
| NYX1002 | Función no definida |
| NYX1003 | Tipo desconocido |
| NYX1004 | Error de tipo (type mismatch) |
| NYX1005 | Método desconocido en el tipo |
| NYX1006 | Falta el return en una función no-void |
| NYX1007 | Match no exhaustivo |
| NYX1008 | El campo no existe en el struct (did you mean?) |
| NYX1009 | Llamada a un valor no invocable |
| NYX1010–NYX1019 | Chequeos varios (binop/unop de trait, compatibilidad dyn…) |
| NYX1020 | Violación de trait bound en un genérico |
| NYX1021 | `await` de una función que retorna `float` (bloqueado) |

En la salida JSON, el campo `suggestion` trae el identificador crudo del «did you mean».

## Paso 2 — Aislar un caso mínimo

Si el archivo es largo, reproduce el error en el programa más chico que siga fallando:

```bash
cat > /tmp/min.nx << 'EOF'
fn main() -> int {
    // reproduce el error acá, con el menor código posible
    return 0
}
EOF

nyx /tmp/min.nx
```

Corta por mitades hasta que el error desaparezca — lo último que sacaste es la causa. Un
caso mínimo es además exactamente lo que necesita un reporte de fricción (ver
`docs/nyx/guides/report-friction.md`).

## Paso 3 — Leer el IR generado

El driver del compilador escribe el IR de LLVM al lado del fuente que recibe:

```bash
NYX_SRC="$PWD/min.nx" "${NYX_HOME:-$HOME/.nyx}/bin/nyx"   # deja min.ll junto a min.nx
grep -n 'define .*@mi_funcion' min.ll
head -60 min.ll
```

El IR responde preguntas que el mensaje de error no responde:

- qué tipos emitió realmente el codegen (¿`i64` donde se esperaba un `%nyx_string*`?),
- si una función está definida o solamente declarada (un error de link empieza acá),
- en qué se convirtió de verdad un brazo de `match`.

En código de aplicación casi nunca hace falta. Cuando hace falta, en general estás mirando
un bug del compilador — ve a «Cuando el bug no es tuyo».

## Paso 4 — Síntoma → causa → arreglo

### No compila

| Síntoma | Causa probable | Arreglo |
|---------|---------------|-----|
| `NYX1005: unknown method 'X' on Array` | Typo en el nombre del método | Revisa la lista de métodos en `docs/nyx/LLM.md` |
| `NYX1005: unknown method 'X' on String` | Typo en el nombre del método | `length()` y no `len()`, `toUpper()` y no `toUpperCase()` |
| `NYX1006: missing return` | Una función `-> T` sin `return` en todos los caminos | Agrega el `return` que falta |
| `NYX1004: type mismatch` | Un String asignado a un int, o al revés | Compara el tipo declarado con el de la expresión |
| `NYX1008: field 'X' does not exist` | Typo en un campo de struct | El error sugiere el nombre correcto (Levenshtein) |
| `NYX0101` en `Enum::Variant` | `::` en vez de `.` | Trampa `enum-dot-not-colons` |
| `NYX0106` en `{ident: v}` | Las claves de un map deben ser literales String | Trampa `map-literal-string-keys` |
| Error de tipo en un canal | El handle es opaco y la capacidad es obligatoria | Trampa `channel-is-map` |
| Error de link que menciona tu `Option`/`Result` | Un struct de 2+ campos como payload | Trampa `option-struct-multifield-link` |

### Compila pero se porta mal en ejecución

| Síntoma | Causa probable | Arreglo |
|---------|---------------|-----|
| Un Map vuelve mal / crash al leer un Map anidado | El Map interno vino del retorno de una función | Trampa `nested-map-from-call` |
| `charAt(i)` compara «mal» | Retorna un int (byte), no un String | Trampa `charat-returns-int` |
| `length()` da raro sobre texto UTF-8 | Cuenta bytes | Trampa `strings-are-bytes` — usa `char_length()` |
| El servidor «arranca» pero nadie escucha | El bind falló y se descartó el retorno | Trampa `check-bind-return` |
| El hijo de `fork()` se cuelga | Alocó memoria del GC antes del `execvp()` | Trampa `fork-gc-child-exec` (es un límite — está en `docs/nyx/LLM.md`, no en AGENTS.md) |
| El proceso muere en el primer chequeo fallido | Es lo que hace `assert()` | Trampa `assert-aborts-process` |
| Un valor negativo de una función `extern "C"` llega enorme y positivo | Un `int` de C no extiende el signo | Trampa `ffi-c-int-no-sign-extend` |

`nyx vet` encuentra por ti las que son grep-ables, con `<archivo>:<línea>`, antes incluso de
ejecutar.

### Errores de link

| Síntoma | Causa | Arreglo |
|---------|-------|-----|
| `undefined symbol: nyx_XXXX` | Una función del runtime que esta toolchain no tiene | Busca el nombre en `CAPABILITIES.md`; si está listado, repórtalo |
| `undefined symbol` con el nombre de una función tuya | Declarada en un módulo que no se importa con su ruta entre comillas | `import "src/mi_modulo"` |

## Paso 5 — Verificar el arreglo

```bash
nyx check          # 0 errores
nyx build          # linkea
nyx test           # tus pruebas siguen pasando (usan bloques test "nombre" { ... })
```

Vuelve a correr el caso exacto que fallaba, no una variante.

## Cuando el bug no es tuyo

Si el caso mínimo es correcto según todo lo que dicen `AGENTS.md`, `CAPABILITIES.md` y
`docs/nyx/LLM.md`, y aun así falla, detente. No inventes un workaround: corre `nyx report`,
que deja una plantilla `FRICTION.md` en este proyecto, y sigue
`docs/nyx/guides/report-friction.md`. Un caso mínimo con el error literal vale muchísimo
más que un parche que esconde el bug.
