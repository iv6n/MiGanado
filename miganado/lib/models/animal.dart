import 'package:uuid/uuid.dart';

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

/// Extensión para validar si el tipo de ganado requiere arete
extension TipoGanadoValidation on TipoGanado {
  /// Valida si este tipo de ganado requiere arete por regulaciones locales
  bool get requiereArete {
    // Según regulaciones locales, solo bovinos (vacas, becerros, toros, novillos) requieren arete
    switch (this) {
      case TipoGanado.vaca:
      case TipoGanado.becerro:
      case TipoGanado.toro:
      case TipoGanado.novillo:
        return true;
      case TipoGanado.caballo:
      case TipoGanado.mula:
      case TipoGanado.burro:
        return false;
    }
  }

  /// Obtiene el mensaje sobre la obligatoriedad del arete
  String get mensajeArete {
    return requiereArete
        ? 'El arete es obligatorio para bovinos según regulaciones sanitarias'
        : 'El arete es opcional para esta especie';
  }
}

/// Modelo de Animal - Entidad principal de la aplicación
class Animal {
  /// Identificador único (UUID)
  final String id;

  /// Número de arete (único, requerido para identificar en el campo)
  final String numeroArete;

  /// Nombre personalizado del animal (opcional, ej: "Blanquita", "Lucero")
  final String? nombrePersonalizado;

  /// Tipo de ganado (vaca, becerro, toro, novillo)
  final TipoGanado tipo;

  /// Sexo del animal
  final Sexo sexo;

  /// Raza del animal
  final String raza;

  /// Fecha de nacimiento (opcional)
  final DateTime? fechaNacimiento;

  /// Notas adicionales sobre el animal
  final String notas;

  /// Precio de compra en unidades monetarias (opcional)
  final double? precioCompra;

  /// Precio de venta en unidades monetarias (opcional)
  final double? precioVenta;

  /// Costos extras asociados al animal (ej: {vacunación: 50, veterinario: 100})
  final Map<String, double> costosExtra;

  /// ID de la ubicación donde está el animal (opcional)
  final String? ubicacionId;

  /// ¿Está vacunado?
  final bool vacunado;

  /// Fecha de última vacuna (opcional)
  final DateTime? fechaUltimaVacuna;

  /// Tipo de vacuna (opcional, ej: "Fiebre Aftosa", "Brucelosis")
  final String? tipoVacuna;

  /// ¿Está desparasitado?
  final bool desparasitado;

  /// Fecha de último desparasitante (opcional)
  final DateTime? fechaUltimoDesparasitante;

  /// Tipo de desparasitante (opcional, ej: "Ivermectina", "Levamisol")
  final String? tipoDesparasitante;

  /// ¿Tiene vitaminas aplicadas?
  final bool tieneVitaminas;

  /// Fecha de aplicación de vitaminas (opcional)
  final DateTime? fechaVitaminas;

  /// ¿Tiene otros tratamientos aplicados?
  final bool tieneOtrosTratamientos;

  /// Fecha de aplicación de otros tratamientos (opcional)
  final DateTime? fechaOtrosTratamientos;

  /// Descripción de otros tratamientos (opcional)
  final String? descripcionOtrosTratamientos;

  /// Estado reproductivo (para hembras)
  final EstadoReproductivo estadoReproductivo;

  /// ID de la madre (para becerros, opcional)
  final String? madreId;

  /// Ruta de la foto del animal (opcional)
  final String? fotoPath;

  /// Fecha de creación del registro
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  final DateTime ultimaActualizacion;

  /// Constructor
  Animal({
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

  /// Copia el objeto con campos opcionales actualizados
  Animal copyWith({
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
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  }) {
    return Animal(
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
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? this.ultimaActualizacion,
    );
  }

  /// Calcula el costo total del animal
  double get costoTotal {
    double total = precioCompra ?? 0;
    for (var costo in costosExtra.values) {
      total += costo;
    }
    return total;
  }

  /// Calcula la ganancia potencial
  double get gananciaPotencial {
    final venta = precioVenta ?? 0;
    return venta - costoTotal;
  }

  @override
  String toString() =>
      'Animal(id: $id, numeroArete: $numeroArete, tipo: $tipo)';
}
