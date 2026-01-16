import 'package:miganado/core/enums/index.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';

/// Use Case: Deducir alertas sanitarias del historial de mantenimientos
///
/// Analiza el historial y determina:
/// - 🔴 VENCIDO: La siguiente fecha recomendada ya pasó
/// - 🟡 PRÓXIMO: La siguiente fecha está en los próximos 30 días
/// - 🟢 OK: No hay alertas
class DeducirAlertasSanitarias {
  /// Número de días para considerar como "próximo"
  static const int diasProximo = 30;

  /// Deduce alertas basándose en el historial de mantenimientos
  ///
  /// Parámetros:
  /// - [mantenimientos]: Lista de mantenimientos del animal
  ///
  /// Retorna: Lista de alertas (strings). Vacía si todo está OK.
  ///
  /// Ejemplo:
  /// ```dart
  /// final useCase = DeducirAlertasSanitarias();
  /// final alertas = useCase.call([mantenimiento1, mantenimiento2]);
  /// // Posibles resultados:
  /// // []
  /// // ['🔴 Vacunación VENCIDA (15/12/2025)']
  /// // ['🟡 Desparasitación próxima (20/02/2026)']
  /// // ['🔴 Vacunación VENCIDA', '🟡 Desparasitación próxima']
  /// ```
  List<String> call(List<MantenimientoRegistro> mantenimientos) {
    final alertas = <String>[];

    for (final mantenimiento in mantenimientos) {
      if (mantenimiento.proximaFechaRecomendada == null) {
        continue; // Saltar si no hay próxima fecha
      }

      if (mantenimiento.estaVencido) {
        alertas.add(
          '🔴 ${mantenimiento.tipo.nombreEspanol} VENCIDA '
          '(${_formatearFecha(mantenimiento.proximaFechaRecomendada!)})',
        );
      } else if (mantenimiento.estaProximo) {
        alertas.add(
          '🟡 ${mantenimiento.tipo.nombreEspanol} próxima '
          '(${_formatearFecha(mantenimiento.proximaFechaRecomendada!)})',
        );
      }
    }

    return alertas;
  }

  /// Obtiene solo las alertas críticas (vencidas)
  List<String> obtenerAlertasCriticas(
    List<MantenimientoRegistro> mantenimientos,
  ) {
    return call(mantenimientos)
        .where((alerta) => alerta.startsWith('🔴'))
        .toList();
  }

  /// Obtiene solo las alertas de precaución (próximas)
  List<String> obtenerAlertasProximas(
    List<MantenimientoRegistro> mantenimientos,
  ) {
    return call(mantenimientos)
        .where((alerta) => alerta.startsWith('🟡'))
        .toList();
  }

  /// Determina el nivel de alerta sanitaria del animal
  ///
  /// Retorna:
  /// - "CRÍTICO": Hay mantenimientos vencidos
  /// - "PRECAUCIÓN": Hay mantenimientos próximos pero no vencidos
  /// - "OK": Todo está al día
  ({String nivel, int vencidos, int proximos}) obtenerNivelAlerta(
    List<MantenimientoRegistro> mantenimientos,
  ) {
    int vencidos = 0;
    int proximos = 0;

    for (final man in mantenimientos) {
      if (man.proximaFechaRecomendada == null) continue;

      if (man.estaVencido) {
        vencidos++;
      } else if (man.estaProximo) {
        proximos++;
      }
    }

    final nivel = vencidos > 0
        ? 'CRÍTICO'
        : proximos > 0
            ? 'PRECAUCIÓN'
            : 'OK';

    return (nivel: nivel, vencidos: vencidos, proximos: proximos);
  }

  /// Obtiene un resumen de alertas sanitarias
  String obtenerResumen(List<MantenimientoRegistro> mantenimientos) {
    final alertas = call(mantenimientos);

    if (alertas.isEmpty) {
      return '✅ Animal al día con mantenimiento sanitario';
    }

    final criticas = obtenerAlertasCriticas(mantenimientos).length;
    final precauciones = obtenerAlertasProximas(mantenimientos).length;

    String resumen = '';
    if (criticas > 0) {
      resumen += '🔴 $criticas mantenimiento(s) VENCIDO(S)\n';
    }
    if (precauciones > 0) {
      resumen += '🟡 $precauciones mantenimiento(s) PRÓXIMO(S)';
    }

    return resumen;
  }

  /// Calcula días restantes hasta próximo mantenimiento
  int diasHastaMant(DateTime? proximaFecha) {
    if (proximaFecha == null) return 0;
    return proximaFecha.difference(DateTime.now()).inDays;
  }

  /// Formatea fecha a formato DD/MM/YYYY
  String _formatearFecha(DateTime fecha) {
    return '${fecha.day}/${fecha.month}/${fecha.year}';
  }

  /// Valida si hay emergencias sanitarias (vencidos)
  bool tieneEmergencia(List<MantenimientoRegistro> mantenimientos) {
    return obtenerAlertasCriticas(mantenimientos).isNotEmpty;
  }

  /// Cuenta cuántos mantenimientos están vencidos
  int contarVencidos(List<MantenimientoRegistro> mantenimientos) {
    return mantenimientos.where((m) => m.estaVencido).length;
  }

  /// Cuenta cuántos mantenimientos están próximos
  int contarProximos(List<MantenimientoRegistro> mantenimientos) {
    return mantenimientos.where((m) => m.estaProximo).length;
  }
}
