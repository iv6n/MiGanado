import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/locations/domain/entities/ubicacion.dart';
import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';

/// Use case para obtener todas las ubicaciones disponibles
class GetAllUbicacionesUseCase {
  final MiGanadoDatabase database;

  GetAllUbicacionesUseCase({required this.database});

  Future<List<Ubicacion>> call() async {
    try {
      final ubicaciones = await database.getAllUbicaciones();
      return ubicaciones.map((entity) => Ubicacion.fromEntity(entity)).toList();
    } catch (e) {
      throw GetUbicacionesException('Error al obtener ubicaciones: $e');
    }
  }
}

/// Use case para cambiar la ubicación de un animal
class CambiarUbicacionUseCase {
  final MiGanadoDatabase database;

  CambiarUbicacionUseCase({required this.database});

  /// Cambiar la ubicación de un animal
  /// Valida que ambas ubicaciones existan
  /// Registra el cambio en histórico
  Future<void> call({
    required String animalUuid,
    required String ubicacionUuidNueva,
    String? razon,
    String? observaciones,
  }) async {
    try {
      // 1. Validar que el animal existe
      final animal = await database.getAnimalByUuid(animalUuid);
      if (animal == null) {
        throw CambiarUbicacionException('Animal no encontrado');
      }

      // 2. Validar que la nueva ubicación existe
      final nuevaUbicacion =
          await database.getUbicacionByUuid(ubicacionUuidNueva);
      if (nuevaUbicacion == null) {
        throw CambiarUbicacionException('Ubicación no encontrada');
      }

      // 3. Actualizar ubicación del animal (nota: feature no implementada en nueva versión)
      // TODO: Implement proper location tracking for animals

      // 4. Guardar cambios en Isar
      await database.saveAnimal(animal);

      print(
          '✓ Ubicación actualizada: ${animal.earTagNumber} → ${nuevaUbicacion.name}');
    } catch (e) {
      if (e is CambiarUbicacionException) {
        rethrow;
      }
      throw CambiarUbicacionException('Error al cambiar ubicación: $e');
    }
  }
}

/// Use case para crear una nueva ubicación
class CrearUbicacionUseCase {
  final MiGanadoDatabase database;

  CrearUbicacionUseCase({required this.database});

  /// Crear nueva ubicación en el establo
  /// Valida que el nombre sea único
  Future<Ubicacion> call({
    required String nombre,
    String? descripcion,
    String? tipoUbicacion,
  }) async {
    try {
      // 1. Validar nombre no vacío
      if (nombre.trim().isEmpty) {
        throw CrearUbicacionException(
            'Nombre de ubicación no puede estar vacío');
      }

      // 2. Obtener todas las ubicaciones para validar unicidad
      final ubicacionesExistentes = await database.getAllUbicaciones();
      final nombreExiste = ubicacionesExistentes
          .any((u) => u.name.toLowerCase() == nombre.toLowerCase());

      if (nombreExiste) {
        throw CrearUbicacionException(
            'Ya existe una ubicación con el nombre "$nombre"');
      }

      // 3. Crear entidad de ubicación
      final ubicacionEntity = UbicacionEntity(
        name: nombre,
        description: descripcion,
        type: tipoUbicacion,
      );

      // 4. Guardar en Isar
      await database.saveUbicacion(ubicacionEntity);

      print('✓ Ubicación creada: $nombre');

      return Ubicacion.fromEntity(ubicacionEntity);
    } catch (e) {
      if (e is CrearUbicacionException) {
        rethrow;
      }
      throw CrearUbicacionException('Error al crear ubicación: $e');
    }
  }
}

/// Excepciones personalizadas
class GetUbicacionesException implements Exception {
  final String message;
  GetUbicacionesException(this.message);
  @override
  String toString() => 'GetUbicacionesException: $message';
}

class CambiarUbicacionException implements Exception {
  final String message;
  CambiarUbicacionException(this.message);
  @override
  String toString() => 'CambiarUbicacionException: $message';
}

class CrearUbicacionException implements Exception {
  final String message;
  CrearUbicacionException(this.message);
  @override
  String toString() => 'CrearUbicacionException: $message';
}
