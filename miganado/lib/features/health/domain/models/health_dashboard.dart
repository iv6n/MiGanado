/// Health dashboard model and data classes
///
/// Provides health status information for animals including:
/// - Vaccination status
/// - Health score
/// - Overdue maintenance alerts
/// - Health history

import 'package:miganado/features/animals/domain/entities/animal.dart';

/// Health status for an animal
enum HealthStatusType {
  healthy,
  atRisk,
  sick,
  unknown,
}

/// Vaccination record
class VaccinationRecord {
  final String name;
  final DateTime date;
  final DateTime? nextDue;
  final bool isOverdue;

  const VaccinationRecord({
    required this.name,
    required this.date,
    this.nextDue,
    required this.isOverdue,
  });
}

/// Maintenance alert
class MaintenanceAlert {
  final String type; // 'vaccination', 'deworming', 'checkup', etc.
  final String description;
  final DateTime dueDate;
  final int daysOverdue;
  final bool isUrgent;

  const MaintenanceAlert({
    required this.type,
    required this.description,
    required this.dueDate,
    required this.daysOverdue,
    required this.isUrgent,
  });
}

/// Health status for an animal
enum AnimalHealthStatus {
  healthy,
  atRisk,
  sick,
  unknown,
}

/// Vaccination record
class AnimalVaccinationRecord {
  final String name;
  final DateTime date;
  final DateTime? nextDue;
  final bool isOverdue;

  const AnimalVaccinationRecord({
    required this.name,
    required this.date,
    this.nextDue,
    required this.isOverdue,
  });
}

/// Maintenance alert
class AnimalMaintenanceAlert {
  final String type; // 'vaccination', 'deworming', 'checkup', etc.
  final String description;
  final DateTime dueDate;
  final int daysOverdue;
  final bool isUrgent;

  const AnimalMaintenanceAlert({
    required this.type,
    required this.description,
    required this.dueDate,
    required this.daysOverdue,
    required this.isUrgent,
  });
}

/// Health score (0-100)
class AnimalHealthScore {
  final int score;
  final String category; // 'excellent', 'good', 'fair', 'poor'
  final List<String> issues;
  final DateTime calculatedAt;

  const AnimalHealthScore({
    required this.score,
    required this.category,
    required this.issues,
    required this.calculatedAt,
  });
}

/// Health score class
class HealthScore {
  final int score;
  final String category; // 'excellent', 'good', 'fair', 'poor'
  final List<String> issues;
  final DateTime calculatedAt;

  const HealthScore({
    required this.score,
    required this.category,
    required this.issues,
    required this.calculatedAt,
  });

  static HealthScore calculate(Animal animal) {
    // Simplified calculation - can be expanded based on actual health logic
    // Check vaccination and deworming status
    int score = 85;
    final List<String> issues = [];

    if (!animal.vaccinated) {
      score -= 15;
      issues.add('No vacunado');
    }
    if (!animal.dewormed) {
      score -= 10;
      issues.add('No desparasitado');
    }

    return HealthScore(
      score: score.clamp(0, 100),
      category: _getCategoryFromScore(score),
      issues: issues,
      calculatedAt: DateTime.now(),
    );
  }

  static String _getCategoryFromScore(int score) {
    if (score >= 80) return 'excellent';
    if (score >= 60) return 'good';
    if (score >= 40) return 'fair';
    return 'poor';
  }
}

/// Animal health dashboard
class AnimalHealthDashboard {
  final Animal animal;
  final HealthScore healthScore;
  final HealthStatusType status;
  final List<VaccinationRecord> vaccinations;
  final List<MaintenanceAlert> alerts;
  final int overdueCount;
  final DateTime lastCheckup;

  const AnimalHealthDashboard({
    required this.animal,
    required this.healthScore,
    required this.status,
    required this.vaccinations,
    required this.alerts,
    required this.overdueCount,
    required this.lastCheckup,
  });

  bool get hasUrgentAlerts => alerts.any((a) => a.isUrgent);

  bool get hasOverdueItems => overdueCount > 0;

  String get statusLabel {
    switch (status) {
      case HealthStatusType.healthy:
        return '✅ Saludable';
      case HealthStatusType.atRisk:
        return '⚠️ En riesgo';
      case HealthStatusType.sick:
        return '❌ Enfermo';
      case HealthStatusType.unknown:
        return '❓ Desconocido';
    }
  }
}

/// Summary of herd health
class HerdHealthSummary {
  final int totalAnimals;
  final int healthyCount;
  final int atRiskCount;
  final int sickCount;
  final double averageHealthScore;
  final int urgentAlertsCount;
  final List<AnimalHealthDashboard> dashboards;

  const HerdHealthSummary({
    required this.totalAnimals,
    required this.healthyCount,
    required this.atRiskCount,
    required this.sickCount,
    required this.averageHealthScore,
    required this.urgentAlertsCount,
    required this.dashboards,
  });

  double get healthyPercentage =>
      totalAnimals > 0 ? (healthyCount / totalAnimals) * 100 : 0;

  double get atRiskPercentage =>
      totalAnimals > 0 ? (atRiskCount / totalAnimals) * 100 : 0;

  double get sickPercentage =>
      totalAnimals > 0 ? (sickCount / totalAnimals) * 100 : 0;
}
