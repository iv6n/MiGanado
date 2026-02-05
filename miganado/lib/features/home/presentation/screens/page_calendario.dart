import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/providers/calendar_providers.dart';
import 'package:miganado/features/calendar/ui/screens/crear_evento_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class PageCalendario extends ConsumerStatefulWidget {
  const PageCalendario({super.key});

  @override
  ConsumerState<PageCalendario> createState() => _PageCalendarioState();
}

class _PageCalendarioState extends ConsumerState<PageCalendario> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;

  @override
  Widget build(BuildContext context) {
    final todosLosEventosAsync = ref.watch(todosLosEventosProvider);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          heroTag: 'calendario_fab_create',
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
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: false,
              floating: true,
              snap: false,
              expandedHeight: 0,
              centerTitle: true,
              title: Text(AppStrings.calendarTitle2),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 8),
                child: todosLosEventosAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('Error: $err')),
                  data: (eventos) {
                    final Map<DateTime, List<dynamic>> eventosPorDia = {};
                    for (final evento in eventos) {
                      final fecha = DateTime(
                          evento.fechaProgramada.year,
                          evento.fechaProgramada.month,
                          evento.fechaProgramada.day);
                      eventosPorDia.putIfAbsent(fecha, () => []).add(evento);
                    }
                    return TableCalendar(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2100, 12, 31),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      onFormatChanged: (format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      },
                      availableCalendarFormats: const {
                        CalendarFormat.twoWeeks: ' + ',
                        CalendarFormat.month: ' - ',
                      },
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      eventLoader: (day) {
                        final key = DateTime(day.year, day.month, day.day);
                        return eventosPorDia[key] ?? [];
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      },
                      calendarStyle: const CalendarStyle(
                        markerDecoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      headerStyle: const HeaderStyle(
                          formatButtonVisible: true,
                          formatButtonShowsNext: false,
                          titleCentered: true,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          formatButtonPadding:
                              EdgeInsets.symmetric(horizontal: 10)),
                    );
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(height: 1),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  _EventosPendientesTab(selectedDay: _selectedDay),
                  _EventosRealizadosTab(selectedDay: _selectedDay),
                  _EventosProximosTab(selectedDay: _selectedDay),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Tab de eventos pendientes
class _EventosPendientesTab extends ConsumerWidget {
  final DateTime? selectedDay;
  const _EventosPendientesTab({this.selectedDay});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosPendientes = ref.watch(eventosPendientesProvider);
    final resumen = ref.watch(resumenEventosProvider);

    return eventosPendientes.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        // Filtrar por día si hay uno seleccionado
        final eventosFiltrados = selectedDay == null
            ? eventos
            : eventos.where((evento) {
                final fecha = DateTime(evento.fechaProgramada.year,
                    evento.fechaProgramada.month, evento.fechaProgramada.day);
                return fecha ==
                    DateTime(selectedDay!.year, selectedDay!.month,
                        selectedDay!.day);
              }).toList();
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
              if (eventosFiltrados.isEmpty)
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
                  itemCount: eventosFiltrados.length,
                  itemBuilder: (context, index) {
                    final evento = eventosFiltrados[index];
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
  final DateTime? selectedDay;
  const _EventosRealizadosTab({this.selectedDay});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosRealizados = ref.watch(eventosRealizadosProvider);
    final resumen = ref.watch(resumenEventosProvider);

    return eventosRealizados.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        final eventosFiltrados = selectedDay == null
            ? eventos
            : eventos.where((evento) {
                final fecha = DateTime(evento.fechaProgramada.year,
                    evento.fechaProgramada.month, evento.fechaProgramada.day);
                return fecha ==
                    DateTime(selectedDay!.year, selectedDay!.month,
                        selectedDay!.day);
              }).toList();
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
              if (eventosFiltrados.isEmpty)
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
                  itemCount: eventosFiltrados.length,
                  itemBuilder: (context, index) {
                    final evento = eventosFiltrados[index];
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
  final DateTime? selectedDay;
  const _EventosProximosTab({this.selectedDay});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventosProximos = ref.watch(eventosProximosProvider);
    final eventosUrgentes = ref.watch(eventosUrgentesProvider);

    return eventosProximos.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (eventos) {
        final eventosFiltrados = selectedDay == null
            ? eventos
            : eventos.where((evento) {
                final fecha = DateTime(evento.fechaProgramada.year,
                    evento.fechaProgramada.month, evento.fechaProgramada.day);
                return fecha ==
                    DateTime(selectedDay!.year, selectedDay!.month,
                        selectedDay!.day);
              }).toList();
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: _ResumenCard(
                  titulo: 'Próximos Eventos (7 días)',
                  cantidad: eventosFiltrados.length,
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
              if (eventosFiltrados.isEmpty)
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
                  itemCount: eventosFiltrados.length,
                  itemBuilder: (context, index) {
                    final evento = eventosFiltrados[index];
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
class _EventoListItem extends ConsumerWidget {
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

  String _getEstadoIcon(dynamic estado) {
    final estadoStr = estado.toString();
    if (estadoStr.contains('pendiente')) return '⏳';
    if (estadoStr.contains('realizado')) return '✅';
    if (estadoStr.contains('vencido')) return '❌';
    if (estadoStr.contains('cancelado')) return '🚫';
    if (estadoStr.contains('pospuesto')) return '⏸️';
    return '📌';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final esPendiente = evento.estado.toString().contains('pendiente');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ListTile(
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
                Row(
                  children: [
                    Text(
                      _getEstadoIcon(evento.estado),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _formatearFecha(evento.fechaProgramada),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                if (evento.descripcion != null &&
                    evento.descripcion!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      evento.descripcion!,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
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
          ),
          // Botones de acción para eventos pendientes
          if (esPendiente)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      // Mostrar diálogo para completar
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text(AppStrings.buttonMarkComplete),
                          content:
                              Text('¿Completar evento "${evento.titulo}"?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Cancelar'),
                            ),
                            FilledButton(
                              onPressed: () async {
                                try {
                                  await ref.read(
                                      completarEventoProvider(evento.id)
                                          .future);
                                  if (context.mounted) {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            '✓ Evento marcado como realizado'),
                                        backgroundColor: Colors.green,
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                } catch (e) {
                                  if (context.mounted) {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Error: $e'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Text('Completar'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.check_circle),
                    label: const Text('Completar'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

enum AlertaTipo { rojo, amarillo, verde }
