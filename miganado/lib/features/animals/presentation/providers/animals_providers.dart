import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';

// ============ DATABASE PROVIDER ============
/// Provider que proporciona acceso a la base de datos Isar
/// Se inicializa en main.dart con overrides
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  throw UnimplementedError(
    'databaseProvider debe inicializarse en main.dart',
  );
});

// ============ ANIMALS LIST PROVIDER ============
/// Provider FutureProvider para obtener lista de todos los animales
/// Invalidarse después de crear/actualizar/eliminar un animal
final animalsListProvider = FutureProvider<List<AnimalEntity>>((ref) async {
  final database = ref.watch(databaseProvider);
  return database.getAllAnimales();
});
