import 'package:miganado/core/enums/metodo_edad.dart';
import 'package:miganado/features/animals/domain/usecases/tabla_edad_peso.dart';

/// Use Case: Calcular la edad de un animal según el método seleccionado
///
/// Implementa la REGLA DE NEGOCIO:
/// - Edad exacta: Si tenemos fecha de nacimiento, calcular (hoy - nacimiento)
/// - Edad simulada: Si NO hay fecha, calcular desde "fecha de inicio de etapa"
/// - Edad estimada: Por peso (futuro - no implementado)
class CalcularEdad {
  /// Calcula edad en meses según el método seleccionado
  ///
  /// Parámetros:
  /// - [metodo]: Qué método usar (exacta, simulada, estimada)
  /// - [fechaNacimiento]: Fecha de nacimiento (obligatoria si método es exacta)
  /// - [fechaInicioEtapa]: Fecha de inicio de etapa (obligatoria si método es simulada)
  /// - [peso]: Peso actual en kg (necesario si método es estimada_por_peso)
  /// - [tipoAnimal]: Tipo de animal para tablas de referencia (defecto: 'bovino')
  ///
  /// Retorna: Edad en meses (0 mínimo)
  ///
  /// Ejemplo:
  /// ```dart
  /// final useCase = CalcularEdad();
  ///
  /// // Exacta: tengo fecha de nacimiento
  /// final fecha = DateTime(2024, 1, 15);
  /// final edad = useCase.call(
  ///   metodo: MetodoEdad.exacta_por_fecha_nacimiento,
  ///   fechaNacimiento: fecha,
  ///   fechaInicioEtapa: DateTime.now(),
  /// );
  ///
  /// // Simulada: sin fecha, solo etapa de inicio
  /// final inicio = DateTime(2025, 6, 1);
  /// final edadSim = useCase.call(
  ///   metodo: MetodoEdad.simulada_por_categoria,
  ///   fechaNacimiento: null,
  ///   fechaInicioEtapa: inicio,
  /// );
  ///
  /// // Estimada: por peso
  /// final edadEst = useCase.call(
  ///   metodo: MetodoEdad.estimada_por_peso,
  ///   fechaNacimiento: null,
  ///   fechaInicioEtapa: DateTime.now(),
  ///   peso: 450,
  ///   tipoAnimal: 'bovino',
  /// );
  /// ```
  int call({
    required MetodoEdad metodo,
    DateTime? fechaNacimiento,
    required DateTime fechaInicioEtapa,
    double? peso,
    String tipoAnimal = 'bovino',
  }) {
    switch (metodo) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        // Si no hay fecha, retornar 0 (no calcular)
        if (fechaNacimiento == null) {
          return 0;
        }
        return _calcularDiferenciaMeses(fechaNacimiento, DateTime.now());

      case MetodoEdad.simulada_por_categoria:
        // Calcular desde fecha de inicio de etapa hasta hoy
        return _calcularDiferenciaMeses(fechaInicioEtapa, DateTime.now());

      case MetodoEdad.estimada_por_peso:
        // Usar la tabla de referencia para estimar edad
        // Nota: Se asume bovino macho por defecto
        // En una implementación completa, se pasaría el tipo de animal
        final tabla = TablaEdadPeso.obtenerTabla('bovino');
        return TablaEdadPeso.estimarEdadPorPeso(peso ?? 0, tabla);
    }
  }

  /// Calcula la diferencia en meses entre dos fechas
  ///
  /// Fórmula:
  /// 1. Calcular diferencia en años
  /// 2. Calcular diferencia en meses dentro del año
  /// 3. Si el día de `to` es menor al de `from`, restar 1 mes
  /// 4. Garantizar mínimo 0
  ///
  /// Ejemplo:
  /// ```dart
  /// from = DateTime(2024, 1, 15)
  /// to = DateTime(2026, 1, 13)
  /// → diferencia = 24 meses
  /// ```
  int _calcularDiferenciaMeses(DateTime from, DateTime to) {
    // Validar que 'to' sea posterior a 'from'
    if (to.isBefore(from)) {
      return 0;
    }

    // Calcular diferencia de años
    int meses = (to.year - from.year) * 12;

    // Calcular diferencia de meses dentro del año
    meses += to.month - from.month;

    // Ajustar si el día aún no ha llegado en 'to'
    if (to.day < from.day) {
      meses--;
    }

    // Garantizar que no sea negativo
    return meses.clamp(0, 9999);
  }

  /// Obtiene la descripción del método de cálculo de edad
  String obtenerDescripcionMetodo(MetodoEdad metodo) {
    switch (metodo) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        return 'Exacta: Calculada desde la fecha de nacimiento del animal.';
      case MetodoEdad.simulada_por_categoria:
        return 'Simulada: El animal inicia en la categoría seleccionada. '
            'Se calcula desde la fecha de inicio de etapa.';
      case MetodoEdad.estimada_por_peso:
        return 'Estimada: Inferida mediante tablas de peso vs. edad (futuro).';
    }
  }

  /// Obtiene el rango de edad típico para un número de meses
  String obtenerRangoEdad(int meses) {
    if (meses < 6) {
      return 'Muy joven (< 6 meses)';
    } else if (meses < 12) {
      return 'Joven (6-12 meses)';
    } else if (meses < 24) {
      return 'En desarrollo (1-2 años)';
    } else if (meses < 36) {
      return 'En crecimiento (2-3 años)';
    } else if (meses < 60) {
      return 'Adulto joven (3-5 años)';
    } else {
      return 'Adulto (> 5 años)';
    }
  }
}
