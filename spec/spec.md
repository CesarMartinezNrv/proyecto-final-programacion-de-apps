# Especificación inicial

Este borrador precede a las funciones de negocio. Solo está implementada una pantalla de alcance y su navegación.

## Requisitos propuestos

- RF01: elegir una de tres ciudades y una de tres actividades.
- RF02: mostrar históricos mensuales con unidades, período, fuente y cobertura.
- RF03: comparar meses con preferencias editables de temperatura, lluvia y viento.
- RF04: explicar cada resultado con valores y reglas; no presentar probabilidades inventadas.
- RF05: crear, leer, actualizar y eliminar planes persistentes.
- RF06: completar la demo con datos reales precargados cuando no haya red.

## Aceptación

- -999 y valores no finitos se tratan como faltantes.
- Importar el mismo conjunto dos veces no duplica observaciones.
- Si falta una variable requerida, indicar datos insuficientes y no clasificar.
- Mismos datos y preferencias producen el mismo orden; empate por mes.
- Guardar y reiniciar conserva el plan; cancelar eliminación no lo modifica.
- Validar entradas y mostrar estados cargando, error recuperable, vacío y sin datos.
- Los gráficos tendrán alternativa textual.

## BDD

Dado un conjunto NASA validado, cuando elijo ciudad y actividad, entonces consulto meses y razones con su período y unidades.

Dado un -999, cuando comparo, entonces no lo uso como medición.

Dado un plan guardado, cuando reinicio, entonces puedo abrirlo y editarlo.

Dada una descarga fallida, cuando uso la copia local, entonces el flujo funciona indicando procedencia y fecha.
