/// Tipos de ganado disponibles en el sistema
/// REGLA: No existe "becerrón/becerrona"
/// - < 12 meses, Macho → Becerro
/// - < 12 meses, Hembra → Becerra
enum TipoGanado {
  /// Hembra adulta (> 36 meses)
  vaca,

  /// Macho o hembra < 12 meses
  becerro, // Becerro (M) o Becerra (H)

  /// Macho adulto castrado o entero
  toro,

  /// Macho 12-36 meses
  novillo,

  /// Caballo
  caballo,

  /// Mula
  mula,

  /// Burro
  burro,
}

/// Extensión para validar si el tipo de ganado requiere arete
extension TipoGanadoValidation on TipoGanado {
  /// Valida si este tipo de ganado requiere arete por regulaciones locales
  /// Según regulaciones sanitarias, solo bovinos (vacas, becerros, toros, novillos) requieren arete
  bool get requiereArete {
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

  /// Obtiene el nombre en español de forma legible
  String get nombreEspanol {
    switch (this) {
      case TipoGanado.vaca:
        return 'Vaca';
      case TipoGanado.becerro:
        return 'Becerro/Becerra';
      case TipoGanado.toro:
        return 'Toro';
      case TipoGanado.novillo:
        return 'Novillo/Vaquilla';
      case TipoGanado.caballo:
        return 'Caballo';
      case TipoGanado.mula:
        return 'Mula';
      case TipoGanado.burro:
        return 'Burro';
    }
  }
}
