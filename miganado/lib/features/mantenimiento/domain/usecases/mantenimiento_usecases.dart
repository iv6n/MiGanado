import 'package:uuid/uuid.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';

/// Caso de uso para registrar un nuevo evento de mantenimiento
class RegisterMaintenanceEventUseCase {
  final MiGanadoDatabase database;

  RegisterMaintenanceEventUseCase({required this.database});

  /// Registra un nuevo evento de mantenimiento para un animal
  /// Valida que el animal exista y que la fecha no sea futura
  Future<EventoMantenimiento> call({
    required String animalUuid,
    required String type,
    required String description,
    required DateTime date,
    String? veterinarian,
    String? medicament,
    String? appliedDosage,
    String? applicationRoute,
    DateTime? nextDosage,
    String? observations,
  }) async {
    try {
      // 1. Validar que el animal existe
      final animal = await database.getAnimalByUuid(animalUuid);
      if (animal == null) {
        throw RegisterMaintenanceEventException('Animal no encontrado');
      }

      // 2. Validar que la fecha no sea en el futuro
      if (date.isAfter(DateTime.now())) {
        throw RegisterMaintenanceEventException(
            'La fecha no puede ser en el futuro');
      }

      // 3. Crear entidad de evento
      // Convertir tipo string a enum
      final typeEnum = TipoEventoMantenimiento.values.firstWhere(
        (e) => e.name.toLowerCase() == type.toLowerCase(),
        orElse: () => TipoEventoMantenimiento.otro,
      );

      final eventEntity = EventoMantenimientoEntity(
        animalUuid: animalUuid,
        tipo: typeEnum,
        descripcion: description,
        fecha: date,
        veterinario: veterinarian,
        medicamento: medicament,
        dosisAplicada: appliedDosage,
        rutaAplicacion: applicationRoute,
        proximaDosis: nextDosage,
        observaciones: observations,
      )
        ..uuid = const Uuid().v4()
        ..fechaCreacion = DateTime.now()
        ..fechaActualizacion = DateTime.now();

      // 4. Guardar en Isar
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.eventoMantenimientoEntitys.put(eventEntity);
      });

      print('✓ Mantenimiento registrado: ${animal.earTagNumber} - $type');

      return EventoMantenimiento.fromEntity(eventEntity);
    } catch (e) {
      if (e is RegisterMaintenanceEventException) {
        rethrow;
      }
      throw RegisterMaintenanceEventException(
          'Error al registrar mantenimiento: $e');
    }
  }
}

/// Caso de uso para obtener historial de mantenimiento de un animal
class GetMaintenanceHistoryUseCase {
  final MiGanadoDatabase database;

  GetMaintenanceHistoryUseCase({required this.database});

  /// Obtiene todos los eventos de mantenimiento de un animal
  /// Ordena por fecha descendente (más recientes primero)
  Future<List<EventoMantenimiento>> call(String animalUuid) async {
    try {
      final events = await database.getEventosByAnimalUuid(animalUuid);
      return events
          .map((entity) => EventoMantenimiento.fromEntity(entity))
          .toList();
    } catch (e) {
      throw GetMaintenanceHistoryException('Error al obtener historial: $e');
    }
  }
}

/// Caso de uso para obtener próximas dosis pendientes
class GetUpcomingDosagesUseCase {
  final MiGanadoDatabase database;

  GetUpcomingDosagesUseCase({required this.database});

  /// Obtiene eventos de mantenimiento con próxima dosis pendiente
  /// Útil para generar alertas
  Future<List<EventoMantenimiento>> call(String animalUuid) async {
    try {
      final events = await database.getEventosByAnimalUuid(animalUuid);
      final now = DateTime.now();

      return events
          .where((event) =>
              event.proximaDosis != null && event.proximaDosis!.isAfter(now))
          .map((entity) => EventoMantenimiento.fromEntity(entity))
          .toList();
    } catch (e) {
      throw GetUpcomingDosagesException('Error al obtener próximas dosis: $e');
    }
  }
}

/// Excepción personalizada para registro de mantenimiento
class RegisterMaintenanceEventException implements Exception {
  final String message;
  RegisterMaintenanceEventException(this.message);
  @override
  String toString() => 'RegisterMaintenanceEventException: $message';
}

/// Excepción personalizada para obtener historial
class GetMaintenanceHistoryException implements Exception {
  final String message;
  GetMaintenanceHistoryException(this.message);
  @override
  String toString() => 'GetMaintenanceHistoryException: $message';
}

/// Excepción personalizada para obtener dosis próximas
class GetUpcomingDosagesException implements Exception {
  final String message;
  GetUpcomingDosagesException(this.message);
  @override
  String toString() => 'GetUpcomingDosagesException: $message';
}
