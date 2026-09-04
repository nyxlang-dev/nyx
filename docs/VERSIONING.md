# Política de Versiones — Nyx Language

## Formato: Semantic Versioning (`MAJOR.MINOR.PATCH`)

Nyx sigue [Semantic Versioning 2.0.0](https://semver.org/lang/es/) con reglas adicionales específicas del proyecto.

---

## Qué significa cada número

### MAJOR (0 → 1 → 2...)
Cambia cuando el lenguaje es **fundamentalmente diferente** para los usuarios.

| Versión | Significado |
|---------|-------------|
| **0.x.x** | En desarrollo activo. API puede cambiar. No se garantiza compatibilidad entre minors. |
| **1.0.0** | Primera versión estable. **Los criterios viven en una sola tabla: `docs/ROADMAP.md` §5 «Camino a 1.0»** (con el estado real de cada uno). Aprobación explícita del autor — regla #6. |
| **2.0.0** | Breaking changes al lenguaje (cambios de sintaxis, semántica, o runtime ABI que rompen código existente). |

### MINOR (x.0 → x.1 → x.2...)
Features nuevas que **no rompen** lo existente.

- Cada **grupo coherente de features** es un minor bump.
- Un módulo nuevo de stdlib = un minor.
- Mejoras significativas a un subsistema = un minor.
- **No se sube minor por cada función individual.**

### PATCH (x.x.0 → x.x.1 → x.x.2...)
Bug fixes, correcciones de docs, mejoras de rendimiento **sin features nuevas**.

---

## Reglas de gobernanza

1. **MAJOR**: Solo el autor (Ottavio) decide cuándo subir major. Requiere milestone claro y aprobación explícita en el chat.
2. **MINOR**: Claude Code puede proponer un minor bump, pero debe pedir confirmación. No más de **un minor por sesión de trabajo**.
3. **PATCH**: Claude Code puede subir patch libremente tras verificar tests.
4. **No acumular**: Si en una sesión se hacen muchas cosas, se release como un solo minor con changelog detallado.
5. **No inflar**: Agregar un test no es un minor. Corregir un typo no es un patch release — se acumula.
6. **NUNCA declarar v1.0.0 sin autorización explícita del autor.** v1.0.0 es un milestone que solo Ottavio puede aprobar.

### Checklist de release / Release checklist

> **v0.17+**: la fuente de verdad es el archivo `VERSION` de la raíz (se
> distribuye a `~/.nyx/VERSION`; `nyx --version`, el banner del PM y el resto
> del compilador lo leen dinámicamente — ya no hay banners hardcodeados que
> bumpear a mano). Los 2 fallbacks hardcodeados que sobreviven (`scripts/nyx`
> --version y `compiler/build.nx` `toolchain_version()`, para cuando no hay
> `VERSION` ni `NYX_HOME` a mano) los verifica `scripts/release-check.sh`,
> ya no la memoria — histórico de olvidos que motivó el script: el banner del
> driver quedó en v0.18.0 pre-reset hasta v0.15.0; `scripts/nyx --version`
> quedó en 0.16.0 hasta 2026-07-02, lo detectó un `nyx update` en máquina de
> usuario.

1. `VERSION` ← nuevo número.
2. `bash scripts/release-check.sh` — verde antes de seguir (compara los
   fallbacks hardcodeados contra `VERSION` y exige `[Unreleased]` en
   `CHANGELOG.md`; con `--pre` en vez de sin flag durante el trabajo previo
   al corte).
3. Mover `[Unreleased]` de `CHANGELOG.md` a `## [X.Y.Z] — fecha`.
4. `git tag vX.Y.Z` + `bash scripts/sync_to_public.sh core --push` (mirror +
   push) + `make install-local` (refresca `~/.nyx`) + Release por API de
   GitHub.

---

## Camino a 1.0.0

> **Fuente única: `docs/ROADMAP.md` §5 «Camino a 1.0»** — ahí está la tabla de criterios
> UNIFICADA, con el estado real de cada uno y los que hoy **no están instrumentados**.
> Este archivo define *cómo se numeran* las versiones; el roadmap define *qué falta* para
> 1.0. Durante meses hubo dos listas acá y allá que no coincidían — esa duplicación se
> terminó (campaña de reestructuración documental, 2026-08-30).
>
> El historial versión por versión vive en `CHANGELOG.md`; los arcos cerrados y el arco en
> curso, en `docs/ROADMAP.md` §2-§3. La escalera de versiones futuras que estaba acá se
> retiró por la misma razón que se retiró del roadmap: **no se pinean features a números
> que todavía no existen**.

<details>
<summary>Escalera histórica (hasta el reset del roadmap, 2026-08-30) — solo referencia</summary>

```
v0.9.0  — Reset. Todo lo construido hasta hoy. ✅
v0.9.1  — Limpieza de docs, versiones consistentes. ✅
v0.9.2  — Auditoría de features completada. ✅
v0.9.3  — SPEC actualizado y verificado. ✅
v0.9.4  — Stress tests pasan todos los niveles (1-6). ✅
v0.9.5  — Comparativa con otros lenguajes completada. ✅
v0.10.0 — Web Playground. ✅
v0.11.0 — Enhanced Database (transactions, migrations). ✅
v0.12.0 — 8 productos, package manager, nyx test, nyx-shell. ✅
v0.13.0 — products→libraries + services/ + sites/ + toolchain portable (install.sh)
           + compiler bilingüe (NYX_LANG) + M-01/M-02/M-03/M-04 + M-08 S1–S23a semantic
           type checker + cookbook 100/100 + LLM.md. ✅
v0.13.1 — Patch: auditoría B1-B5 + off-by-8 cache fix + batería runtime C. ✅
v0.14.0 — AI-first: NYX_DIAG=json + line:column, contrato de strings en bytes,
           assert abortivo, make install-local. ✅
v0.15.0 — Type checker M-08 cerrado (B8): trait bounds reales (NYX1020),
           payloads de enum variants, multi-error recovery; nyx build verbose. ✅
v0.16.0 — Compilador blindado: el parser nunca cuelga (presupuesto +
           panic-mode), multi-error de parse con códigos NYX0101-0105 + JSON,
           monomorfización implícita (genéricos sin turbofish, gap S10). ✅
v0.17.0 — Gateway/proxy WebSocket + AI-first groundwork. (La línea anterior decía «Package registry ✅» — FALSO: `nyx publish` no existe; el registry sigue siendo futuro, ver `docs/ROADMAP.md` §4.2.) ✅
v0.18.0 — Mutación in-place de agregados + WASM hasta el browser (FFI extern
           "js", eventos, std/dom) + tooling AI-first (nyx update/report). ✅
v0.19.0 — Type system real (TyVar/occurs-check/monomorfización real de
           impl-methods genéricos) + async real (goroutines stackful +
           scheduler M:N + event loop epoll) + borrow checker (free-safety,
           move-checking #[affine], drop determinista/RAII). ✅
v0.20.0 — Borrow checker completo (dangling refs inter-procedurales,
           ownership types reales Box/Rc/MoveOnly) + criptografía Web Push
           (VAPID + aes128gcm RFC 8291/8292). ✅
v0.20.1 — RESP binario-seguro sobre TLS (nyx-kv) + dedup extern "C". ✅
v0.21-v0.24 — primitivos de runtime + std/llm; campañas SCAN/borrow y "Primer
           intento verde"; campaña de corrección v0.23; dispatch honesto +
           tag estático + ceguera visible (detalle: CHANGELOG.md / ROADMAP.md). ✅
v0.25-v0.31 — multi-arco S1-S4 (literales binary-safe, señales, resolución por
           módulo, guard pages) + errores tipados E1-E5 (Result<T,E> real y la
           familia try_ de la stdlib). Detalle: CHANGELOG.md. ✅
AHORA — ver el archivo VERSION. Lo que viene se decide POR ARCO: docs/ROADMAP.md.
```

</details>

## Después de 1.0

**No hay escalera comprometida.** Los candidatos (LSP, optimizaciones, y el resto) están en
`docs/ROADMAP.md` §4, sin número asignado. La única regla estable es la de MAJOR: **v2.0.0
solo si hay breaking changes al lenguaje** — nunca por acumulación de features.

---

## Historial de versiones

Las versiones v0.2.0 a v5.4.0 fueron asignadas durante desarrollo rápido (Marzo 2026) sin política formal. El reset a v0.9.0 refleja que el lenguaje tiene capacidades extensas pero aún no ha sido estabilizado para uso público.

**Nota**: La versión v1.0.0 fue declarada prematuramente por Claude Code el 24 Marzo 2026 sin autorización del autor. Fue revertida a v0.12.0. Esto reforzó la regla #6: v1.0.0 requiere aprobación explícita.

Todo el trabajo realizado está preservado en CHANGELOG.md y docs/SESSION_LOG.md.
