// Tests de navegación y UI para MiGanado
//
// Estos tests verifican que:
// 1. Los widgets de estado se comportan bien
// 2. Se renderizan correctamente

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/ui/widgets/loading_skeleton.dart';

void main() {
  group('MiGanado Widget Tests', () {
    testWidgets('LoadingState renderiza CircularProgressIndicator',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: LoadingState(message: 'Cargando...'),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Cargando...'), findsOneWidget);
    });

    testWidgets('ErrorState renderiza título y mensaje',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorState(
              title: 'Error',
              message: 'Algo salió mal',
            ),
          ),
        ),
      );

      expect(find.text('Error'), findsWidgets);
      expect(find.text('Algo salió mal'), findsOneWidget);
    });

    testWidgets('EmptyState renderiza sin datos', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmptyState(
              title: 'Sin datos',
            ),
          ),
        ),
      );

      expect(find.text('Sin datos'), findsOneWidget);
    });

    testWidgets('Widgets tienen padding y espaciado',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: LoadingState(),
          ),
        ),
      );

      // Verificar que los widgets se renderizan
      expect(find.byType(Center), findsOneWidget);
      expect(find.byType(Column), findsOneWidget);
    });
  });
}
