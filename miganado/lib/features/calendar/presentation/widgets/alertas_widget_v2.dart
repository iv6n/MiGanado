import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/calendar/data/services/alert_service.dart';
import 'package:miganado/providers/calendar_sync_providers.dart';
import 'package:miganado/features/calendar/data/models/alerta_entity.dart';

/// Widget de panel de alertas para dashboard
/// Muestra las alertas activas del día
class AlertasWidget extends ConsumerWidget {
  const AlertasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alertasAsync = ref.watch(alertasActivasProvider);

    return alertasAsync.when(
      data: (alertas) {
        if (alertas.isEmpty) {
          return const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(Icons.check_circle, color: Colors.green, size: 40),
                  SizedBox(height: 8),
                  Text(
                    'Sin alertas pendientes',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        // Filtrar alertas críticas
        final alertasCriticas =
            alertas.where((a) => a.tipo == TipoAlerta.critica).toList();

        return Column(
          children: [
            // Header con conteo
            Card(
              color: alertasCriticas.isNotEmpty
                  ? Colors.red.shade50
                  : Colors.orange.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_active,
                      color: alertasCriticas.isNotEmpty
                          ? Colors.red
                          : Colors.orange,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alertas Activas',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: alertasCriticas.isNotEmpty
                                ? Colors.red
                                : Colors.orange,
                          ),
                        ),
                        Text(
                          '${alertas.length} total • ${alertasCriticas.length} críticas',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Lista de alertas
            ...alertas.take(5).map((alerta) {
              return _AlertaTile(
                alerta: alerta,
                onActuada: (alertaActualizada) {
                  ref.invalidate(alertasActivasProvider);
                },
              );
            }).toList(),

            // Ver más si hay más de 5
            if (alertas.length > 5)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextButton.icon(
                  icon: const Icon(Icons.arrow_forward),
                  label: Text('Ver ${alertas.length - 5} más'),
                  onPressed: () {
                    // TODO: Navegar a pantalla de todas las alertas
                  },
                ),
              ),
          ],
        );
      },
      loading: () => const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: 80,
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
      error: (err, st) => Card(
        color: Colors.red.shade50,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.error, color: Colors.red.shade700),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Error al cargar alertas: $err',
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Tile individual para una alerta
class _AlertaTile extends ConsumerWidget {
  final AlertaEntity alerta;
  final Function(AlertaEntity) onActuada;

  const _AlertaTile({
    required this.alerta,
    required this.onActuada,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diasHasta = alerta.fechaAlerta.difference(DateTime.now()).inDays;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: _parseColor(alerta.colorHex),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              alerta.iconoEmoji,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        title: Text(
          alerta.titulo,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          _getSubtitle(alerta, diasHasta),
          style: const TextStyle(fontSize: 12),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.check, size: 20),
                onPressed: () async {
                  final alertService = AlertService();
                  await alertService.marcarAlertaActuada(alerta);
                  onActuada(alerta);

                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('✅ Alerta actuada'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                tooltip: 'Marcar como actuada',
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const Text('Descartar'),
                    onTap: () async {
                      final alertService = AlertService();
                      await alertService.descartarAlerta(alerta);
                      onActuada(alerta);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getSubtitle(AlertaEntity alerta, int diasHasta) {
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    final fecha = formatter.format(alerta.fechaAlerta);

    if (alerta.tipo == TipoAlerta.critica) {
      return '🔴 CRÍTICA: Hoy - $fecha';
    } else if (alerta.tipo == TipoAlerta.anticipada) {
      return '📅 En $diasHasta días - $fecha';
    } else {
      return '❌ Vencida - $fecha';
    }
  }

  Color _parseColor(String hex) {
    hex = hex.replaceAll('#', '');
    return Color(int.parse('FF$hex', radix: 16));
  }
}
