# Reparto de trabajo y cumplimiento de la rúbrica

Plan de ejecución de AireLibre Ecuador. Roles A y B pendientes de asignar a personas; no son cuentas ficticias ni una atribución de trabajo ya realizado.

## Cómo se mantiene equilibrado

Cada integrante lidera funciones con interfaz, lógica, datos, pruebas y documentación, y revisa el trabajo del otro. El reparto del esfuerzo restante es **A: 24 puntos; B: 24 puntos; 12 puntos compartidos**. Son estimaciones relativas, no horas, porcentajes de avance ni puntos de la nota.

La base Flutter, CI y hook del PR #1 ya están preparados con ayuda del agente: no se cuentan como seis puntos de implementación nueva para A. Su revisión y evidencia restante se estiman en dos. Ambos deberán entender y ejecutar esta base. Los commits del agente no acreditan trabajo del compañero.

Revisar el equilibrio al integrar el primer flujo: comparar dificultad real, bloqueos y trabajo pendiente; trasladar una tarea completa si hace falta. No equilibrar contando líneas o inventando commits.

## Paquetes de trabajo

| ID | Líder | Puntos | Qué construye / entrega | Qué comprueba el otro |
| --- | --- | --- | --- | --- |
| 01 | Ambos; A redacta el PR | 3 compartidos | Propuesta de una página, usuario, problema, MVP y reparto; validar consigna del avance y acceso del profesor | B comprueba alcance, fuente y fechas; ambos aceptan decisiones |
| 02 | Ambos; B redacta el PR | 3 compartidos | Spec y BDD antes de código de negocio, wireframes, diagrama MVVM, contratos de datos y esquema/migraciones iniciales | A revisa escenarios, estados asíncronos y límites entre módulos |
| 03 | A | 8 | Adaptador NASA, limpieza, normalización, importación y procedencia del conjunto, repositorio climático y pruebas de datos | B recalcula una muestra, comprueba unidades, faltantes, repetición y error de red |
| 04 | A | 8 | Selección de ciudad, consulta histórica, ViewModel, gráficos y alternativa textual, carga/error/sin datos | B contrasta gráficos con datos y prueba cambios de ciudad y fallos |
| 05 | A | 2 | Auditar CI ya preparada, protección, artefactos y hook; guardar evidencia reproducible sin atribuir la base como implementación nueva | B ejecuta setup/check, comprueba bloqueo de main y revisa configuración remota |
| 06 | A | 6 | Investigación aplicada en accesibilidad: lectura, etiquetas, contraste, texto escalable y resumen de gráficos; documento con fuentes, aplicación, resultados y límites | B prueba lector de pantalla y texto grande y reproduce al menos un caso |
| 07 | B | 5 | Actividades, preferencias editables, validaciones y servicio determinista de afinidad con pruebas unitarias | A revisa límites exactos, empates, datos incompletos y razones |
| 08 | B | 5 | Pantalla de comparación de meses y detalle explicativo; integra reglas con históricos mediante el contrato de 02 | A comprueba que el orden y la explicación coinciden con valores y preferencias |
| 09 | B | 8 | Base SQLite y migraciones compartidas, repositorio y pantallas de planes: crear, listar, detalle, editar y eliminar con confirmación | A prueba reinicio, edición del registro correcto, cancelar eliminación y transacciones |
| 10 | B | 6 | MCP usado en una tarea real; permisos mínimos y verificación humana. Modelo de amenazas, entradas, secretos, dependencias y créditos | A reproduce el uso MCP y revisa seguridad, existencia y estado de dependencias |
| 11 | Ambos; A redacta el PR | 3 compartidos | Integrar flujo principal, prueba automatizada de punta a punta, cobertura y evidencia del bloque avanzado | B ejecuta desde instalación limpia; ambos corrigen fallos y explican los hooks |
| 12 | Ambos; B redacta el PR | 3 compartidos | README con equipo/capturas, licencia/créditos, retrospectiva, presentación, release v1.0 con artefacto y demo grabada | A verifica instalación y artefacto; ambos ensayan preguntas y modificación en vivo |

Totales de trabajo individual: A = 8 + 8 + 2 + 6 = 24; B = 5 + 5 + 8 + 6 = 24. Compartido = 4 × 3 = 12. Si se divide por igual lo compartido, la previsión es 30 puntos por persona.

## Qué debe entregar A

