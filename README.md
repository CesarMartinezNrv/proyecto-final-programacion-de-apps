# Proyecto final · Programación de apps

**AireLibre Ecuador**: planificador de actividades al aire libre con históricos de NASA POWER.

Estado: base de desarrollo. Consulta NASA, comparación y persistencia pendientes. La pantalla inicial no muestra mediciones ni resultados inventados.

## Empezar

Git, Flutter **3.47.1** (Dart 3.13.1) y PowerShell 7. Android necesita además SDK Android; web no.

~~~powershell
pwsh -File scripts/flutter.ps1 pub get
pwsh -File scripts/setup.ps1
pwsh -File scripts/flutter.ps1 run -d chrome
~~~

Cada integrante instala los hooks después de clonar. El script solo configura este repositorio.

## Comprobar antes de subir

~~~powershell
pwsh -File scripts/check.ps1
pwsh -File scripts/check.ps1 -Build
~~~

Comprueba dependencias, formato, análisis y pruebas con cobertura; -Build añade compilación web. El hook pre-push lo ejecuta automáticamente y bloquea pushes a main. El control remoto de GitHub se configura aparte: el hook local por sí solo se puede omitir.

## Flujo de pareja

~~~powershell
git switch main
git pull --ff-only
git switch -c codex/mi-funcion
# Editar archivos.
pwsh -File scripts/check.ps1
git add <archivos>
git commit -m "feat: describir el cambio"
git push -u origin codex/mi-funcion
~~~

GitHub: Compare & pull request → base main → explicar el cambio y las pruebas → Create pull request. El compañero revisa Files changed → Review changes → Approve. Integrar con CI verde y una aprobación. El autor no puede aprobar su propio PR.

Guías: [GitHub y PRs](docs/github.md), [propuesta](docs/propuesta.md), [especificación](spec/spec.md), [arquitectura](docs/arquitectura.md).

## Planificación y equipo

[Planificación en Notion](https://app.notion.com/p/4216c087ff0181008c3af580d5a69329). Roles A/B pendientes de asignar: 24 puntos cada uno y 12 compartidos. La evidencia de evaluación se conserva en GitHub.

Fecha límite registrada: **8 de diciembre de 2026**; confirmar hora y cambios en aula virtual. Avance registrado: 23 de noviembre.

## Licencia y fuente

MIT para código original. Fuente prevista: [NASA POWER](https://power.larc.nasa.gov/). Todavía no se distribuyen datos NASA. Registrar procedencia y créditos al importarlos; no subir datos personales, documentos privados del curso ni tokens.
