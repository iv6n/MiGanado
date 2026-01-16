import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/core/enums/index.dart';

part 'mantenimiento_registro.g.dart';

/// Registro de un evento de mantenimiento sanitario o productivo
/// Consolidación de todos los mantenimientos (vacunación, desparasitación, revisión, etc.)
@HiveType(typeId: 21)
class MantenimientoRegistro {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal asociado
  @HiveField(1)
  final String animalId;

  /// Tipo de mantenimiento realizado
  @HiveField(2)
  final TipoMantenimiento tipo;

  /// Descripción específica
  /// Ej: "Vacuna fiebre aftosa", "Ivermectina 1%", "Revisión general"
  @HiveField(3)
  final String? descripcion;

  /// Notas adicionales del veterinario o ganadero
  @HiveField(4)
  final String? notas;

  /// Fecha en que se realizó el mantenimiento
  @HiveField(5)
  final DateTime fecha;

  /// Costo del mantenimiento (opcional)
  /// Si existe, se puede crear automáticamente un CostoRegistro
  @HiveField(6)
  final double? costo;

  /// Próxima fecha recomendada para este tipo de mantenimiento
  /// Calculada automáticamente según ciclo recomendado
  @HiveField(7)
  final DateTime? proximaFechaRecomendada;

  /// ID del CostoRegistro asociado (si se generó uno)
  @HiveField(8)
  final String? costoRegistroId;

  /// Datos específicos según tipo de mantenimiento (JSON string, opcional)
  /// Ej para vacunación: {"nombreVacuna": "Fiebre Aftosa", "lote": "ABC123"}
  @HiveField(9)
  final String? datoEspecifico;

  /// Fecha de creación del registro
  @HiveField(10)
  final DateTime fechaRegistro;

  MantenimientoRegistro({
    String? id,
    required this.animalId,
    required this.tipo,
    this.descripcion,
    this.notas,
    required this.fecha,
    this.costo,
    this.proximaFechaRecomendada,
    this.costoRegistroId,
    this.datoEspecifico,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales actualizados
  MantenimientoRegistro copyWith({
    String? id,
    String? animalId,
    TipoMantenimiento? tipo,
    String? descripcion,
    String? notas,
    DateTime? fecha,
    double? costo,
    DateTime? proximaFechaRecomendada,
    String? costoRegistroId,
    String? datoEspecifico,
    DateTime? fechaRegistro,
  }) {
    return MantenimientoRegistro(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      notas: notas ?? this.notas,
      fecha: fecha ?? this.fecha,
      costo: costo ?? this.costo,
      proximaFechaRecomendada:
          proximaFechaRecomendada ?? this.proximaFechaRecomendada,
      costoRegistroId: costoRegistroId ?? this.costoRegistroId,
      datoEspecifico: datoEspecifico ?? this.datoEspecifico,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  /// Indica si este mantenimiento está vencido (próxima fecha pasada)
  bool get estaVencido {
    if (proximaFechaRecomendada == null) return false;
    return DateTime.now().isAfter(proximaFechaRecomendada!);
  }

  /// Indica si el mantenimiento está próximo a vencer (dentro de 30 días)
  bool get estaProximo {
    if (proximaFechaRecomendada == null) return false;
    final ahora = DateTime.now();
    final treintaDiasAfter = ahora.add(const Duration(days: 30));
    return proximaFechaRecomendada!.isAfter(ahora) &&
        proximaFechaRecomendada!.isBefore(treintaDiasAfter);
  }

  @override
  String toString() =>
      'MantenimientoRegistro(id: $id, tipo: ${tipo.nombreEspanol}, fecha: $fecha)';
}
