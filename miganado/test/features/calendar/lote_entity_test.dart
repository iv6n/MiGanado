import 'package:flutter_test/flutter_test.dart';
// ...existing code...
import 'package:miganado/features/calendar/data/models/lote_ganadero_entity.dart';

void main() {
  group('LoteGanaderoEntity', () {
    test('Crear lote correctamente', () {
      final lote = LoteGanaderoEntity(
        nombre: 'Lote A - Lecherías',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.leche,
        cantidadAnimales: 50,
      );

      expect(lote.nombre, equals('Lote A - Lecherías'));
      expect(lote.especie, equals(EspecieLote.bovino));
      expect(lote.cantidadAnimales, equals(50));
      expect(lote.activo, equals(true));
      expect(lote.uuid, isNotEmpty);
    });

    test('UUID se genera automáticamente', () {
      final lote1 = LoteGanaderoEntity(
        nombre: 'Lote 1',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.carne,
        cantidadAnimales: 30,
      );

      final lote2 = LoteGanaderoEntity(
        nombre: 'Lote 2',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.carne,
        cantidadAnimales: 30,
      );

      expect(lote1.uuid, isNotEmpty);
      expect(lote2.uuid, isNotEmpty);
      expect(lote1.uuid, isNot(equals(lote2.uuid)));
    });

    test('Agregar animal al lote', () {
      final lote = LoteGanaderoEntity(
        nombre: 'Lote Test',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.leche,
        cantidadAnimales: 1,
      );

      const animalId = 'animal-001';
      lote.agregarAnimal(animalId);

      expect(lote.animalIds.contains(animalId), isTrue);
    });

    test('No duplicar animal al agregar', () {
      final lote = LoteGanaderoEntity(
        nombre: 'Lote Test',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.leche,
        cantidadAnimales: 1,
      );

      const animalId = 'animal-001';
      lote.agregarAnimal(animalId);
      lote.agregarAnimal(animalId);

      expect(lote.animalIds.length, equals(1));
    });

    test('Remover animal del lote', () {
      final lote = LoteGanaderoEntity(
        nombre: 'Lote Test',
        especie: EspecieLote.bovino,
        tipoProduccion: TipoProduccion.leche,
        cantidadAnimales: 2,
      );

      const animalId1 = 'animal-001';
      const animalId2 = 'animal-002';
      lote.agregarAnimal(animalId1);
      lote.agregarAnimal(animalId2);

      expect(lote.animalIds.length, equals(2));

      lote.removerAnimal(animalId1);

      expect(lote.animalIds.contains(animalId1), isFalse);
      expect(lote.animalIds.contains(animalId2), isTrue);
      expect(lote.animalIds.length, equals(1));
    });

    test('Lote ovino con tipo producción lana', () {
      final lote = LoteGanaderoEntity(
        nombre: 'Lote de Ovejas',
        especie: EspecieLote.ovino,
        tipoProduccion: TipoProduccion.levante,
        cantidadAnimales: 100,
      );

      expect(lote.especie, equals(EspecieLote.ovino));
      expect(lote.tipoProduccion, equals(TipoProduccion.levante));
      expect(lote.cantidadAnimales, equals(100));
    });
  });
}
