import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/database.dart';
import 'package:miganado/repositories/animal_repository.dart';
import 'package:miganado/repositories/pesaje_repository.dart';
import 'package:miganado/repositories/ubicacion_repository.dart';
import 'package:miganado/repositories/ganadero_repository.dart';

/// Variable global que mantendrá la instancia de la base de datos
late MiGanadoDatabase _databaseInstance;

/// Provider de la base de datos
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  return _databaseInstance;
});

/// Provider del repositorio de animales
final animalRepositoryProvider = Provider<AnimalRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return AnimalRepository(database);
});

/// Provider del repositorio de pesajes
final pesajeRepositoryProvider = Provider<PesajeRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return PesajeRepository(database);
});

/// Provider del repositorio de ubicaciones
final ubicacionRepositoryProvider = Provider<UbicacionRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return UbicacionRepository(database);
});

/// Provider del repositorio de ganadero
final ganaderoRepositoryProvider = Provider<GanaderoRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return GanaderoRepository(database);
});

/// Función para inicializar la base de datos (llamar desde main.dart)
Future<void> initializeDatabaseProvider() async {
  final database = MiGanadoDatabase();
  await database.init();
  _databaseInstance = database;
}
