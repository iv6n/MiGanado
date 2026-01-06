import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'animal_model.g.dart';

/// Tipos de ganado disponibles
enum TipoGanado {
  vaca,
  becerro,
  toro,
  novillo,
  caballo,
  mula,
  burro,
}

/// Sexo del animal
enum Sexo {
  macho,
  hembra,
}

/// Estado reproductivo de la hembra
enum EstadoReproductivo {
  prenada,
  lactando,
  seca,
  no_definido,
}

/// Modelo de Animal con TypeAdapter para Hive
@HiveType(typeId: 0)
class AnimalModel {
  /// Identificador único (UUID)
  @HiveField(0)
  final String id;

  /// Número de arete
  @HiveField(1)
  final String numeroArete;

  /// Nombre personalizado del animal
  @HiveField(2)
  final String? nombrePersonalizado;

  /// Tipo de ganado
  @HiveField(3)
  final TipoGanado tipo;

  /// Sexo del animal
  @HiveField(4)
  final Sexo sexo;

  /// Raza del animal
  @HiveField(5)
  final String raza;

  /// Fecha de nacimiento
  @HiveField(6)
  final DateTime? fechaNacimiento;

  /// Notas adicionales
  @HiveField(7)
  final String notas;

  /// Precio de compra
  @HiveField(8)
  final double? precioCompra;

  /// Precio de venta
  @HiveField(9)
  final double? precioVenta;

  /// Costos extras
  @HiveField(10)
  final Map<String, double> costosExtra;

  /// ID de ubicación
  @HiveField(11)
  final String? ubicacionId;

  /// ¿Está vacunado?
  @HiveField(12)
  final bool vacunado;

  /// Fecha de última vacuna
  @HiveField(13)
  final DateTime? fechaUltimaVacuna;

  /// Tipo de vacuna
  @HiveField(14)
  final String? tipoVacuna;

  /// ¿Está desparasitado?
  @HiveField(15)
  final bool desparasitado;

  /// Fecha de último desparasitante
  @HiveField(16)
  final DateTime? fechaUltimoDesparasitante;

  /// Tipo de desparasitante
  @HiveField(17)
  final String? tipoDesparasitante;

  /// ¿Tiene vitaminas?
  @HiveField(18)
  final bool tieneVitaminas;

  /// Fecha de vitaminas
  @HiveField(19)
  final DateTime? fechaVitaminas;

  /// ¿Tiene otros tratamientos?
  @HiveField(20)
  final bool tieneOtrosTratamientos;

  /// Fecha de otros tratamientos
  @HiveField(21)
  final DateTime? fechaOtrosTratamientos;

  /// Descripción de otros tratamientos
  @HiveField(22)
  final String? descripcionOtrosTratamientos;

  /// Estado reproductivo
  @HiveField(23)
  final EstadoReproductivo estadoReproductivo;

  /// ID de la madre
  @HiveField(24)
  final String? madreId;

  /// Ruta de la foto
  @HiveField(25)
  final String? fotoPath;

  /// Fecha de creación
  @HiveField(26)
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  @HiveField(27)
  final DateTime ultimaActualizacion;

