import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/providers/calendar_providers.dart';
import 'package:miganado/features/calendar/ui/screens/crear_evento_screen.dart';

class PageCalendario extends ConsumerWidget {
  const PageCalendario({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('📅 Calendario Ganadero'),
          centerTitle: true,
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.pending_actions), text: 'Pendientes'),
              Tab(icon: Icon(Icons.check_circle), text: 'Realizados'),
              Tab(icon: Icon(Icons.calendar_month), text: 'Próximos'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _EventosPendientesTab(),
            _EventosRealizadosTab(),
            _EventosProximosTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'page_calendario_fab',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CrearEventoScreen(),
              ),
            );
          },
          tooltip: 'Crear evento',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

/// Tab de eventos pendientes
class _EventosPendientesTab extends ConsumerWidget {
  const _EventosPendientesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosPendientes = ref.watch(eventosPendientesProvider);
    final resumen = ref.watch(resumenEventosProvider);

    return eventosPendientes.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: resumen.when(
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                  data: (data) {
                    return _ResumenCard(
                      titulo: 'Eventos Pendientes',
                      cantidad: data['pendientes'] ?? 0,
                      color: Colors.orange,
                      icono: Icons.pending_actions,
                    );
                  },
                ),
              ),
              if (eventos.isEmpty)
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Icon(Icons.done_all, size: 64, color: Colors.green[200]),
                      const SizedBox(height: 16),
                      const Text(
                        'Sin eventos pendientes',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: eventos.length,
                  itemBuilder: (context, index) {
                    final evento = eventos[index];
                    return _EventoListItem(evento: evento);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

/// Tab de eventos realizados
class _EventosRealizadosTab extends ConsumerWidget {
  const _EventosRealizadosTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosRealizados = ref.watch(eventosRealizadosProvider);
    final resumen = ref.watch(resumenEventosProvider);

    return eventosRealizados.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: resumen.when(
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                  data: (data) {
                    return _ResumenCard(
                      titulo: 'Eventos Realizados',
                      cantidad: data['realizados'] ?? 0,
                      color: Colors.green,
                      icono: Icons.check_circle,
                    );
                  },
                ),
              ),
              if (eventos.isEmpty)
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Icon(Icons.inbox, size: 64, color: Colors.grey[300]),
                      const SizedBox(height: 16),
                      const Text(
                        'Sin eventos realizados',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: eventos.length,
                  itemBuilder: (context, index) {
                    final evento = eventos[index];
                    return _EventoListItem(evento: evento);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

/// Tab de eventos próximos
class _EventosProximosTab extends ConsumerWidget {
  const _EventosProximosTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosProximos = ref.watch(eventosProximosProvider);
    final eventosUrgentes = ref.watch(eventosUrgentesProvider);

    return eventosProximos.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: _ResumenCard(
                  titulo: 'Próximos Eventos (7 días)',
                  cantidad: eventos.length,
                  color: Colors.blue,
                  icono: Icons.calendar_month,
                ),
              ),
              eventosUrgentes.when(
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
                data: (urgentes) {
                  if (urgentes.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.red[50],
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.warning,
                                      color: Colors.red[700], size: 20),
                                  const SizedBox(width: 8),
                                  Text(
                                    '${urgentes.length} Evento(s) Crítico(s)',
                                    style: TextStyle(
                                      color: Colors.red[700],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              if (eventos.isEmpty)
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Icon(Icons.check_circle_outline,
                          size: 64, color: Colors.green[200]),
                      const SizedBox(height: 16),
                      const Text(
                        'Sin eventos próximos',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: eventos.length,
                  itemBuilder: (context, index) {
                    final evento = eventos[index];
                    return _EventoListItem(evento: evento);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

/// Widget para mostrar resumen de eventos
class _ResumenCard extends StatelessWidget {
  final String titulo;
  final int cantidad;
  final Color color;
  final IconData icono;

  const _ResumenCard({
    required this.titulo,
    required this.cantidad,
    required this.color,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icono, color: color, size: 32),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$cantidad evento${cantidad != 1 ? 's' : ''}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget para mostrar un evento en lista
class _EventoListItem extends StatelessWidget {
  final dynamic evento;

  const _EventoListItem({required this.evento});

  String _formatearFecha(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = fecha.difference(hoy).inDays;

    if (diferencia == 0) return 'Hoy';
    if (diferencia == 1) return 'Mañana';
    if (diferencia == -1) return 'Ayer';

    return '${fecha.day}/${fecha.month}/${fecha.year}';
  }

  Color _getColorPrioridad(dynamic prioridad) {
    final prioridadStr = prioridad.toString();
    if (prioridadStr.contains('baja')) return Colors.green;
    if (prioridadStr.contains('media')) return Colors.blue;
    if (prioridadStr.contains('alta')) return Colors.orange;
    if (prioridadStr.contains('critica')) return Colors.red;
    return Colors.grey;
  }

  String _getIconoCategoria(dynamic categoria) {
    final catStr = categoria.toString();
    if (catStr.contains('sanitaria')) return '💉';
    if (catStr.contains('reproductiva')) return '🐄';
    if (catStr.contains('productiva')) return '📊';
    if (catStr.contains('ambiental')) return '🌱';
    return '📌';
  }

  String _getNombrePrioridad(dynamic prioridad) {
    final prioridadStr = prioridad.toString();
    if (prioridadStr.contains('baja')) return 'Baja';
    if (prioridadStr.contains('media')) return 'Media';
    if (prioridadStr.contains('alta')) return 'Alta';
    if (prioridadStr.contains('critica')) return 'Crítica';
    return 'Media';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Text(
          _getIconoCategoria(evento.categoria),
          style: const TextStyle(fontSize: 24),
        ),
        title: Text(
          evento.titulo ?? 'Sin título',
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              _formatearFecha(evento.fechaProgramada),
              style: const TextStyle(fontSize: 12),
            ),
            if (evento.descripcion != null && evento.descripcion!.isNotEmpty)
              Text(
                evento.descripcion!,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: _getColorPrioridad(evento.prioridad).withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            _getNombrePrioridad(evento.prioridad),
            style: TextStyle(
              color: _getColorPrioridad(evento.prioridad),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Evento: ${evento.titulo}'),
              duration: const Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}

enum AlertaTipo { rojo, amarillo, verde }
