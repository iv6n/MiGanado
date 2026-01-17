import 'package:miganado/features/animals/data/models/pesaje_entity.dart';

/// Modelo de dominio para un pesaje de un animal
class Pesaje {
  final String uuid;
  final String animalUuid;
  final double peso;
  final String unidad; // 'kg' o 'lb'
  final DateTime fecha;
  final String? notas;
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;

  Pesaje({
    required this.uuid,
    required this.animalUuid,
    required this.peso,
    required this.unidad,
    required this.fecha,
    this.notas,
    required this.fechaCreacion,
    required this.fechaActualizacion,
  });

  /// Convertir desde PesajeEntity
  factory Pesaje.fromEntity(PesajeEntity entity) {
    return Pesaje(
      uuid: entity.uuid,
      animalUuid: entity.animalUuid,
      peso: entity.peso,
      unidad: entity.unidad,
      fecha: entity.fecha,
      notas: entity.notas,
      fechaCreacion: entity.fechaCreacion,
      fechaActualizacion: entity.fechaActualizacion,
    );
  }

  /// Convertir a PesajeEntity
  PesajeEntity toEntity() {
    return PesajeEntity(
      animalUuid: animalUuid,
      peso: peso,
      unidad: unidad,
      fecha: fecha,
    )
      ..uuid = uuid
      ..notas = notas
      ..fechaCreacion = fechaCreacion
      ..fechaActualizacion = fechaActualizacion;
  }

  /// Crear copia modificada
  Pesaje copyWith({
    String? uuid,
    String? animalUuid,
    double? peso,
    String? unidad,
    DateTime? fecha,
    String? notas,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
  }) {
    return Pesaje(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      peso: peso ?? this.peso,
      unidad: unidad ?? this.unidad,
      fecha: fecha ?? this.fecha,
      notas: notas ?? this.notas,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  String toString() =>
      'Pesaje($animalUuid: $peso $unidad @ ${fecha.toIso8601String()})';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pesaje && runtimeType == other.runtimeType && uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
}

/// Análisis de pesos y tendencias de un animal
class AnalisisPesos {
  final String animalUuid;
  final double pesoActual;
  final double? pesoAnterior;
  final double? ganancia;
  final double? gananciaPromedioDiaria;
  final double? gananciaPromedioSemanal;
  final int totalPesajes;
  final DateTime desde;
  final DateTime hasta;
  final String? tendencia; // 'Ascendente', 'Descendente', 'Estable'
  final double? pesoProyectadoMes;

  AnalisisPesos({
    required this.animalUuid,
    required this.pesoActual,
    this.pesoAnterior,
    this.ganancia,
    this.gananciaPromedioDiaria,
    this.gananciaPromedioSemanal,
    required this.totalPesajes,
    required this.desde,
    required this.hasta,
    this.tendencia,
    this.pesoProyectadoMes,
  });

  /// Obtener color de tendencia para UI
  String get colorTendencia {
    if (gananciaPromedioDiaria == null) return 'grey';
    if (gananciaPromedioDiaria! >= 0.75) return 'green'; // Óptimo
    if (gananciaPromedioDiaria! >= 0.5) return 'orange'; // Moderado
    return 'red'; // Bajo
  }

  /// Obtener descripción de tendencia
  String get descripcionTendencia {
    if (gananciaPromedioDiaria == null) return 'Sin datos suficientes';
    if (gananciaPromedioDiaria! >= 0.75) return 'Ganancia óptima ✓';
    if (gananciaPromedioDiaria! >= 0.5) return 'Ganancia moderada ⚠';
    return 'Ganancia baja ⚠';
  }

  /// Obtener icono para UI
  String get iconoTendencia {
    if (ganancia == null) return '—';
    if (ganancia! > 0) return '↗';
    if (ganancia! < 0) return '↘';
    return '→';
  }

  @override
  String toString() =>
      'AnalisisPesos($animalUuid: $pesoActual kg, ganancia: $ganancia)';
}
