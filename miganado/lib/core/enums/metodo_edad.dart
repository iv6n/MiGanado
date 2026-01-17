/// Método utilizado para determinar la edad del animal
/// REGLA: La fecha de nacimiento es OPCIONAL
/// Si no hay fecha, el sistema asume que el animal VA INICIANDO esa etapa
enum MetodoEdad {
  /// Edad calculada a partir de fecha de nacimiento conocida
  /// Más preciso y confiable
  exacta_por_fecha_nacimiento,

  /// Edad simulada por categoría seleccionada sin fecha de nacimiento
  /// Se usa cuando no se conoce la fecha exacta
  /// El animal "comienza" en esa etapa el día que se registra
  simulada_por_categoria,

  /// Edad estimada a partir del peso actual
  /// Futuro: Para ganaderos que no tienen registro preciso
  estimada_por_peso,
}

extension MetodoEdadExt on MetodoEdad {
  /// Nombre legible en español
  String get nombreEspanol {
    switch (this) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        return 'Exacta (por fecha)';
      case MetodoEdad.simulada_por_categoria:
        return 'Simulada (por categoría)';
      case MetodoEdad.estimada_por_peso:
        return 'Estimada (por peso)';
    }
  }

  /// Obtiene descripción legible
  String get descripcion {
    switch (this) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        return 'Edad exacta (fecha de nacimiento)';
      case MetodoEdad.simulada_por_categoria:
        return 'Edad simulada (por categoría, sin fecha)';
      case MetodoEdad.estimada_por_peso:
        return 'Edad estimada (por peso)';
    }
  }

  /// Indica si requiere fecha de nacimiento
  bool get requiereFechaNacimiento {
    return this == MetodoEdad.exacta_por_fecha_nacimiento;
  }

  /// Indica si usa fecha de inicio de etapa
  bool get usaFechaInicioEtapa {
    return this == MetodoEdad.simulada_por_categoria;
  }
}