  AnimalModel({
    String? id,
    required this.numeroArete,
    this.nombrePersonalizado,
    required this.tipo,
    required this.sexo,
    required this.raza,
    this.fechaNacimiento,
    required this.notas,
    this.precioCompra,
    this.precioVenta,
    Map<String, double>? costosExtra,
    this.ubicacionId,
    this.vacunado = false,
    this.fechaUltimaVacuna,
    this.tipoVacuna,
    this.desparasitado = false,
    this.fechaUltimoDesparasitante,
    this.tipoDesparasitante,
    this.tieneVitaminas = false,
    this.fechaVitaminas,
    this.tieneOtrosTratamientos = false,
    this.fechaOtrosTratamientos,
    this.descripcionOtrosTratamientos,
    this.estadoReproductivo = EstadoReproductivo.no_definido,
    this.madreId,
    this.fotoPath,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  })  : id = id ?? const Uuid().v4(),
        costosExtra = costosExtra ?? {},
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  /// Copia con campos opcionales
  AnimalModel copyWith({
    String? id,
    String? numeroArete,
    String? nombrePersonalizado,
    TipoGanado? tipo,
    Sexo? sexo,
    String? raza,
    DateTime? fechaNacimiento,
    String? notas,
    double? precioCompra,
    double? precioVenta,
    Map<String, double>? costosExtra,
    String? ubicacionId,
    bool? vacunado,
    DateTime? fechaUltimaVacuna,
    String? tipoVacuna,
    bool? desparasitado,
    DateTime? fechaUltimoDesparasitante,
    String? tipoDesparasitante,
    bool? tieneVitaminas,
    DateTime? fechaVitaminas,
    bool? tieneOtrosTratamientos,
    DateTime? fechaOtrosTratamientos,
    String? descripcionOtrosTratamientos,
    EstadoReproductivo? estadoReproductivo,
    String? madreId,
    String? fotoPath,
    DateTime? ultimaActualizacion,
  }) {
    return AnimalModel(
      id: id ?? this.id,
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      tipo: tipo ?? this.tipo,
      sexo: sexo ?? this.sexo,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      notas: notas ?? this.notas,
      precioCompra: precioCompra ?? this.precioCompra,
      precioVenta: precioVenta ?? this.precioVenta,
      costosExtra: costosExtra ?? this.costosExtra,
      ubicacionId: ubicacionId ?? this.ubicacionId,
      vacunado: vacunado ?? this.vacunado,
      fechaUltimaVacuna: fechaUltimaVacuna ?? this.fechaUltimaVacuna,
      tipoVacuna: tipoVacuna ?? this.tipoVacuna,
      desparasitado: desparasitado ?? this.desparasitado,
      fechaUltimoDesparasitante:
          fechaUltimoDesparasitante ?? this.fechaUltimoDesparasitante,
      tipoDesparasitante: tipoDesparasitante ?? this.tipoDesparasitante,
      tieneVitaminas: tieneVitaminas ?? this.tieneVitaminas,
      fechaVitaminas: fechaVitaminas ?? this.fechaVitaminas,
      tieneOtrosTratamientos:
          tieneOtrosTratamientos ?? this.tieneOtrosTratamientos,
      fechaOtrosTratamientos:
          fechaOtrosTratamientos ?? this.fechaOtrosTratamientos,
      descripcionOtrosTratamientos:
          descripcionOtrosTratamientos ?? this.descripcionOtrosTratamientos,
      estadoReproductivo: estadoReproductivo ?? this.estadoReproductivo,
      madreId: madreId ?? this.madreId,
      fotoPath: fotoPath ?? this.fotoPath,
      fechaRegistro: this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? DateTime.now(),
    );
  }

  /// Calcula costo total
  double get costoTotal {
    double total = precioCompra ?? 0;
    for (var costo in costosExtra.values) {
      total += costo;
    }
    return total;
  }

  /// Calcula ganancia potencial
  double get gananciaPotencial {
    final venta = precioVenta ?? 0;
    return venta - costoTotal;
  }

  @override
  String toString() =>
      'AnimalModel(id: $id, numeroArete: $numeroArete, tipo: $tipo)';
}

/// Extensión para validaciones de TipoGanado
extension TipoGanadoValidation on TipoGanado {
  /// Determina si este tipo de ganado requiere arete
  bool get requiereArete {
    return this == TipoGanado.vaca ||
        this == TipoGanado.toro ||
        this == TipoGanado.novillo ||
        this == TipoGanado.becerro;
  }

  /// Mensaje para el campo de arete
  String get mensajeArete {
    return requiereArete
        ? 'Arete (Obligatorio para ${toString().split('.').last.toUpperCase()})'
        : 'Arete (Opcional)';
  }
}
