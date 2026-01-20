/// Tablas de referencia para estimar edad basada en peso
/// Datos basados en razas bovinas comunes en América Latina
///
/// Notas:
/// - Los pesos varían significativamente según raza, sexo y nutrición
/// - Estas tablas son aproximaciones generales
/// - Para precisión, se recomienda usar registros históricos del animal
class TablaEdadPeso {
  /// Tabla de referencia para bovinos machos (kg)
  /// Fuente: Estándares de crianza bovino de carne/lechería
  static const Map<int, double> bovinMacho = {
    // Edad (meses): Peso promedio (kg)
    0: 40, // Recién nacido
    3: 110,
    6: 180,
    12: 250,
    18: 350,
    24: 450,
    36: 550,
    48: 600,
    60: 650,
    72: 700,
  };

  /// Tabla de referencia para bovinos hembras (kg)
  static const Map<int, double> bovihembra = {
    // Edad (meses): Peso promedio (kg)
    0: 35, // Recién nacido
    3: 100,
    6: 160,
    12: 220,
    18: 290,
    24: 380,
    36: 450,
    48: 500,
    60: 530,
    72: 550,
  };

  /// Tabla de referencia para caprinos (cabras)
  static const Map<int, double> caprino = {
    0: 3,
    3: 12,
    6: 20,
    12: 30,
    18: 35,
    24: 40,
    36: 45,
    48: 50,
  };

  /// Tabla de referencia para ovinos (ovejas)
  static const Map<int, double> ovino = {
    0: 4,
    3: 15,
    6: 25,
    12: 40,
    18: 50,
    24: 55,
    36: 60,
    48: 65,
  };

  /// Tabla de referencia para porcinos (cerdos)
  static const Map<int, double> porcino = {
    0: 1.5,
    3: 30,
    6: 60,
    12: 100,
    18: 120,
    24: 130,
  };

  /// Tabla de referencia para équinos (caballos)
  static const Map<int, double> equino = {
    0: 50,
    3: 150,
    6: 250,
    12: 400,
    18: 500,
    24: 550,
    36: 600,
    48: 620,
    60: 630,
  };

  /// Obtiene la tabla según el tipo de animal
  static Map<int, double> obtenerTabla(String tipoAnimal) {
    switch (tipoAnimal.toLowerCase()) {
      case 'bovino':
        return bovinMacho; // Por defecto macho, se puede mejorar
      case 'vaca':
      case 'hembra':
        return bovihembra;
      case 'caprino':
      case 'cabra':
        return caprino;
      case 'ovino':
      case 'oveja':
        return ovino;
      case 'porcino':
      case 'cerdo':
        return porcino;
      case 'equino':
      case 'caballo':
        return equino;
      default:
        return bovinMacho; // Fallback a bovino macho
    }
  }

  /// Estima la edad (en meses) basada en el peso
  ///
  /// Utiliza interpolación lineal entre dos puntos de referencia
  /// para una estimación más precisa
  ///
  /// Parámetros:
  /// - [peso]: Peso actual del animal en kg
  /// - [tabla]: Mapa de edad -> peso referencia
  ///
  /// Retorna: Edad estimada en meses (0 si peso < mínimo)
  static int estimarEdadPorPeso(double peso, Map<int, double> tabla) {
    // Validaciones
    if (peso < 0) return 0;

    // Ordenar las claves (edades) en la tabla
    final edadesOrdenadas = tabla.keys.toList()..sort();

    // Caso 1: El peso es menor que el mínimo registrado
    if (peso <= tabla[edadesOrdenadas.first]!) {
      return 0;
    }

    // Caso 2: El peso es mayor que el máximo registrado
    if (peso >= tabla[edadesOrdenadas.last]!) {
      return edadesOrdenadas.last;
    }

    // Caso 3: Buscar entre qué dos puntos de referencia cae el peso
    for (int i = 0; i < edadesOrdenadas.length - 1; i++) {
      final edad1 = edadesOrdenadas[i];
      final edad2 = edadesOrdenadas[i + 1];

      final peso1 = tabla[edad1]!;
      final peso2 = tabla[edad2]!;

      // Comprobar si el peso está en este rango
      if (peso >= peso1 && peso <= peso2) {
        // Interpolación lineal
        final fraccion = (peso - peso1) / (peso2 - peso1);
        final edadEstimada =
            edad1 + (fraccion * (edad2 - edad1)).round().toInt();

        return edadEstimada;
      }
    }

    return edadesOrdenadas.last;
  }

  /// Obtiene un rango de peso esperado para una edad dada
  ///
  /// Útil para validar si un peso es razonable para la edad del animal
  static (double min, double max)? obtenerRangoPesoParaEdad(
    int edadMeses,
    Map<int, double> tabla,
  ) {
    final edadesOrdenadas = tabla.keys.toList()..sort();

    // Si la edad es menor que el mínimo de la tabla
    if (edadMeses <= edadesOrdenadas.first) {
      final pesoMin = tabla[edadesOrdenadas.first]!;
      return (0, pesoMin * 1.2); // 20% de holgura
    }

    // Si la edad es mayor que el máximo de la tabla
    if (edadMeses >= edadesOrdenadas.last) {
      final pesoMax = tabla[edadesOrdenadas.last]!;
      return (pesoMax * 0.9, pesoMax * 1.5); // Rango de adulto
    }

    // Buscar entre qué dos puntos de referencia cae la edad
    for (int i = 0; i < edadesOrdenadas.length - 1; i++) {
      final edad1 = edadesOrdenadas[i];
      final edad2 = edadesOrdenadas[i + 1];

      if (edadMeses >= edad1 && edadMeses <= edad2) {
        final peso1 = tabla[edad1]!;
        final peso2 = tabla[edad2]!;

        // Interpolación lineal para obtener peso esperado
        final fraccion = (edadMeses - edad1) / (edad2 - edad1);
        final pesoEsperado = peso1 + (fraccion * (peso2 - peso1));

        // Retornar rango: ±20% del peso esperado
        return (pesoEsperado * 0.8, pesoEsperado * 1.2);
      }
    }

    return null;
  }

  /// Verifica si el peso es razonable para la edad y tipo de animal
  ///
  /// Retorna: (esValido, mensaje)
  static (bool, String) validarPesoParaEdad(
    int edadMeses,
    double peso,
    String tipoAnimal,
  ) {
    final tabla = obtenerTabla(tipoAnimal);
    final rango = obtenerRangoPesoParaEdad(edadMeses, tabla);

    if (rango == null) {
      return (false, 'No hay datos de referencia para esta edad');
    }

    final (pesoMin, pesoMax) = rango;

    if (peso < pesoMin) {
      return (
        false,
        'Peso bajo para la edad ($peso kg < ${pesoMin.toStringAsFixed(1)} kg esperado)'
      );
    }

    if (peso > pesoMax) {
      return (
        false,
        'Peso alto para la edad ($peso kg > ${pesoMax.toStringAsFixed(1)} kg esperado)'
      );
    }

    return (true, 'Peso dentro del rango esperado');
  }
}
