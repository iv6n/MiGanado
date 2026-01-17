import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/animal_detail.dart';

/// Caso de uso para obtener los detalles completos de un animal
/// Agrega: ubicación actual, eventos históricos y observaciones
class GetAnimalDetailUseCase {
  final MiGanadoDatabase database;

  GetAnimalDetailUseCase({required this.database});

  /// Obtener detalles del animal por UUID
  /// Retorna AnimalDetail con información completa
  /// Lanza excepción si animal no existe
  Future<AnimalDetail> call(String uuid) async {
    try {
      // 1. Obtener el animal
      final animalEntity = await database.getAnimalByUuid(uuid);
      if (animalEntity == null) {
        throw GetAnimalDetailException('Animal con UUID $uuid no encontrado');
      }

      final animal = Animal.fromEntity(animalEntity);

      // 2. Obtener ubicación actual (si existe)
      final ubicacionNombre = animalEntity.ubicacion;

      // 3. Obtener observaciones del animal
      final observaciones = animalEntity.observaciones;
      final ultimaActualizacion = animalEntity.fechaActualizacion;

      // 4. Construir histórico de eventos (últimos 10)
      final eventos = await _construirHistorico(uuid);

      return AnimalDetail(
        animal: animal,
        ubicacionActual: ubicacionNombre,
        eventos: eventos,
        observaciones: observaciones,
        ultimaActualizacionObservaciones: ultimaActualizacion,
      );
    } catch (e) {
      if (e is GetAnimalDetailException) {
        rethrow;
      }
      throw GetAnimalDetailException('Error al obtener detalles: $e');
    }
  }

  /// Construir lista de eventos históricos (últimos 10)
  /// Ordena cronológicamente (más recientes primero)
  Future<List<EventoHistorico>> _construirHistorico(String animalUuid) async {
    final eventos = <EventoHistorico>[];

    // Obtener pesajes (últimos 3)
    final pesajes = await database.getPesajesByAnimalUuid(animalUuid);
    for (final pesaje in pesajes.take(3)) {
      eventos.add(
        EventoHistorico(
          id: pesaje.id.toString(),
          tipo: 'pesaje',
          descripcion: '${pesaje.peso} ${pesaje.unidad}',
          fecha: pesaje.fecha,
          datos: {'peso': pesaje.peso, 'notas': pesaje.notas},
        ),
      );
    }

    // Obtener mantenimientos (últimos 3)
    final mantenimientos = await database.getEventosByAnimalUuid(animalUuid);
    for (final evento in mantenimientos.take(3)) {
      eventos.add(
        EventoHistorico(
          id: evento.id.toString(),
          tipo: 'mantenimiento',
          descripcion: evento.descripcion,
          fecha: evento.fecha,
          datos: {
            'tipo': evento.tipo.toString(),
            'responsable': evento.responsable,
            'proximaFecha': evento.proximaFecha?.toString(),
          },
        ),
      );
    }

    // Obtener costos (últimos 2)
    final costos = await database.getCostosByAnimalUuid(animalUuid);
    for (final costo in costos.take(2)) {
      eventos.add(
        EventoHistorico(
          id: costo.id.toString(),
          tipo: 'costo',
          descripcion: '${costo.descripcion}: \$${costo.monto}',
          fecha: costo.fecha,
          datos: {'descripcion': costo.descripcion, 'monto': costo.monto},
        ),
      );
    }

    // Ordenar por fecha descendente (más recientes primero)
    eventos.sort((a, b) => b.fecha.compareTo(a.fecha));

    // Retornar máximo 10 eventos
    return eventos.take(10).toList();
  }
}

/// Excepción personalizada para errores en obtención de detalles
class GetAnimalDetailException implements Exception {
  final String message;

  GetAnimalDetailException(this.message);

  @override
  String toString() => 'GetAnimalDetailException: $message';
}
