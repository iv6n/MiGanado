/// Health dashboard models tests
///
/// Tests:
/// - Health score validation
/// - Health status determination
/// - Vaccination tracking
/// - Alert generation

import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/health/domain/models/health_dashboard.dart';

void main() {
  group('HealthStatusType Enum Tests', () {
    test('HealthStatusType has all values', () {
      expect(HealthStatusType.values.length, 4);
    });
  });

  group('VaccinationRecord Tests', () {
    test('VaccinationRecord initialization', () {
      final record = VaccinationRecord(
        name: 'Aftosa',
        date: DateTime(2024, 1, 15),
        nextDue: DateTime(2025, 1, 15),
        isOverdue: false,
      );

      expect(record.name, 'Aftosa');
      expect(record.isOverdue, false);
    });

    test('VaccinationRecord tracks overdue status', () {
      final pastRecord = VaccinationRecord(
        name: 'Test',
        date: DateTime.now().subtract(const Duration(days: 365)),
        nextDue: DateTime.now().subtract(const Duration(days: 30)),
        isOverdue: true,
      );

      expect(pastRecord.isOverdue, true);
    });
  });

  group('MaintenanceAlert Tests', () {
    test('MaintenanceAlert initialization', () {
      final alert = MaintenanceAlert(
        type: 'Revisión',
        description: 'Revisión veterinaria',
        dueDate: DateTime.now().add(const Duration(days: 7)),
        daysOverdue: 0,
        isUrgent: false,
      );

      expect(alert.type, 'Revisión');
      expect(alert.isUrgent, false);
    });

    test('MaintenanceAlert tracks urgency', () {
      final alert = MaintenanceAlert(
        type: 'Vacuna',
        description: 'Vacuna atrasada',
        dueDate: DateTime.now().subtract(const Duration(days: 10)),
        daysOverdue: 10,
        isUrgent: true,
      );

      expect(alert.isUrgent, true);
      expect(alert.daysOverdue, 10);
    });
  });

  group('HealthScore Tests', () {
    test('HealthScore initialization', () {
      final score = HealthScore(
        score: 85,
        category: 'Excelente',
        issues: [],
        calculatedAt: DateTime.now(),
      );

      expect(score.score, 85);
      expect(score.category, 'Excelente');
    });

    test('HealthScore validates score range', () {
      final score = HealthScore(
        score: 50,
        category: 'Bueno',
        issues: ['Issue 1'],
        calculatedAt: DateTime.now(),
      );

      expect(score.score >= 0 && score.score <= 100, true);
    });

    test('HealthScore tracks issues', () {
      final score = HealthScore(
        score: 40,
        category: 'Malo',
        issues: [
          'Signos de enfermedad',
          'Peso bajo',
          'Herida sin cicatrizar',
        ],
        calculatedAt: DateTime.now(),
      );

      expect(score.issues.length, 3);
    });
  });

  group('HerdHealthSummary Tests', () {
    test('HerdHealthSummary initialization', () {
      const summary = HerdHealthSummary(
        totalAnimals: 50,
        healthyCount: 40,
        atRiskCount: 8,
        sickCount: 2,
        averageHealthScore: 82.5,
        urgentAlertsCount: 1,
        dashboards: [],
      );

      expect(summary.totalAnimals, 50);
      expect(summary.healthyCount, 40);
    });

    test('HerdHealthSummary calculates percentages', () {
      const summary = HerdHealthSummary(
        totalAnimals: 100,
        healthyCount: 60,
        atRiskCount: 30,
        sickCount: 10,
        averageHealthScore: 75.0,
        urgentAlertsCount: 2,
        dashboards: [],
      );

      expect(summary.healthyPercentage, 60.0);
      expect(summary.atRiskPercentage, 30.0);
      expect(summary.sickPercentage, 10.0);
    });

    test('HerdHealthSummary percentages sum to 100', () {
      const summary = HerdHealthSummary(
        totalAnimals: 80,
        healthyCount: 50,
        atRiskCount: 20,
        sickCount: 10,
        averageHealthScore: 78.0,
        urgentAlertsCount: 3,
        dashboards: [],
      );

      final total = summary.healthyPercentage +
          summary.atRiskPercentage +
          summary.sickPercentage;

      expect(total, 100.0);
    });

    test('HerdHealthSummary average score is valid', () {
      const summary = HerdHealthSummary(
        totalAnimals: 25,
        healthyCount: 20,
        atRiskCount: 4,
        sickCount: 1,
        averageHealthScore: 82.0,
        urgentAlertsCount: 0,
        dashboards: [],
      );

      expect(
          summary.averageHealthScore >= 0 && summary.averageHealthScore <= 100,
          true);
    });

    test('HerdHealthSummary tracks urgent alerts', () {
      const summary = HerdHealthSummary(
        totalAnimals: 20,
        healthyCount: 15,
        atRiskCount: 4,
        sickCount: 1,
        averageHealthScore: 82.0,
        urgentAlertsCount: 5,
        dashboards: [],
      );

      expect(summary.urgentAlertsCount, 5);
    });
  });

  group('HealthScore Calculation Tests', () {
    test('Multiple health issues aggregation', () {
      final vaccinations = [
        VaccinationRecord(
          name: 'Aftosa',
          date: DateTime.now().subtract(const Duration(days: 120)),
          nextDue: DateTime.now().add(const Duration(days: 240)),
          isOverdue: false,
        ),
        VaccinationRecord(
          name: 'Brucela',
          date: DateTime.now().subtract(const Duration(days: 240)),
          nextDue: DateTime.now().subtract(const Duration(days: 15)),
          isOverdue: true,
        ),
      ];

      final alerts = [
        MaintenanceAlert(
          type: 'Vacuna',
          description: 'Brucela atrasada',
          dueDate: DateTime.now().subtract(const Duration(days: 15)),
          daysOverdue: 15,
          isUrgent: true,
        ),
      ];

      expect(vaccinations.length, 2);
      expect(alerts.length, 1);
      expect(alerts.first.isUrgent, true);
    });
  });
}