- Código: capa NASA y consulta histórica; interfaz y ViewModels asociados.
- Pruebas: parseo, unidades, -999/nulos, agregación y estados de carga/error; muestra calculada manualmente.
- Documentos: datos/API y parte climática de arquitectura; investigación aplicada; evidencias CI y hook.
- Revisión: todos los PR de B, incluidos persistencia, afinidad, seguridad y MCP.
- Bitácora: prompts relevantes, decisiones, verificaciones propias y errores reales detectados.

## Qué debe entregar B

- Código: reglas de actividad y afinidad, comparación y planes; base/migraciones y persistencia.
- Pruebas: validaciones, límites, empate, datos insuficientes, CRUD, reinicio y cancelación.
- Documentos: esquema de BD y parte de planificación de arquitectura; MCP y seguridad.
- Revisión: todos los PR de A, incluidos datos, consulta y accesibilidad.
- Bitácora: prompts relevantes, decisiones, verificaciones propias y errores reales detectados.

Los responsables redactan y mantienen esos documentos; el otro los revisa. Los dos deben entenderlos todos.

## Orden de trabajo y coordinación

Antes de implementar la BD, cerrar la plataforma de entrega en T02: si es Android con SQLite, añadir y verificar compilación APK en CI; si se entrega web, demostrar que la librería de persistencia elegida funciona en navegador y conserva datos al recargar. Un build web compilado no prueba por sí solo persistencia SQLite. No dar por compatible una librería sin comprobarla.

1. Añadir al compañero como colaborador cuando se conozca su usuario y acepte la invitación. Cada persona usa su propia cuenta; comprobar identidad de commits. No compartir cuentas.
2. Revisar e integrar PR #1 con aprobación real. Hasta entonces main solo contiene el arranque; no crear funciones desde main esperando encontrar toda la app.
3. Cerrar 01 y 02 antes de funciones de negocio. Una consulta exploratoria de datos puede hacerse antes para validar viabilidad; no sustituye especificar.
4. B empieza 09 por el esquema/AppDatabase y migración básica acordados en 02; se integra ese PR pequeño antes de la parte de 03 que escriba en la BD. A desarrolla y prueba el parser con fixtures durante ese tiempo.
5. Trabajar en paralelo: A03/B07 y luego A04/B08. B termina CRUD de 09 usando fixtures de plan y lo conecta cuando exista el resultado real de 08.
6. A05/A06 y B10 se realizan durante la implementación; no dejar investigación, seguridad o MCP para el último día.
7. Ejecutar 11 después de integrar consulta, comparación y persistencia; 12 después de resolver fallos y completar evidencias.

Dependencias sin ciclo: 01 → 02; 02 → 09a (BD mínima), 03a (parser) y 07; 09a + 03a → 03b (importación persistente); 03 → 04; 03 + 07 → 08; 09a → 09b (CRUD), y 08 + 09b → conexión final. 04 + 08 + 09 → 11 → 12.

Dividir un paquete grande en varios PR si facilita revisión. Los sufijos a/b son subdivisiones del mismo esfuerzo, no nuevas tareas que dupliquen puntos.

## Ramas y PR previstos

Una rama por cambio verificable, no una rama permanente por persona. Convención propuesta:

- A: codex/t03-nasa-parser, codex/t03-importacion, codex/t04-consulta-clima, codex/t05-evidencias-ci, codex/t06-accesibilidad.
- B: codex/t09-base-datos, codex/t07-preferencias, codex/t08-comparacion, codex/t09-planes, codex/t10-mcp-seguridad.
- Compartidos: codex/t01-propuesta (A publica), codex/t02-especificacion (B), codex/t11-integracion (A), codex/t12-entrega (B).

Son nombres de ejemplo, no ramas ya creadas ni un mínimo exigido por el profesor. Ambos deben tener commits, PR y revisiones reales. A publica los cambios que lidera y B los suyos; alternar la publicación de los compartidos. No presentar todos los cambios desde la cuenta de una sola persona.

## Hacer un PR, paso a paso

### Una vez por equipo local

Después de clonar y tener integrado el PR inicial:

~~~powershell
git clone https://github.com/CesarMartinezNrv/proyecto-final-programacion-de-apps.git
cd proyecto-final-programacion-de-apps
pwsh -File scripts/flutter.ps1 pub get
pwsh -File scripts/setup.ps1
git config user.name
git config user.email
~~~

Si la identidad es incorrecta, cada integrante configura sus propios nombre y correo verificado o noreply de GitHub con git config --local. No copiar el correo del otro. El hook es local y cada uno debe instalarlo.

### Antes de programar

~~~powershell
git status
git switch main
git pull --ff-only
git switch -c codex/t07-preferencias
~~~

