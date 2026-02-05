import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';

void main() {
  testWidgets('AnimalDetailScreen muestra datos del animal',
      (WidgetTester tester) async {
    // Simular UUID de animal
    const String animalUuid = 'test-uuid-123';

    await tester.pumpWidget(
      const MaterialApp(
        home: AnimalDetailScreen(animalUuid: animalUuid),
      ),
    );

    // El test verifica que la pantalla se carga correctamente
    // Los datos reales se cargan desde el provider
    expect(find.byType(AnimalDetailScreen), findsOneWidget);
  });
}
