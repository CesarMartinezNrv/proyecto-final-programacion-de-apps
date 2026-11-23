import 'package:airelibre_ecuador/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('muestra límites y permite consultar el alcance y regresar', (
    tester,
  ) async {
    await tester.pumpWidget(const AireLibreApp());
    expect(find.text('AireLibre Ecuador'), findsOneWidget);
    expect(find.textContaining('no son un pronóstico diario'), findsOneWidget);
    await tester.tap(find.text('Conocer el alcance'));
    await tester.pumpAndSettle();
    expect(find.text('Alcance del proyecto'), findsOneWidget);
    expect(find.textContaining('Quito, Guayaquil y Cuenca'), findsOneWidget);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Planifica tu próxima actividad'), findsOneWidget);
  });
}