Ejemplo de B; A cambia el nombre de la rama. Si hay cambios sin guardar, conservarlos en su rama antes de cambiar. Leer spec/spec.md y criterios de la tarea. Para lógica nueva, añadir un caso que falle, implementar lo necesario y refactorizar manteniendo pruebas verdes; registrar un ejemplo real de ese ciclo.

### Antes de subir

~~~powershell
dart format lib test
pwsh -File scripts/check.ps1 -Build
git diff
git add lib/ruta-del-modulo test/ruta-de-la-prueba docs/documento-modificado.md
git diff --cached
git commit -m "feat: validar preferencias de actividad"
git push -u origin codex/t07-preferencias
~~~

Las rutas de git add son ejemplos: sustituir por los archivos reales. El script verifica versiones bloqueadas, formato, análisis y pruebas; -Build compila web. El pre-push vuelve a verificar antes del envío y rechaza main. No usar --no-verify, force push ni desactivar hooks para saltar un fallo.

### En GitHub

1. Abrir el repositorio → Pull requests → New pull request (o Compare & pull request).
2. Base = main; compare = rama del cambio. Revisar que solo aparezcan archivos de la tarea.
3. Título concreto: «T07: validar preferencias de actividad».
4. Completar objetivo, ID de tarea/requisitos, comportamiento, pruebas ejecutadas, resultado, capturas cuando cambie la interfaz y límites conocidos.
5. Elegir Create pull request cuando esté listo; si falta trabajo, Draft. Seleccionar al compañero en Reviewers cuando sea colaborador.
6. Esperar CI: Checks debe mostrar Calidad y pruebas en verde. Un check rojo se corrige en la misma rama.
7. La aprobación humana no la reemplaza el agente ni un check verde.

Plantilla de descripción:

~~~markdown
Tarea: T07 · RF03
Resultado: preferencias validadas y afinidad determinista.
Pruebas: comandos, resultado y casos de borde comprobados.
Verificación humana: qué calculé o revisé manualmente.
Evidencia: enlace/captura/reporte, sin secretos.
IA: herramienta utilizada y decisión/resultado que verifiqué.
Límites o decisiones pendientes:
~~~

### Cómo revisa el compañero

1. Leer la tarea, spec y descripción del PR antes del diff.
2. En Files changed, comprobar código, pruebas y archivos ajenos a la tarea.
3. Probar la rama localmente con trabajo propio guardado:

~~~powershell
git fetch origin
git switch --track origin/codex/t07-preferencias
pwsh -File scripts/check.ps1 -Build
pwsh -File scripts/flutter.ps1 run -d chrome
~~~

Si esa rama ya existe localmente: git switch codex/t07-preferencias y git pull --ff-only. Probar el escenario y al menos un caso de borde. No hace falta instalar la app si el cambio es solo documentación; verificar enlaces y requisitos afectados.

4. Comentar dudas en la línea correspondiente. Usar Request changes si algo necesario falla.
5. Cuando esté correcto: Review changes → Approve → Submit review. Resumir lo realmente comprobado, por ejemplo «Verifiqué límite de viento, caso sin datos y check.ps1». No aprobar sin leer.
6. El autor responde y corrige; un nuevo commit puede invalidar la aprobación y exigir otra revisión.

### Corregir o actualizar el PR

~~~powershell
git switch codex/t07-preferencias
# Corregir lo solicitado.
pwsh -File scripts/check.ps1
git add <archivos-reales>
git commit -m "fix: corregir el límite de viento"
git push
~~~

El PR se actualiza automáticamente; no crear otro para la misma corrección. Si main avanzó:

~~~powershell
git fetch origin
git merge origin/main
# Resolver conflictos conservando ambos cambios cuando corresponda.
pwsh -File scripts/check.ps1 -Build
git add <archivos-resueltos>
git commit
git push
~~~

git commit solo si la resolución de conflictos dejó una fusión pendiente; una fusión automática puede haber creado el commit. No usar reset --hard ni force push para resolver diferencias.

### Integrar

Con CI verde, aprobación vigente, conversaciones resueltas y sin conflictos: Squash and merge → confirmar. Propuesta de equipo: el revisor integra después de validar; no es una exigencia adicional de GitHub. Conservar autoría y registrar coautoría solo si hubo contribución real.

Después: git switch main y git pull --ff-only. La tarea solo pasa a Terminada cuando sus criterios y evidencias están integrados. Tras squash, borrar la rama desde GitHub es opcional; no usar git branch -D para forzar borrado local.

## Matriz completa de evaluación

