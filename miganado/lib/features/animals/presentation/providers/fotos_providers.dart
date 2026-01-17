import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/entities/foto.dart';
import 'package:miganado/features/animals/domain/usecases/fotos_usecases.dart';

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
  final useCase = ref.watch(obtenerFotosByAnimalUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

// Provider para estado de captura de foto
final capturandoFotoProvider = StateProvider<bool>((ref) {
  return false;
});

// Provider para notificaciones
final fotoNotificationProvider = StateProvider<String?>((ref) {
  return null;
});
