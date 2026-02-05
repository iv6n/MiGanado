import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:miganado/features/home/presentation/providers/home_providers.dart';
import 'package:miganado/core/services/logger_service.dart';

/// ============================================================================
/// STATISTICS PROVIDERS - Cálculos de estadísticas
/// ============================================================================

/// Estadísticas generales del hato
class HatoStats {
  final int totalAnimales;
  final int animalesVacunados;
  final int animalesDesparasitados;
  final int animalesEnPrenada;
  final int animalesEnLactancia;
  final double costoTotalAcumulado;
  final int animalesProximoAParto; // Preñadas próximas a parir

  HatoStats({
    required this.totalAnimales,
    required this.animalesVacunados,
    required this.animalesDesparasitados,
    required this.animalesEnPrenada,
    required this.animalesEnLactancia,
    required this.costoTotalAcumulado,
    required this.animalesProximoAParto,
  });

  double get porcentajeVacunados =>
      totalAnimales == 0 ? 0 : (animalesVacunados / totalAnimales) * 100;

  double get porcentajeDesparasitados =>
      totalAnimales == 0 ? 0 : (animalesDesparasitados / totalAnimales) * 100;
}

/// Provider de estadísticas del hato
final hatoStatsProvider = FutureProvider<HatoStats>((ref) async {
  try {
    LoggerService.startOperation('calculateHatoStats', 'stats_provider');
    final animals = await ref.watch(animalsStreamProvider.future);

    int vacunados = 0;
    int desparasitados = 0;

    for (var animal in animals) {
      if (animal.vaccinated) vacunados++;
      if (animal.dewormed) desparasitados++;
    }

    LoggerService.operationCompleted('calculateHatoStats', 'stats_provider');

    return HatoStats(
      totalAnimales: animals.length,
      animalesVacunados: vacunados,
      animalesDesparasitados: desparasitados,
      animalesEnPrenada: 0, // TODO: Add reproductive state tracking
      animalesEnLactancia: 0, // TODO: Add lactation tracking
      costoTotalAcumulado: 0.0, // TODO: Calcular desde costos
      animalesProximoAParto: 0, // TODO: Add breeding date tracking
    );
  } catch (e) {
    LoggerService.error('Error calculando estadísticas', e, StackTrace.current);
    return HatoStats(
      totalAnimales: 0,
      animalesVacunados: 0,
      animalesDesparasitados: 0,
      animalesEnPrenada: 0,
      animalesEnLactancia: 0,
      costoTotalAcumulado: 0.0,
      animalesProximoAParto: 0,
    );
  }
});

/// ============================================================================
/// ALERTS PROVIDER - Alertas críticas
/// ============================================================================

class AlertaCritica {
  final String titulo;
  final String descripcion;
  final AlertaSeveridad severidad;
  final String icono;

  AlertaCritica({
    required this.titulo,
    required this.descripcion,
    required this.severidad,
    required this.icono,
  });
}

enum AlertaSeveridad { critica, alerta, info }

final alertasProvider = FutureProvider<List<AlertaCritica>>((ref) async {
  try {
    LoggerService.startOperation('getAlertas', 'alerts_provider');
    final stats = await ref.watch(hatoStatsProvider.future);

    List<AlertaCritica> alertas = [];

    // Alerta: Animales sin vacunar
    if (stats.animalesVacunados < stats.totalAnimales) {
      alertas.add(
        AlertaCritica(
          titulo: 'Vacunación Incompleta',
          descripcion:
              '${stats.totalAnimales - stats.animalesVacunados} animales sin vacunar',
          severidad: AlertaSeveridad.alerta,
          icono: '💉',
        ),
      );
    }

    // Alerta: Animales próximos a parto
    if (stats.animalesProximoAParto > 0) {
      alertas.add(
        AlertaCritica(
          titulo: 'Partos Próximos',
          descripcion:
              '${stats.animalesProximoAParto} animales próximos a parir',
          severidad: AlertaSeveridad.critica,
          icono: '🤰',
        ),
      );
    }

    // Alerta: Desparasitación vencida
    if (stats.animalesDesparasitados < stats.totalAnimales) {
      alertas.add(
        AlertaCritica(
          titulo: 'Desparasitación Vencida',
          descripcion:
              '${stats.totalAnimales - stats.animalesDesparasitados} animales por desparasitar',
          severidad: AlertaSeveridad.alerta,
          icono: '🔬',
        ),
      );
    }

    LoggerService.operationCompleted('getAlertas', 'alerts_provider');
    return alertas;
  } catch (e) {
    LoggerService.error('Error obteniendo alertas', e, StackTrace.current);
    return [];
  }
});
