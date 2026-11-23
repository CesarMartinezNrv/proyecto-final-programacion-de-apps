# Fuente y contrato de datos (propuesta)

Fuente: https://power.larc.nasa.gov/ — NASA POWER.
Parámetros previstos: T2M, PRECTOTCORR, WS2M.
Ciudades: Quito, Guayaquil, Cuenca. Período común propuesto 2001–2024.

Pendiente: probar una consulta pequeña, confirmar coordenadas, estructura, licencia/créditos y unidades de cada campo. La app no tiene backend propio.

Contrato interno previsto: registros por ciudad, año, mes, valores opcionales y referencia a conjunto. Transformar -999 en nulo y validar rangos/tipos. Conservar muestra real para pruebas sin red.
