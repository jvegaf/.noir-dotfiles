# Regla: Generación de un documento de requisitos de producto (PRD)

## Meta

Para guiar a un asistente de IA en la creación de un documento detallado de requisitos de producto (PRD) en formato de Markdown, basado en un mensaje de usuario inicial. El PRD debe ser claro, procesable y adecuado para un desarrollador junior para comprender e implementar la función.

## Proceso

1. **Recibir un mensaje inicial:** El usuario proporciona una breve descripción o solicitud de una nueva característica o funcionalidad.
2. **Haga preguntas aclaratorias:** Antes de escribir el PRD, el AI*debe*hacer preguntas aclaratorias para reunir detalles suficientes. El objetivo es comprender el "qué" y "por qué" de la característica, no necesariamente el "cómo" (que el desarrollador descubrirá). Asegúrese de proporcionar opciones en listas de cartas/números para que pueda responder fácilmente con mis selecciones.
3. **Genere PRD:** Basado en el aviso inicial y las respuestas del usuario a las preguntas de aclaración, genere un PRD utilizando la estructura descrita a continuación.
4. **Guardar PRD:** Guardar el documento generado como `PRD- [Nombre de la característica] .md` dentro del directorio`/Tasks`.

## Preguntas aclaratorias (ejemplos)

La IA debe adaptar sus preguntas en función del aviso, pero aquí hay algunas áreas comunes para explorar:

**\* Problema/Objetivo:** "¿Qué problema resuelve esta función para el usuario?" o "¿Cuál es el objetivo principal que queremos lograr con esta característica?"
**\* Usuario objetivo:** "¿Quién es el usuario principal de esta característica?"
**\* Funcionalidad central:** "¿Puedes describir las acciones clave que un usuario debería poder realizar con esta característica?"
**\* Historias de usuarios:** "¿Podría proporcionar algunas historias de usuarios? (Por ejemplo, como [tipo de usuario], quiero [realizar una acción] para que [beneficio].)"
**\* Criterios de aceptación:** "¿Cómo sabremos cuándo se implementa esta función con éxito? ¿Cuáles son los criterios clave de éxito?"
**\* Alcance/límites:** "¿Hay alguna cosa específica que esta característica*no debería*hacer (no cabales)?"
**\* Requisitos de datos:** "¿Qué tipo de datos necesita esta función para mostrar o manipular?"
**\* Diseño/UI:** "¿Hay alguna maqueta de diseño existente o directrices de UI a seguir?" o "¿Puedes describir la apariencia deseada?"
**\* Casos de borde:** "¿Existen casos potenciales de borde o condiciones de error que debamos considerar?"

## Estructura PRD

El PRD generado debe incluir las siguientes secciones:

1. **Introducción/descripción general:** Describa brevemente la característica y el problema que resuelve. Declarar el objetivo.
2. **Objetivos:** Enumere los objetivos específicos y medibles para esta característica.
3. **Historias de usuarios:** Detalle las narraciones del usuario que describen el uso y los beneficios de las características.
4. **Requisitos funcionales:** Enumere las funcionalidades específicas que debe tener la función. Use un lenguaje claro y conciso (por ejemplo, "el sistema debe permitir a los usuarios cargar una foto de perfil"). Número de estos requisitos.
5. **No posees (fuera del alcance):** Indique claramente lo que esta característica*no*incluirá para administrar el alcance.
6. **Consideraciones de diseño (opcional):** Enlace a maquetas, describe los requisitos de UI/UX o mencione componentes/estilos relevantes si corresponde.
7. **Consideraciones técnicas (opcionales):** Mencione cualquier restricción técnica, dependencias o sugerencias conocidas (por ejemplo, "debe integrarse con el módulo de Auth existente").
8. **Métricas de éxito:** ¿Cómo se medirá el éxito de esta característica? (por ejemplo, "Aumentar la participación del usuario en un 10%", "Reduzca los tickets de soporte relacionados con X").
9. **Preguntas abiertas:** Enumere cualquier pregunta o área restante que necesite una mayor aclaración.

## público objetivo

Suponga que el lector principal del PRD es un desarrollador junior \*\* \*\*. Por lo tanto, los requisitos deben ser explícitos, inequívocos y evitar la jerga cuando sea posible. Proporcione suficientes detalles para que comprendan el propósito y la lógica central de la función.

## Producción

**\* Formato:** Markdown (`.md`)
**\* Ubicación:** `/docs/`

- **Filename:** `prd-[feature-name].md`

## Instrucciones finales

1. No comience a implementar el PRD
2. Asegúrese de hacerle preguntas al usuario.
3. Tome las respuestas del usuario a las preguntas aclaratorias y mejore el PRD
4. Ultrathink
