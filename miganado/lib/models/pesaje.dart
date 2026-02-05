import 'package:uuid/uuid.dart';

/// Weighing model - Animal weight record on a specific date
class Weighing {
  /// Unique identifier (UUID)
  final String id;

  /// ID of the animal this weighing belongs to
  final String animalId;

  /// Weight in kilograms
  final double weightKg;

  /// Date and time of weighing
  final DateTime date;

  /// Optional notes about the weighing
  final String? notes;

  /// Constructor
  Weighing({
    String? id,
    required this.animalId,
    required this.weightKg,
    DateTime? date,
    this.notes,
  })  : id = id ?? const Uuid().v4(),
        date = date ?? DateTime.now();

  /// Copy the object with updated optional fields
  Weighing copyWith({
    String? id,
    String? animalId,
    double? weightKg,
    DateTime? date,
    String? notes,
  }) {
    return Weighing(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      weightKg: weightKg ?? this.weightKg,
      date: date ?? this.date,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() =>
      'Weighing(id: $id, animalId: $animalId, weightKg: $weightKg, date: $date)';
}
