import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// ============ DATABASE PROVIDER ============
/// Provider que proporciona acceso a la base de datos Isar
/// Se inicializa en main.dart con overrides
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  throw UnimplementedError(
    'databaseProvider debe inicializarse en main.dart',
  );
});

// ============ ANIMALS LIST PROVIDER ============
/// Provider FutureProvider para obtener lista de todos los animales (domain entities)
/// Devuelve List<Animal> - convertidos desde AnimalEntity
/// Invalidarse después de crear/actualizar/eliminar un animal
final animalsListProvider = FutureProvider<List<Animal>>((ref) async {
  try {
    LoggerService.startOperation('getAllAnimales', 'animals_providers');
    final database = ref.watch(databaseProvider);
    final animalEntities = await database.getAllAnimales();
    // Convertir AnimalEntity → Animal (domain)
    final animals = animalEntities.map((e) => Animal.fromEntity(e)).toList();
    LoggerService.operationCompleted('getAllAnimales', 'animals_providers');
    return animals;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando animales', appEx, st, 'animals_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar los animales: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});
