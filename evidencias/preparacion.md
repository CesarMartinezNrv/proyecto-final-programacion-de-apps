# Verificación inicial

23 de noviembre de 2026. Entorno local Windows, Flutter 3.47.1 / Dart 3.13.1.

Comando: `pwsh -NoProfile -File scripts/check.ps1 -Build`.

- Dependencias: resueltas con archivo bloqueado.
- Formato: 3 archivos, sin cambios pendientes.
- Análisis: No issues found.
- Prueba de navegación: 1 prueba aprobada; inicio → alcance → regresar.
- Compilación web: build/web generado correctamente.
- Aviso no bloqueante del compilador: referencia a familia CupertinoIcons sin fuentes Cupertino; la app usa Material y no depende de esa familia. Revisar si se incorporan iconos Cupertino.

No hay todavía flujo NASA ni persistencia; esta prueba no acredita el flujo principal del producto final.

GitHub debe volver a ejecutar la CI en el PR. El estado real de Actions es la fuente para validar controles remotos.

El primer commit de main contiene solo README, licencia e ignorados para inicializar un repositorio vacío. Se envía antes de proteger main. El resto de la base se propone en codex/preparacion-inicial y requiere revisión.
