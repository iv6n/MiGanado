import 'package:miganado/core/enums/sexo.dart';

/// Use Case: Calcular la categoría automática de un animal
///
/// Implementa la REGLA DE NEGOCIO:
/// - Becerro/Becerra: < 12 meses
/// - Novillo/Vaquilla: 12-36 meses
/// - Torete/Vaca: > 36 meses
///
/// Nota: "Becerrón" NO existe en MiGanado. Se diferencia por sexo.
class CalcularCategoriaAutomatica {
  /// Calcula la categoría basada en sexo + edad en meses
  ///
  /// Parámetros:
  /// - [sexo]: Sexo del animal (Macho o Hembra)
  /// - [edadMeses]: Edad en meses del animal
  ///
  /// Retorna:
  /// - "Becerro" si es macho < 12 meses
  /// - "Becerra" si es hembra < 12 meses
  /// - "Novillo" si es macho entre 12-36 meses
  /// - "Vaquilla" si es hembra entre 12-36 meses
  /// - "Toro" si es macho > 36 meses
  /// - "Vaca" si es hembra > 36 meses
  ///
  /// Ejemplo:
  /// ```dart
  /// final useCase = CalcularCategoriaAutomatica();
  /// expect(useCase.call(Sexo.macho, 8), 'Becerro');
  /// expect(useCase.call(Sexo.hembra, 24), 'Vaquilla');
  /// expect(useCase.call(Sexo.macho, 60), 'Toro');
  /// ```
  String call(Sexo sexo, int edadMeses) {
    if (edadMeses < 12) {
      return sexo == Sexo.macho ? 'Becerro' : 'Becerra';
    } else if (edadMeses < 36) {
      return sexo == Sexo.macho ? 'Novillo' : 'Vaquilla';
    } else {
      return sexo == Sexo.macho ? 'Toro' : 'Vaca';
    }
  }

  /// Calcula la categoría aproximada sin fecha exacta
  /// Útil cuando se usa el método "simulada_por_categoria"
  ///
  /// Se asume que si no hay fecha, el animal está iniciando esa categoría:
  /// - Si elegís Becerro/Becerra, asumimos que tiene ~6 meses
  /// - Si elegís Novillo/Vaquilla, asumimos que tiene ~24 meses
  /// - Si elegís Toro/Vaca, asumimos que tiene ~48 meses
  String getCategoriaPorNombre(String nombreCategoria) {
    final validosCategoriaBecerro = ['Becerro', 'Becerra'];
    final validosCategoriaIntermedia = ['Novillo', 'Vaquilla'];
    final validosCategoriaMayor = ['Toro', 'Vaca'];

    if (validosCategoriaBecerro.contains(nombreCategoria)) {
      return nombreCategoria;
    } else if (validosCategoriaIntermedia.contains(nombreCategoria)) {
      return nombreCategoria;
    } else if (validosCategoriaMayor.contains(nombreCategoria)) {
      return nombreCategoria;
    }

    return 'Desconocido';
  }

  /// Obtiene el rango de edad estimado para una categoría
  /// Retorna tupla (mínimo, máximo, aproximado)
  ({int min, int max, int approx}) getRangoEdadPorCategoria(
    String categoria,
  ) {
    switch (categoria) {
      case 'Becerro':
      case 'Becerra':
        return (min: 0, max: 12, approx: 6);
      case 'Novillo':
      case 'Vaquilla':
        return (min: 12, max: 36, approx: 24);
      case 'Toro':
      case 'Vaca':
        return (min: 36, max: 999, approx: 48);
      default:
        return (min: 0, max: 0, approx: 0);
    }
  }
}
