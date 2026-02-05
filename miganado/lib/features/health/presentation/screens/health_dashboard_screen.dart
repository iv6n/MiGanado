/// Health dashboard screen
///
/// Displays:
/// - Herd health overview
/// - Animal health scores
/// - Maintenance alerts
/// - Health trends

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/animation/animation_utils.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/health/domain/models/health_dashboard.dart';
import 'package:miganado/features/health/presentation/providers/health_providers.dart';

class HealthDashboardScreen extends ConsumerWidget {
  const HealthDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final herdHealth = ref.watch(herdHealthSummaryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel de Salud'), // TODO: Mover a AppStrings y ARB
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(herdHealthSummaryProvider),
          ),
        ],
      ),
      body: herdHealth.when(
        loading: () => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Loading skeleton for cards
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SkeletonLoader(width: 150, height: 24),
                  const SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      4,
                      (_) => SkeletonLoader(
                        width: double.infinity,
                        height: 120,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        error: (error, st) => FadeInAnimation(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                    '${AppStrings.errorTitle}: $error'), // TODO: Mover a AppStrings
              ],
            ),
          ),
        ),
        data: (summary) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Health score cards
              _buildHealthScoreCards(context, summary),
              const SizedBox(height: 24),

              // Health chart
              _buildHealthChart(context, summary),
              const SizedBox(height: 24),

              // Alerts section
              _buildAlertsSection(context, summary),
              const SizedBox(height: 24),

              // Animals list
              _buildAnimalsHealthList(context, ref, summary),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHealthScoreCards(
      BuildContext context, HerdHealthSummary summary) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInAnimation(
          child: Text(
            'Estado del rebaño', // TODO: Mover a AppStrings y ARB
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            ScaleInAnimation(
              child: _buildScoreCard(
                'Saludables', // TODO: Mover a AppStrings y ARB
                summary.healthyCount,
                summary.totalAnimals,
                Colors.green,
              ),
            ),
            ScaleInAnimation(
              child: _buildScoreCard(
                'En Riesgo', // TODO: Mover a AppStrings y ARB
                summary.atRiskCount,
                summary.totalAnimals,
                Colors.orange,
              ),
            ),
            ScaleInAnimation(
              child: _buildScoreCard(
                'Enfermos', // TODO: Mover a AppStrings y ARB
                summary.sickCount,
                summary.totalAnimals,
                Colors.red,
              ),
            ),
            ScaleInAnimation(
              child: _buildScoreCard(
                'Promedio Salud', // TODO: Mover a AppStrings y ARB
                summary.averageHealthScore.toStringAsFixed(0),
                '100',
                Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildScoreCard(
    String label,
    dynamic value,
    dynamic total,
    Color color,
  ) {
    final percentage = value is int && total is int
        ? ((value / total) * 100).toStringAsFixed(1)
        : '$value';

    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          if (total is int)
            Text(
              '$percentage%',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey.shade600,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildHealthChart(BuildContext context, HerdHealthSummary summary) {
    return FadeInAnimation(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Distribución de salud', // TODO: Mover a AppStrings y ARB
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBar(
                    'Saludables', // TODO: Mover a AppStrings y ARB
                    summary.healthyPercentage,
                    Colors.green,
                  ),
                  _buildBar(
                    'En Riesgo', // TODO: Mover a AppStrings y ARB
                    summary.atRiskPercentage,
                    Colors.orange,
                  ),
                  _buildBar(
                    'Enfermos', // TODO: Mover a AppStrings y ARB
                    summary.sickPercentage,
                    Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(String label, double percentage, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 50,
          height: percentage * 2,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 50,
          child: Text(
            '${percentage.toStringAsFixed(1)}%',
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 50,
          child: Text(
            label,
            style: const TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildAlertsSection(BuildContext context, HerdHealthSummary summary) {
    if (summary.urgentAlertsCount == 0) {
      return const SizedBox.shrink();
    }

    return SlideInAnimation(
      direction: SlideDirection.left,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.shade50,
          border: Border.all(color: Colors.red.shade200),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red.shade700),
                const SizedBox(width: 8),
                Text(
                  'Alertas urgentes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${summary.urgentAlertsCount} animal(es) requieren atención',
              style: TextStyle(color: Colors.red.shade700),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimalsHealthList(
    BuildContext context,
    WidgetRef ref,
    HerdHealthSummary summary,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInAnimation(
          child: Text(
            'Salud por animal', // TODO: Mover a AppStrings y ARB
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: summary.dashboards.length,
          itemBuilder: (context, index) {
            final dashboard = summary.dashboards[index];
            final statusColor = _getStatusColor(dashboard.status);

            return SlideInAnimation(
              direction: SlideDirection.right,
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: statusColor.withOpacity(0.2),
                    child: Text(
                      '${dashboard.healthScore.score}',
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  title: Text(
                    dashboard.animal.customName ??
                        dashboard.animal.earTagNumber,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Arete: ${dashboard.animal.earTagNumber}'),
                      Text(
                        dashboard.statusLabel,
                        style: TextStyle(
                          color: statusColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.chevron_right, color: statusColor),
                  onTap: () {
                    ref.read(selectedAnimalHealthProvider.notifier).state =
                        dashboard.animal.uuid;
                    // TODO: Navigate to animal health details
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Color _getStatusColor(HealthStatusType status) {
    switch (status) {
      case HealthStatusType.healthy:
        return Colors.green;
      case HealthStatusType.atRisk:
        return Colors.orange;
      case HealthStatusType.sick:
        return Colors.red;
      case HealthStatusType.unknown:
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }
}
