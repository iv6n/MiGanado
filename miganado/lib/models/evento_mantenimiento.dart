import 'package:uuid/uuid.dart';

/// Maintenance event types
enum MaintenanceType {
  vaccine,
  bath,
  deworming,
  location,
  other,
}

/// Model for animal maintenance events
class MaintenanceEvent {
  /// Unique identifier
  final String id;

  /// Associated animal ID
  final String animalId;

  /// Event type
  final MaintenanceType type;

  /// Event date
  final DateTime date;

  /// Product description (vaccine, dewormer, etc.)
  final String product;

  /// Applied dose (optional)
  final String? dose;

  /// Product batch
  final String? batch;

  /// Additional observations
  final String observations;

  MaintenanceEvent({
    String? id,
    required this.animalId,
    required this.type,
    required this.date,
    required this.product,
    this.dose,
    this.batch,
    this.observations = '',
  }) : id = id ?? const Uuid().v4();

  /// Create a copy with modified values
  MaintenanceEvent copyWith({
    String? id,
    String? animalId,
    MaintenanceType? type,
    DateTime? date,
    String? product,
    String? dose,
    String? batch,
    String? observations,
  }) {
    return MaintenanceEvent(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      type: type ?? this.type,
      date: date ?? this.date,
      product: product ?? this.product,
      dose: dose ?? this.dose,
      batch: batch ?? this.batch,
      observations: observations ?? this.observations,
    );
  }

  /// Obtener nombre legible del tipo de mantenimiento
  String get nombreTipo {
    switch (type) {
      case MaintenanceType.vaccine:
        return 'Vacuna';
      case MaintenanceType.bath:
        return 'Baño Sanitario';
      case MaintenanceType.deworming:
        return 'Desparasitación';
      case MaintenanceType.location:
        return 'Cambio de Ubicación';
      case MaintenanceType.other:
        return 'Otro';
    }
  }
}
