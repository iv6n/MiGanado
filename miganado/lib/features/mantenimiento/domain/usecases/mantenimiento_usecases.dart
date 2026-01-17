import 'package:uuid/uuid.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';

/// Use case para registrar un nuevo evento de mantenimiento
class RegistrarMantenimientoUseCase {
  final MiGanadoDatabase database;

  RegistrarMantenimientoUseCase({required this.database});

  /// Registrar nuevo mantenimiento para un animal
  /// Valida que el animal exista
  Future<EventoMantenimiento> call({
    required String animalUuid,
    required String tipo,
    required String descripcion,
    required DateTime fecha,
    String? veterinario,
    String? medicamento,
    String? dosisAplicada,
    String? rutaAplicacion,
    DateTime? proximaDosis,
    String? observaciones,
  }) async {
    try {
      // 1. Validar que el animal existe
      final animal = await database.getAnimalByUuid(animalUuid);
      if (animal == null) {
        throw RegistrarMantenimientoException('Animal no encontrado');
      }

      // 2. Validar fecha no en el futuro
      if (fecha.isAfter(DateTime.now())) {
        throw RegistrarMantenimientoException(
            'La fecha no puede ser en el futuro');
      }

      // 3. Crear entidad de evento
      // Convertir tipo string a enum
      final tipoEnum = TipoEventoMantenimiento.values.firstWhere(
        (e) => e.name.toLowerCase() == tipo.toLowerCase(),
        orElse: () => TipoEventoMantenimiento.otro,
      );

      final eventoEntity = EventoMantenimientoEntity(
        animalUuid: animalUuid,
        tipo: tipoEnum,
        descripcion: descripcion,
        fecha: fecha,
        veterinario: veterinario,
        medicamento: medicamento,
        dosisAplicada: dosisAplicada,
        rutaAplicacion: rutaAplicacion,
        proximaDosis: proximaDosis,
        observaciones: observaciones,
      )
        ..uuid = const Uuid().v4()
        ..fechaCreacion = DateTime.now()
        ..fechaActualizacion = DateTime.now();

      // 4. Guardar en Isar
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.eventoMantenimientoEntitys
            .put(eventoEntity);
      });

      print('✓ Mantenimiento registrado: ${animal.numeroArete} - $tipo');

      return EventoMantenimiento.fromEntity(eventoEntity);
    } catch (e) {
      if (e is RegistrarMantenimientoException) {
        rethrow;
      }
      throw RegistrarMantenimientoException(
          'Error al registrar mantenimiento: $e');
    }
  }
}

/// Use case para obtener historial de mantenimiento de un animal
class ObtenerHistorialMantenimientoUseCase {
  final MiGanadoDatabase database;

  ObtenerHistorialMantenimientoUseCase({required this.database});

  /// Obtener todos los mantenimientos de un animal
  /// Ordena por fecha descendente (más recientes primero)
  Future<List<EventoMantenimiento>> call(String animalUuid) async {
    try {
      final eventos = await database.getEventosByAnimalUuid(animalUuid);
      return eventos
          .map((entity) => EventoMantenimiento.fromEntity(entity))
          .toList();
    } catch (e) {
      throw ObtenerHistorialException('Error al obtener historial: $e');
    }
  }
}

/// Use case para obtener próximas dosis pendientes
class ObtenerProximasDosisUseCase {
  final MiGanadoDatabase database;

  ObtenerProximasDosisUseCase({required this.database});

  /// Obtener eventos de mantenimiento con próxima dosis pendiente
  /// Útil para alertas
  Future<List<EventoMantenimiento>> call(String animalUuid) async {
    try {
      final eventos = await database.getEventosByAnimalUuid(animalUuid);
      final ahora = DateTime.now();

      return eventos
          .where((evento) =>
              evento.proximaDosis != null &&
              evento.proximaDosis!.isAfter(ahora))
          .map((entity) => EventoMantenimiento.fromEntity(entity))
          .toList();
    } catch (e) {
      throw ObtenerProximasDosisException(
          'Error al obtener próximas dosis: $e');
    }
  }
}

/// Excepciones personalizadas
class RegistrarMantenimientoException implements Exception {
  final String message;
  RegistrarMantenimientoException(this.message);
  @override
  String toString() => 'RegistrarMantenimientoException: $message';
}

class ObtenerHistorialException implements Exception {
  final String message;
  ObtenerHistorialException(this.message);
  @override
  String toString() => 'ObtenerHistorialException: $message';
}

class ObtenerProximasDosisException implements Exception {
  final String message;
  ObtenerProximasDosisException(this.message);
  @override
  String toString() => 'ObtenerProximasDosisException: $message';
}
