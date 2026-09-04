# Constitución

<!-- sdd-template: 1 -->

**SDD_INCOMPLETE** — esta constitución todavía está vacía. Un agente que lee este marcador
**ofrece** al usuario completarla (`docs/sdd/onboarding.md`: una pregunta por sección, en
orden) y borra este párrafo SOLO cuando las siete secciones de abajo tienen al menos una
línea VERDADERA cada una. Nadie inventa contenido para sacarse el marcador de encima —
tres líneas verdaderas valen más que doce plausibles.

Este archivo es lo primero que se lee antes de escribir código o una spec: dice para qué
existe este proyecto y cómo se deciden las cosas acá. Todo lo demás (`specs/`, `docs/adr/`)
cuelga de él. Manténlo corto — si una sección pasa de unas pocas líneas, lo que sobra
probablemente pertenece a una spec o a un ADR.

## Propósito
<!-- Qué va acá: una o dos líneas — para qué existe este proyecto y qué problema
     resuelve. -->
<!-- Qué NO va acá: el stack tecnológico, el roadmap, texto de marketing. -->

## Usuarios
<!-- Qué va acá: quién lo usa y qué necesita de él. Alcanza con roles
     ("el dueño del comercio", "un servicio interno"). -->
<!-- Qué NO va acá: personas inventadas, tamaño de mercado, nada que el usuario no dijo. -->

## Alcance y no-objetivos
<!-- Qué va acá: qué hace este proyecto — y, explícitamente, qué NO va a hacer.
     Los no-objetivos son lo que frena a un agente que "ayuda" agregando cosas. -->
<!-- Qué NO va acá: funcionalidades que nadie pidió, deseos de "tal vez más adelante". -->

## Invariantes
<!-- Qué va acá: lo que NUNCA debe pasar — datos que no se pueden perder, una operación
     que tiene que seguir siendo idempotente, un límite que no se cruza. -->
<!-- Qué NO va acá: preferencias y reglas de estilo (esas son restricciones, más abajo). -->

## Qué significa «terminado»
<!-- Qué va acá: qué tiene que ser cierto para que un cambio cuente como terminado —
     tests en verde, documentación actualizada, revisado por alguien. -->
<!-- Qué NO va acá: la lista de tareas de una funcionalidad (eso es specs/NNN-feature/tasks.md). -->

## Restricciones técnicas
<!-- Qué va acá: versión de Nyx, política de dependencias, reglas de estilo, plataformas
     de destino, todo lo que el código debe respetar. -->
<!-- Qué NO va acá: cómo se implementa una funcionalidad en particular. -->

## Cómo se decide
<!-- Qué va acá: quién decide, qué necesita un ADR (docs/adr/) y qué puede decidir un
     agente por su cuenta sin preguntar. -->
<!-- Qué NO va acá: las decisiones mismas — cada una es un ADR. -->
