# Guía práctica de GitHub

Para el flujo completo de autor, revisor, correcciones y conflictos, consultar [reparto y PRs](reparto_y_prs.md). El PR inicial debe integrarse antes de crear funciones desde main.

## Qué es cada elemento

- Commit: una versión pequeña de tus cambios.
- Rama: espacio donde trabajas sin modificar main.
- Push: subir commits.
- PR: propuesta para integrar tu rama en main.
- CI: GitHub repite automáticamente análisis, pruebas y compilación.
- Review: el compañero revisa y aprueba o pide cambios.

## Después de clonar

Ejecutar pwsh -File scripts/setup.ps1. Instala .githooks/pre-push en la configuración local de este repositorio. Cada compañero debe repetirlo en su equipo.

pwsh -File scripts/check.ps1 comprueba dependencias, formato, análisis y pruebas. Con -Build también compila web. Si formato falla, ejecutar dart format lib test, revisar cambios y repetir.

scripts/flutter.ps1 invoca Flutter instalado, utilizando su SDK/snapshot disponible en Windows para evitar problemas del wrapper. No instala ni modifica Flutter.

## Flujo

1. git switch main; git pull --ff-only.
2. git switch -c codex/nombre-del-cambio.
3. Implementar un requisito y sus pruebas.
4. Ejecutar scripts/check.ps1; revisar el diff antes de git add.
5. Commit y push de esa rama. El pre-push se ejecuta antes del envío.
6. GitHub → Compare & pull request. Base main, rama del cambio.
7. Completar descripción, evidencia y pruebas. Esperar el check Calidad y pruebas.
8. El compañero con permiso de escritura abre Files changed → Review changes → Approve o Request changes.
9. Con aprobación y CI verde, Squash and merge. Actualizar main local.

Las órdenes separadas por punto y coma en esta explicación son pasos independientes, no un script automático.

## Configuración remota que debe verificarse

Settings → Branches → Add classic branch protection rule → patrón main:
- Require a pull request before merging y 1 aprobación.
- Dismiss stale approvals.
- Require status checks to pass; seleccionar Calidad y pruebas después de su primera ejecución.
- Require branches to be up to date.
- Require conversation resolution.
- Do not allow bypassing the above settings.
- No permitir force pushes ni eliminación.

Settings → General → Pull Requests: permitir Squash merging; borrar ramas automáticamente después de integrar es opcional. Esta guía no prueba que las opciones estén guardadas: verificar el repositorio real.

Con una sola persona no se puede aprobar el propio PR. Hace falta añadir al compañero cuando se conozca su usuario; no inventar su identidad ni relajar la protección para simular revisión.

## Cuando falla la CI

Abrir PR → Checks → Calidad y pruebas → paso rojo. Corregir en la misma rama y hacer otro commit/push; el PR se actualiza solo. No abrir otro PR por la misma corrección.

## Artefactos

Actions → ejecución correcta → Artifacts: airelibre-web y cobertura. El ZIP web es un build, no un despliegue; servirlo por HTTP para probarlo.

## Fuentes oficiales

- https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches
- https://docs.flutter.dev/testing/overview
