/// Use Case: Calcular el costo total acumulado de un animal
///
/// Fórmula: costoTotal = costoCompraInicial + sum(CostoRegistros)
class CalcularCostoTotal {
  /// Calcula el costo total de un animal
  ///
  /// Parámetros:
  /// - [costoCompraInicial]: Costo de compra inicial (puede ser null)
  /// - [costosTotales]: Lista de costos adicionales (mantenimiento, alimento, etc.)
  ///
  /// Retorna: Suma total en formato double
  ///
  /// Ejemplo:
  /// ```dart
  /// final useCase = CalcularCostoTotal();
  /// final total = useCase.call(
  ///   costoCompraInicial: 500000,
  ///   costosTotales: [150000, 200000, 75000],
  /// );
  /// expect(total, 925000);
  /// ```
  double call({
    required double? costoCompraInicial,
    required List<double> costosTotales,
  }) {
    // Base: costo de compra (o 0 si no existe)
    double total = costoCompraInicial ?? 0;

    // Sumar todos los costos adicionales
    for (final costo in costosTotales) {
      total += costo;
    }

    return total;
  }

  /// Suma una lista de costos de forma segura
  /// Ignora valores null o negativos
  double sumarCostos(List<double?> costos) {
    return costos.fold<double>(
      0,
      (sum, costo) => sum + (costo ?? 0),
    );
  }

  /// Calcula el costo promedio por mes
  ///
  /// Fórmula: costoPromedio = costoTotal / mesesDesdeRegistro
  ///
  /// Retorna 0 si meses es 0 o negativo
  double costoPromedioMensual({
    required double costoTotal,
    required int mesesDesdeRegistro,
  }) {
    if (mesesDesdeRegistro <= 0) {
      return 0;
    }
    return costoTotal / mesesDesdeRegistro;
  }

  /// Calcula el costo por kg de ganancia de peso
  ///
  /// Fórmula: costoKg = costoTotal / pesoGanado
  ///
  /// Útil para ROI: "¿Cuánto invertí por cada kg ganado?"
  /// Retorna 0 si pesoGanado es 0 o negativo
  double costoKgGanado({
    required double costoTotal,
    required double pesoGanado,
  }) {
    if (pesoGanado <= 0) {
      return 0;
    }
    return costoTotal / pesoGanado;
  }

  /// Desglose de costos por categoría
  ///
  /// Útil para entender dónde va el dinero:
  /// - Compra inicial
  /// - Veterinario
  /// - Alimento
  /// - Medicinas
  /// - Etc.
  Map<String, double> desglose({
    required double? costoCompra,
    required Map<String, double> costosPorTipo,
  }) {
    final resultado = <String, double>{};

    if ((costoCompra ?? 0) > 0) {
      resultado['Compra Inicial'] = costoCompra!;
    }

    resultado.addAll(costosPorTipo);

    return resultado;
  }

  /// Suma el desglose y verifica que sea correcto
  double validarDesglose(Map<String, double> desglose) {
    return desglose.values.fold(0, (sum, value) => sum + value);
  }
}
