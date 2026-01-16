import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/core/enums/index.dart';

part 'costo_registro.g.dart';

/// Registro de costo asociado a un animal
/// Todos los gastos del animal están registrados aquí
/// REGLA: costoTotalAcumulado = compra_inicial + sum(todos los CostoRegistro)
@HiveType(typeId: 22)
class CostoRegistro {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal asociado
  @HiveField(1)
  final String animalId;

  /// Tipo de costo
  @HiveField(2)
  final TipoCosto tipo;

  /// Descripción detallada del costo
  /// Ej: "Compra en feria", "Consulta veterinaria Dr. X", "Concentrado Pro-Max"
  @HiveField(3)
  final String? descripcion;

  /// Monto en unidades monetarias
  @HiveField(4)
  final double monto;

  /// Fecha en que se incurrió el costo
  @HiveField(5)
  final DateTime fecha;

  /// ID del MantenimientoRegistro asociado (si se generó desde un mantenimiento)
  /// Permite trazabilidad: "Este costo viene de X vacunación"
  @HiveField(6)
  final String? mantenimientoRelacionadoId;

  /// Notas adicionales
  @HiveField(7)
  final String? notas;

  /// Fecha de creación del registro
  @HiveField(8)
  final DateTime fechaRegistro;

  CostoRegistro({
    String? id,
    required this.animalId,
    required this.tipo,
    this.descripcion,
    required this.monto,
    required this.fecha,
    this.mantenimientoRelacionadoId,
    this.notas,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales actualizados
  CostoRegistro copyWith({
    String? id,
    String? animalId,
    TipoCosto? tipo,
    String? descripcion,
    double? monto,
    DateTime? fecha,
    String? mantenimientoRelacionadoId,
    String? notas,
    DateTime? fechaRegistro,
  }) {
    return CostoRegistro(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      monto: monto ?? this.monto,
      fecha: fecha ?? this.fecha,
      mantenimientoRelacionadoId:
          mantenimientoRelacionadoId ?? this.mantenimientoRelacionadoId,
      notas: notas ?? this.notas,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  /// Indica si es el costo de compra inicial
  bool get esCompraInicial {
    return tipo == TipoCosto.compra_inicial;
  }

  /// Indica si está asociado a un mantenimiento
  bool get tieneMantenimientoAsociado {
    return mantenimientoRelacionadoId != null;
  }

  @override
  String toString() =>
      'CostoRegistro(id: $id, tipo: ${tipo.nombreEspanol}, monto: $monto, fecha: $fecha)';
}
