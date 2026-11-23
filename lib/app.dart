import 'package:flutter/material.dart';

class AireLibreApp extends StatelessWidget {
  const AireLibreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AireLibre Ecuador',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AireLibre Ecuador')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: ListView(
            padding: const EdgeInsets.all(24),
            shrinkWrap: true,
            children: [
              Text(
                'Planifica tu próxima actividad',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text(
                'Compararemos meses según lluvia, temperatura y viento '
                'históricos de NASA POWER. La consulta de datos y los planes '
                'guardados están en desarrollo.',
              ),
              const SizedBox(height: 16),
              const Text(
                'Los patrones históricos no son un pronóstico diario ni '
                'garantizan condiciones seguras para una actividad.',
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (_) => const _ScopePage()),
                ),
                child: const Text('Conocer el alcance'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScopePage extends StatelessWidget {
  const _ScopePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alcance del proyecto')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          Text('Ciudades propuestas: Quito, Guayaquil y Cuenca.'),
          SizedBox(height: 12),
          Text('Actividades: caminar, ciclismo recreativo y picnic.'),
          SizedBox(height: 12),
          Text(
            'Flujo previsto: elegir ciudad y actividad, comparar meses, '
            'consultar la explicación y guardar un plan.',
          ),
        ],
      ),
    );
  }
}
