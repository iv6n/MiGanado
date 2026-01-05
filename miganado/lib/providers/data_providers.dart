import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/providers/database_providers.dart';

/// Provider que obtiene la lista de todos los animales
final animalesProvider = FutureProvider<List<Animal>>((ref) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getAllAnimales();
});

/// Provider para obtener un animal específico por ID
final animalByIdProvider =
    FutureProvider.family<Animal?, String>((ref, id) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getAnimalById(id);
});

/// Provider para pesajes de un animal específico
final pesajesByAnimalProvider = FutureProvider.family<List<Pesaje>, String>(
  (ref, animalId) async {
    final repository = ref.watch(pesajeRepositoryProvider);
    return repository.getPesajesByAnimalId(animalId);
  },
);

/// Provider para el último pesaje de un animal
final ultimoPesajeProvider = FutureProvider.family<Pesaje?, String>(
  (ref, animalId) async {
    final repository = ref.watch(pesajeRepositoryProvider);
    return repository.getUltimoPesaje(animalId);
  },
);

/// Provider para filtrar animales por tipo
final animalesByTipoProvider = FutureProvider.family<List<Animal>, String>(
  (ref, tipo) async {
    final repository = ref.watch(animalRepositoryProvider);
    return repository.getAnimalesByTipo(tipo);
  },
);

/// Provider que obtiene la lista de todas las ubicaciones
final ubicacionesProvider = FutureProvider<List<Ubicacion>>((ref) async {
  final repository = ref.watch(ubicacionRepositoryProvider);
  return repository.getAllUbicaciones();
});

/// Provider para obtener una ubicación específica por ID
final ubicacionByIdProvider =
    FutureProvider.family<Ubicacion?, String>((ref, id) async {
  final repository = ref.watch(ubicacionRepositoryProvider);
  return repository.getUbicacionById(id);
});

/// Provider que obtiene la información del ganadero
final ganaderoProvider = FutureProvider<Ganadero?>((ref) async {
  final repository = ref.watch(ganaderoRepositoryProvider);
  return repository.getGanadero();
});