Ponderaciones propuestas del PDF, no promesa de nota. La nota se ajusta por aporte individual.

| Criterio | Peso | Tareas | Evidencia y condición de cierre |
| --- | --- | --- | --- |
| Ciclo de vida y proceso | 20 | 01, 02 y todos los PR | Propuesta, SDD/BDD antes de código, AGENTS.md, ramas, PR pequeños, revisiones cruzadas y bitácora |
| Producto y arquitectura | 20 | 02, 03, 04, 07, 08, 09, 11 | Frontend, datos NASA, MVVM/capas, estado asíncrono, SQLite y flujo completo persistente |
| Calidad y automatización | 15 | 03–09, 11, 05 | Casos TDD reales, unitarias, al menos un flujo automatizado, linter, cobertura reportada, CI por PR, main protegida y build |
| Agentes e interoperabilidad | 15 | 10, 11 y bitácora de ambos | MCP realmente usado/documentado y al menos un bloque avanzado con demostración; elegir hooks que bloqueen acciones peligrosas |
| Seguridad | 10 | 02, 03, 07, 09, 10 | Validación, consultas parametrizadas, mínimo privilegio MCP, secretos fuera del historial, .env.example, dependencias verificadas y modelo de amenazas |
| Investigación | 10 | 06, revisión de B y 12 | Algo nuevo aplicado: documentación oficial, justificación, commits/PR, resultados/límites y pruebas; confirmar que accesibilidad no se cubrió ya en clase |
| Documentación y defensa | 10 | 12, aportes de ambos | README con instalación/equipo/capturas, licencia/créditos, retrospectiva, v1.0 + build, presentación, demo en vivo y respaldo grabado; ambos explican cualquier parte |

## Lista final sin omisiones

- Repositorio público o acceso del profesor desde propuesta; coste cero para ejecutar y probar.
- Aplicación con frontend, persistencia y flujo completo; no usar datos personales reales.
- docs/propuesta.md; spec/spec.md + BDD; AGENTS.md.
- docs/arquitectura.md con diagrama, capas, decisiones, estado y esquema.
- docs/api.md o esquema de datos; REST/JSON documentados solo si se añade backend propio.
- test/ con unitarias y flujo principal; reporte de cobertura, linter y evidencia TDD.
- .github/workflows con análisis, pruebas y compilación por PR; protección y artefacto.
- docs/mcp.md con uso real de al menos un MCP y sus permisos.
- Bloque avanzado elegido: demostrar el hook que bloquea push a main y un caso de prueba fallida que impida subir, con corrección y evidencia. No confundir archivo existente con demostración completa.
- docs/seguridad.md, .env.example, dependencias revisadas, sin secretos. Si se filtra uno, revocarlo.
- docs/investigacion.md con los cinco apartados exigidos; A aplica y B verifica.
- docs/bitacora_ia.md con herramientas/prompts/decisiones y al menos tres errores reales detectados y corregidos; ambos aportan. Revisar la relevancia de las incidencias de preparación y añadir errores de lógica/datos cuando ocurran.
- Historial propio de commits, PR y revisiones de ambos; no fabricar aportes.
- README, licencia/créditos, docs/retrospectiva.md, capturas en evidencias/.
- Release con tag v1.0 y build web o APK descargable; comprobar instalación limpia.
- Defensa de semana 16: demo, plan B grabado, PR, pipeline, MCP, investigación y explicación/modificación del código por ambos.

## Seguimiento real

Estado inicial: PR #1 abierto con base y CI aprobada en la preparación; necesita revisión humana. Funciones NASA, afinidad, persistencia, MCP e investigación continúan pendientes. Esta planificación cubre los requisitos; no certifica que estén implementados.

Calendario interno sugerido: 23/11 propuesta; 24–25/11 especificación/contratos/BD base; 26–29/11 funciones; 30/11–02/12 integración/MCP/hooks; 03–05/12 calidad/investigación; 06–07/12 ensayo/release. Son objetivos por acordar, no vencimientos nuevos. Fecha límite registrada en Notion: 08/12/2026, sin hora confirmada; el PDF remite al aula virtual para fechas exactas.

## Fuentes

- Proyecto_Final.pdf, documento proporcionado por el usuario: requisitos, lista final y ponderación propuesta.
- [Crear un PR](https://docs.github.com/en/pull-requests/how-tos/create-pull-requests/creating-a-pull-request).
- [Revisar y aprobar un PR](https://docs.github.com/en/pull-requests/how-tos/review-pull-requests/approving-a-pull-request-with-required-reviews).
- [Protección de ramas](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches).
