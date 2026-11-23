# Seguridad inicial

Sin secretos ni autenticación necesarios para esta base. .env.example no contiene valores reales.

Amenazas a tratar al implementar: respuestas externas malformadas (validación), SQL no parametrizado (repositorios parametrizados), importación parcial (transacciones), filtración de notas (usar ejemplos sin datos personales) y herramientas con permisos amplios (mínimo privilegio).

CI con contents: read; acciones fijadas a commits consultados en repositorios oficiales. Main debe exigir PR, aprobación y check obligatorio; verificar configuración remota antes de considerarla activa.

No usar pull_request_target para ejecutar código propuesto. No registrar claves, credenciales, contenido privado del curso ni datos personales en evidencias.
