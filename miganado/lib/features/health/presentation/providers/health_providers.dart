/// Health dashboard provider
///
/// Manages health status and metrics for animals and herd

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/health/domain/models/health_dashboard.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Selected animal UUID for health details
final selectedAnimalHealthProvider = StateProvider<String?>((ref) => null);

/// Health dashboard for selected animal
final animalHealthDashboardProvider =
    FutureProvider<AnimalHealthDashboard?>((ref) async {
  final animalUuid = ref.watch(selectedAnimalHealthProvider);
  final animals = ref.watch(animalsListProvider).whenData((list) => list).value;

  if (animalUuid == null || animals == null) {
    return null;
  }

  try {
    final animal = animals.firstWhere((a) => a.uuid == animalUuid);

    final healthScore = HealthScore.calculate(animal);
    final status = _determineHealthStatus(healthScore);

    return AnimalHealthDashboard(
      animal: animal,
      healthScore: healthScore,
      status: status,
      vaccinations: [], // TODO: Load from database
      alerts: _generateAlerts(animal, healthScore),
      overdueCount: 0, // TODO: Count actual overdue items
      lastCheckup: DateTime.now(),
    );
  } catch (e, st) {
    LoggerService.error('❌ Error loading health dashboard: $e', e, st);
    rethrow;
  }
});

/// Health summary for entire herd
final herdHealthSummaryProvider =
    FutureProvider<HerdHealthSummary>((ref) async {
  final animals = ref.watch(animalsListProvider).whenData((list) => list).value;

  if (animals == null || animals.isEmpty) {
    return const HerdHealthSummary(
      totalAnimals: 0,
      healthyCount: 0,
      atRiskCount: 0,
      sickCount: 0,
      averageHealthScore: 0,
      urgentAlertsCount: 0,
      dashboards: [],
    );
  }

  try {
    final dashboards = <AnimalHealthDashboard>[];
    var healthyCount = 0;
    var atRiskCount = 0;
    var sickCount = 0;
    double totalScore = 0;
    var urgentCount = 0;

    for (final animal in animals) {
      final healthScore = HealthScore.calculate(animal);
      final status = _determineHealthStatus(healthScore);
      final alerts = _generateAlerts(animal, healthScore);

      final dashboard = AnimalHealthDashboard(
        animal: animal,
        healthScore: healthScore,
        status: status,
        vaccinations: [],
        alerts: alerts,
        overdueCount: 0,
        lastCheckup: DateTime.now(),
      );

      dashboards.add(dashboard);
      totalScore += healthScore.score;

      switch (status) {
        case HealthStatusType.healthy:
          healthyCount++;
          break;
        case HealthStatusType.atRisk:
          atRiskCount++;
          break;
        case HealthStatusType.sick:
          sickCount++;
          break;
        case HealthStatusType.unknown:
          break;
      }

      if (alerts.any((a) => a.isUrgent)) {
        urgentCount++;
      }
    }

    final averageScore =
        animals.isNotEmpty ? (totalScore / animals.length).toDouble() : 0.0;

    return HerdHealthSummary(
      totalAnimals: animals.length,
      healthyCount: healthyCount,
      atRiskCount: atRiskCount,
      sickCount: sickCount,
      averageHealthScore: averageScore,
      urgentAlertsCount: urgentCount,
      dashboards: dashboards,
    );
  } catch (e, st) {
    LoggerService.error('❌ Error loading herd health: $e', e, st);
    rethrow;
  }
});

/// Determine health status based on score
HealthStatusType _determineHealthStatus(HealthScore score) {
  if (score.score >= 80) return HealthStatusType.healthy;
  if (score.score >= 60) return HealthStatusType.atRisk;
  if (score.score >= 40) return HealthStatusType.sick;
  return HealthStatusType.unknown;
}

/// Generate alerts for animal
List<MaintenanceAlert> _generateAlerts(
  dynamic animal,
  HealthScore score,
) {
  final alerts = <MaintenanceAlert>[];
  final now = DateTime.now();

  // Add alerts based on health score
  if (score.score < 60) {
    alerts.add(
      MaintenanceAlert(
        type: 'health',
        description: 'Salud comprometida',
        dueDate: now,
        daysOverdue: 0,
        isUrgent: true,
      ),
    );
  }

  if (score.score < 80) {
    alerts.add(
      MaintenanceAlert(
        type: 'checkup',
        description: 'Revisión veterinaria recomendada',
        dueDate: now.add(const Duration(days: 7)),
        daysOverdue: 0,
        isUrgent: false,
      ),
    );
  }

  return alerts;
}

/// Refresh health data
final refreshHealthProvider = FutureProvider<void>((ref) async {
  // Invalidate cached providers
  ref.invalidate(herdHealthSummaryProvider);
  ref.invalidate(animalHealthDashboardProvider);
  LoggerService.info('🔄 Health data refreshed');
});
