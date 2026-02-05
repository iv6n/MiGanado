import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/calendar/data/models/lote_ganadero_entity.dart';

void main() {
  group('LivestockLotEntity', () {
    test('Crear lote correctamente', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote A - Lecherías'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.milk
        ..animalCount = 50;

      expect(lote.name, equals('Lote A - Lecherías'));
      expect(lote.species, equals(LotSpecies.cattle));
      expect(lote.animalCount, equals(50));
      expect(lote.uuid, isNotEmpty);
    });

    test('UUID se genera automáticamente', () {
      final lote1 = LivestockLotEntity()
        ..name = 'Lote 1'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.meat
        ..animalCount = 30;

      final lote2 = LivestockLotEntity()
        ..name = 'Lote 2'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.meat
        ..animalCount = 30;

      expect(lote1.uuid, isNotEmpty);
      expect(lote2.uuid, isNotEmpty);
      expect(lote1.uuid, isNot(equals(lote2.uuid)));
    });

    test('Agregar animal al lote', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote Test'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.milk
        ..animalCount = 1;

      const animalId = 'animal-001';
      lote.agregarAnimal(animalId);

      expect(lote.animalIds.contains(animalId), isTrue);
    });

    test('No duplicar animal al agregar', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote Test'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.milk
        ..animalCount = 1;

      const animalId = 'animal-001';
      lote.agregarAnimal(animalId);
      lote.agregarAnimal(animalId);

      expect(lote.animalIds.length, equals(1));
    });

    test('Remover animal del lote', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote Test'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.milk
        ..animalCount = 2;

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

    test('Lote ovino con tipo producción raising', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote de Ovejas'
        ..species = LotSpecies.ovine
        ..productionType = ProductionType.raising
        ..animalCount = 100;

      expect(lote.species, equals(LotSpecies.ovine));
      expect(lote.productionType, equals(ProductionType.raising));
      expect(lote.animalCount, equals(100));
    });
  });
}
