# Bitácora de IA

## Preparación del repositorio

Herramienta: Codex. Tarea: estructura Flutter inicial, guía de PR, scripts locales y CI. El usuario debe revisar los archivos y ejecutar la aplicación antes de defenderlos.

Verificación: registrar resultados reales de análisis, pruebas y compilación en evidencias/preparacion.md.

Incidencias reales de preparación: el wrapper de Flutter de Windows no respondió en este entorno; la herramienta instalada sí respondió al invocarse con el Dart SDK y su snapshot. Se añadió scripts/flutter.ps1 para esa invocación sin modificar el SDK.

Durante la edición, el agente propuso un parche con contexto que no coincidía con la plantilla Flutter y fue rechazado; leyó el archivo exacto y corrigió el parche antes de aplicarlo.

## Errores reales detectados durante esta preparación

1. El agente intentó eliminar y añadir README en un mismo parche. La herramienta rechazó operaciones duplicadas antes de escribir. Se corrigió usando una actualización del archivo.
2. El parche del agente supuso una plantilla Flutter con líneas distintas a las generadas. La validación rechazó el contexto; se leyó main.dart y se ajustó al contenido exacto.
3. El script inicial asumió que Get-Command flutter devolvía un solo ejecutable. La prueba real produjo dos rutas concatenadas y falló. Se seleccionó explícitamente el primer resultado y la verificación completa pasó.

Son incidencias reales de preparación registradas por el agente. El equipo debe revisar su relevancia para la rúbrica y conservar también errores sustantivos de datos/lógica que detecte durante el desarrollo, sin inventarlos. Evidencia final local: evidencias/preparacion.md.
