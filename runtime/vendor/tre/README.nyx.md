# runtime/vendor/tre — motor POSIX regex (TRE de musl), modo bytes

Por qué está acá: la CRT de MSVC no trae `<regex.h>`, así que `std/regex` no enlazaba en Windows. Este motor
reemplaza a la libc **solo en Windows** (o con `-DNYX_REGEX_TRE`); en Linux y Android sigue la libc. Spec y
decisiones: `docs/design/specs/2026-11-08-regex-windows-design.md`. Paridad con glibc: `make test-regex-diff`.

## Origen

- musl **1.2.5**, `src/regex/{regcomp,regexec,tre-mem,regerror}.c` y `tre.h`
  (`musl-1.2.5.tar.gz`, sha256 `a9a118bbe84d8764da0ea0d28b3ab3fae8477fc7e4085d90102b8596fc7c75e4`).
- Arreglos de musl posteriores a 1.2.5 que tocan estos archivos, aplicados encima:
  - `40acb04b` (2026-03-23) regex: reject invalid \digit back reference in BRE.
  - `7813e911` (2026-04-23) regex: avoid int overflow in regcomp.
  - `c5e2f7e7` (2026-05-10) fix integer overflow in … regerror (aplicado a mano).
- Licencias: `COPYRIGHT.musl` (MIT; la parte TRE es © 2001-2008 Ville Laurikari, BSD-2).

## Parches propios (todos marcados `NYX` en el código)

1. **Nombres**: `nyx_tre_regex.h` reemplaza a `<regex.h>`; las funciones salen como `nyx_tre_regcomp`,
   `nyx_tre_regexec`, `nyx_tre_regfree`, `nyx_tre_regerror` (y `nyx_tre_mem_*` internas) para no chocar con una
   libc que traiga las suyas.
2. **Modo bytes** (`tre.h`): un byte es un carácter (0-255) en vez de `mbtowc`/`wchar_t`, y las clases
   (`[:alpha:]`…) son ASCII, como glibc en el locale C donde corre el runtime. Evita además el `wchar_t` de
   16 bits de Windows.
3. **Portabilidad** (`tre.h`): `RE_DUP_MAX`, `CHARCLASS_NAME_MAX`, `strnlen` y `hidden` propios; `ALIGN` con
   `uintptr_t` (en Win64 `long` es de 32 bits); `regerror` sin la traducción de locale de musl.
4. **Repetición sobre un ancla suelta** (`regcomp.c`): `^*`, `$+`, `${1,2}` dan `REG_BADRPT` como en glibc (en
   ERE es indefinido; TRE lo aceptaba).
5. **Camino vacío de una alternancia** (`tre_match_empty`, `regcomp.c`): si las dos ramas casan vacío y la
   derecha exige un subconjunto de las aserciones de la izquierda, se toma la derecha. `$|x*` sobre `" x"` daba
   `[1,2)` en vez de `[0,0)`, y `^$|$` no casaba.
6. **Iteración opcional de un ancla** (`tre_match_empty`): con `min == 0`, si el vacío del argumento exige una
   aserción se toman las cero iteraciones. `.{1,2}($)?` daba `[4,6)` en vez de `[0,2)`.

## Límites conocidos (documentados en `docs/gotchas/regex-windows-motor.md`)

- Dos ramas que casan vacío bajo anclas que no se contienen (`$|^`): el vacío queda atado a la izquierda.
- Ramas vacías (`|a`, `a||b`) y repeticiones encadenadas (`a**`): indefinidas en ERE según POSIX; los dos
  motores pueden diferir.
- Los offsets de un submatch dentro de una repetición pueden diferir de glibc (`std/regex` no los expone).

Para actualizar: bajar la versión nueva de musl, volver a aplicar los parches de arriba (buscar `NYX`) y correr
`make test-regex-diff`.
