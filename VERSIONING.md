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
| **1.0.0** | Primera versión estable. Lenguaje usable en producción. Documentación completa. Spec verificado. Stress tests pasan. Self-hosting auditado. Aprobado por el autor. |
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

---

## Camino a 1.0.0

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
v0.13.0 ← AHORA. products→libraries + services/ + sites/ + toolchain portable (install.sh)
           + compiler bilingüe (NYX_LANG) + M-01/M-02/M-03/M-04 + M-08 S1–S23a semantic
           type checker + cookbook 100/100 + LLM.md. ✅
v0.14.0 — Stripe + dashboard + user testing (playground + KV).
v0.15.0 — Performance: HTTP/2 TLS, nyx-proxy HTTP/2 upstream.
v0.16.0 — Developer experience: error messages, debugger, REPL mejorado.
v0.17.0 — Package registry público (nyx publish / nyx install).
v0.18.0 — Borrow checker real (no solo anotaciones).

v1.0.0-rc.1 — Release candidate. Documentación bilingüe completa. Auditoría final.
v1.0.0      — Primera versión estable pública. SOLO con aprobación del autor.
```

## Después de 1.0

```
v1.1.0 — LSP completo + IDE experience.
v1.2.0 — Optimizaciones de rendimiento.
v2.0.0 — Solo si hay breaking changes al lenguaje.
```

---

## Historial de versiones

Las versiones v0.2.0 a v5.4.0 fueron asignadas durante desarrollo rápido (Marzo 2026) sin política formal. El reset a v0.9.0 refleja que el lenguaje tiene capacidades extensas pero aún no ha sido estabilizado para uso público.

**Nota**: La versión v1.0.0 fue declarada prematuramente por Claude Code el 24 Marzo 2026 sin autorización del autor. Fue revertida a v0.12.0. Esto reforzó la regla #6: v1.0.0 requiere aprobación explícita.

Todo el trabajo realizado está preservado en CHANGELOG.md y PROGRESS.md.
