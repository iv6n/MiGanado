import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/entities/foto.dart';
import 'package:miganado/features/animals/domain/usecases/fotos_usecases.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// Provider de la base de datos
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Providers de use cases
final capturarFotoUseCaseProvider = Provider<CapturarFotoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return CapturarFotoUseCase(database: database);
});

final obtenerFotosByAnimalUseCaseProvider =
    Provider<ObtenerFotosByAnimalUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerFotosByAnimalUseCase(database: database);
});

final eliminarFotoUseCaseProvider = Provider<EliminarFotoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return EliminarFotoUseCase(database: database);
});

final actualizarFotoUseCaseProvider = Provider<ActualizarFotoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ActualizarFotoUseCase(database: database);
});

// Provider para obtener fotos de un animal
final fotosByAnimalProvider =
    FutureProvider.family<List<Foto>, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('fotosByAnimal', 'fotos_providers');
    final useCase = ref.watch(obtenerFotosByAnimalUseCaseProvider);
    final fotos = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted('fotosByAnimal', 'fotos_providers');
    return fotos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error('Error obteniendo fotos', appEx, st, 'fotos_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar las fotos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// Provider para estado de captura de foto
final capturandoFotoProvider = StateProvider<bool>((ref) {
  return false;
});

// Provider para notificaciones
final fotoNotificationProvider = StateProvider<String?>((ref) {
  return null;
});
