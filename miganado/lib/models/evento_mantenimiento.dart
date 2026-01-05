import 'package:uuid/uuid.dart';

/// Tipos de eventos de mantenimiento
enum TipoMantenimiento {
  vacuna,
  banio,
  desparasitacion,
  ubicacion,
  otro,
}

/// Modelo para eventos de mantenimiento del animal
class EventoMantenimiento {
  /// Identificador único
  final String id;

  /// ID del animal asociado
  final String animalId;

  /// Tipo de evento
  final TipoMantenimiento tipo;

  /// Fecha del evento
  final DateTime fecha;

  /// Descripción del producto usado (vacuna, desparasitante, etc.)
  final String producto;

  /// Dosis aplicada (opcional)
  final String? dosis;

  /// Lote del producto
  final String? lote;

  /// Observaciones adicionales
  final String observaciones;

  EventoMantenimiento({
    String? id,
    required this.animalId,
    required this.tipo,
    required this.fecha,
    required this.producto,
    this.dosis,
    this.lote,
    this.observaciones = '',
  }) : id = id ?? const Uuid().v4();

  /// Crear una copia con valores modificados
  EventoMantenimiento copyWith({
    String? id,
    String? animalId,
    TipoMantenimiento? tipo,
    DateTime? fecha,
    String? producto,
    String? dosis,
    String? lote,
    String? observaciones,
  }) {
    return EventoMantenimiento(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      tipo: tipo ?? this.tipo,
      fecha: fecha ?? this.fecha,
      producto: producto ?? this.producto,
      dosis: dosis ?? this.dosis,
      lote: lote ?? this.lote,
      observaciones: observaciones ?? this.observaciones,
    );
  }

  /// Obtener nombre legible del tipo de mantenimiento
  String get nombreTipo {
    switch (tipo) {
      case TipoMantenimiento.vacuna:
        return 'Vacuna';
      case TipoMantenimiento.banio:
        return 'Banio Sanitario';
      case TipoMantenimiento.desparasitacion:
        return 'Desparasitacion';
      case TipoMantenimiento.ubicacion:
        return 'Cambio de Ubicacion';
      case TipoMantenimiento.otro:
        return 'Otro';
    }
  }
}
