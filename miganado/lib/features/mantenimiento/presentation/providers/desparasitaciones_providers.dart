import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/desparasitaciones_usecases.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Use cases
final getDewormedUseCaseProvider = Provider<GetDewormedUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return GetDewormedUseCase(database: database);
});

final registerDewormedUseCaseProvider =
    Provider<RegisterDewormedUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegisterDewormedUseCase(database: database);
});

final updateDewormedUseCaseProvider = Provider<UpdateDewormedUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return UpdateDewormedUseCase(database: database);
});

// Provider para obtener desparasitaciones de un animal
final desparasitacionesProvider =
    FutureProvider.family<List<DesparasitacionEntity>, String>(
        (ref, animalUuid) async {
  try {
    LoggerService.startOperation('dewormed', 'desparasitaciones_providers');
    final useCase = ref.watch(getDewormedUseCaseProvider);
    final dewormed = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted('dewormed', 'desparasitaciones_providers');
    return dewormed;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error('Error obteniendo desparasitaciones', appEx, st,
        'desparasitaciones_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar las desparasitaciones: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

final registeringDewormedProvider = StateProvider<bool>((ref) => false);
