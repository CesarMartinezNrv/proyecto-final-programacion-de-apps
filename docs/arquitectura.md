# Arquitectura propuesta

Flutter 3.47.1 / Dart 3.13.1. Plataformas generadas: Android y web; la CI inicial entrega build web para evitar depender del SDK Android en la primera integración.

Capas previstas: vistas → ViewModels → casos de uso → repositorios → NASA POWER / SQLite. Actualmente lib/app.dart solo contiene la pantalla informativa inicial; aún no hay repositorios, base de datos ni ViewModels de negocio.

Entidades previstas: Ciudad, ConjuntoDatos, ObservacionMensual, ResumenMes, Actividad, Plan. Unicidad de observaciones por ciudad/conjunto/año/mes. Plan conserva preferencias y versión de conjunto/reglas.

Verificar coordenadas y unidades reales antes de importar. PRECTOTCORR mensual puede expresar una tasa: no etiquetarlo como total sin conversión correcta. Guardar consulta original, fecha de descarga y conteos válidos.

Primera afinidad propuesta: 0–3 preferencias cumplidas (temperatura en rango, lluvia y viento bajo sus máximos), con razones visibles. Umbrales por acordar; no atribuirlos a NASA.

Investigar y verificar una librería SQLite mantenida antes de añadirla. No incluir dependencias de persistencia hasta cerrar el contrato.
