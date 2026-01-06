import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/screens/lista_animales_screen.dart';
import 'package:miganado/ui/screens/ubicaciones_screen.dart';
import 'package:miganado/ui/screens/ganadero_info_screen.dart';
import 'package:miganado/ui/screens/seleccionar_animal_screen.dart';
import 'package:miganado/ui/screens/registrar_mantenimiento_screen.dart';

/// Pantalla de inicio con menú principal y dashboard mejorado
class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesProvider);
    return Scaffold(
      body: animalesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (animales) {
          // Contar animales por tipo
          final conteoTipos = <TipoGanado, int>{};
          for (var animal in animales) {
            conteoTipos[animal.tipo] = (conteoTipos[animal.tipo] ?? 0) + 1;
          }

          final tiposOrdenados = conteoTipos.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));

          // Contar alertas calculadas automáticamente
          int sinVacunar = 0;
          int sinDesparasitar = 0;
          int sinVitaminas = 0;
          DateTime ahora = DateTime.now();

          for (var animal in animales) {
            // Sin vacunar
            if (!animal.vacunado) {
              sinVacunar++;
            } else if (animal.fechaUltimaVacuna != null) {
              int dias = ahora.difference(animal.fechaUltimaVacuna!).inDays;
              if (dias > 365) sinVacunar++;
            }

            // Sin desparasitar
            if (!animal.desparasitado) {
              sinDesparasitar++;
            } else if (animal.fechaUltimoDesparasitante != null) {
              int dias =
                  ahora.difference(animal.fechaUltimoDesparasitante!).inDays;
              if (dias > 180) sinDesparasitar++;
            }

            // Sin vitaminas
            if (!animal.tieneVitaminas) {
              sinVitaminas++;
            } else if (animal.fechaVitaminas != null) {
              int dias = ahora.difference(animal.fechaVitaminas!).inDays;
              if (dias > 90) sinVitaminas++;
            }
          }
          final totalAlertas = sinVacunar + sinDesparasitar + sinVitaminas;

          return CustomScrollView(
            slivers: [
              // Header con logo - SliverAppBar con gradiente
              SliverAppBar(
                expandedHeight: 240,
                floating: true,
                pinned: false,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Transform.scale(
                            scale: 1.05,
                            child: Image.network(
                              'https://i.ibb.co/nsNCZ1JT/logoxd-1.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 220,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: const Icon(
                                    Icons.pets,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Contenido principal
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Card de alertas si las hay
                      if (totalAlertas > 0) ...[
                        _DismissableAlertCard(
                          totalAlertas: totalAlertas,
                          sinVacunar: sinVacunar,
                          sinDesparasitar: sinDesparasitar,
                          sinVitaminas: sinVitaminas,
                        ),
                        const SizedBox(height: AppSpacing.lg),
                      ],

                      // Resumen por Tipo con FAB
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Resumen por Tipo',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.md),
                      if (tiposOrdenados.isEmpty)
                        Center(
                          child: Text(
                            'No hay animales registrados',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                        )
                      else
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                tiposOrdenados.length,
                                (index) {
                                  final tipo = tiposOrdenados[index].key;
                                  final cantidad = tiposOrdenados[index].value;
                                  return _ConteoTipoCard(
                                    tipo: tipo,
                                    cantidad: cantidad,
                                  );
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ListaAnimalesScreen(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 80,
                                  height: 100,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        right: AppSpacing.md),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: AppSpacing.sm,
                                      vertical: AppSpacing.sm,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[50],
                                      border:
                                          Border.all(color: Colors.amber[300]!),
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.md),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.amber[700],
                                          size: 28,
                                        ),
                                        const SizedBox(height: AppSpacing.xs),
                                        Text(
                                          'Agregar',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.amber[900],
                                              ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: AppSpacing.lg),

                      // Menú de Acciones
                      Text(
                        'Acciones Rápidas',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      _MenuCard(
                        icon: Icons.pets_outlined,
                        title: 'Directorio',
                        subtitle: 'Ver, filtrar y buscar',
                        color: Colors.green,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ListaAnimalesScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: AppSpacing.md),
                      _MenuCard(
                        icon: Icons.medical_services_outlined,
                        title: 'Registrar Mantenimiento',
                        subtitle: 'Vacunas, baños, desparasitación',
                        color: Colors.blue,
                        onTap: () async {
                          final animal =
                              await Navigator.of(context).push<dynamic>(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SeleccionarAnimalScreen(),
                            ),
                          );

                          if (animal != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    RegistrarMantenimientoScreen(
                                  animal: animal,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(height: AppSpacing.md),
                      _MenuCard(
                        icon: Icons.location_on_outlined,
                        title: 'Ubicaciones',
                        subtitle: 'Gestionar ubicaciones',
                        color: Colors.orange,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const UbicacionesScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: AppSpacing.md),
                      _MenuCard(
                        icon: Icons.person_outline,
                        title: 'Información Personal',
                        subtitle: 'Datos del ganadero',
                        color: Colors.purple,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GanaderoInfoScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: AppSpacing.lg),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// WIDGETS PERSONALIZADOS
// ═══════════════════════════════════════════════════════════════════════════

/// Card de alertas dismissable
class _DismissableAlertCard extends StatefulWidget {
  final int totalAlertas;
  final int sinVacunar;
  final int sinDesparasitar;
  final int sinVitaminas;

  const _DismissableAlertCard({
    required this.totalAlertas,
    required this.sinVacunar,
    required this.sinDesparasitar,
    required this.sinVitaminas,
  });

  @override
  State<_DismissableAlertCard> createState() => _DismissableAlertCardState();
}

class _DismissableAlertCardState extends State<_DismissableAlertCard> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red[50]!, Colors.orange[50]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.orange[300]!, width: 1.5),
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning_rounded, color: Colors.orange[700], size: 24),
              const SizedBox(width: AppSpacing.sm),
              Text(
                '${widget.totalAlertas} pendientes',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isVisible = false;
                  });
                },
                child: Icon(
                  Icons.close,
                  color: Colors.orange[700],
                  size: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          if (widget.sinVacunar > 0)
            _AlertItem(
              icon: Icons.vaccines,
              label: 'Sin vacunar',
              cantidad: widget.sinVacunar,
              color: Colors.red,
            ),
          if (widget.sinDesparasitar > 0)
            _AlertItem(
              icon: Icons.bug_report,
              label: 'Sin desparasitar',
              cantidad: widget.sinDesparasitar,
              color: Colors.orange,
            ),
          if (widget.sinVitaminas > 0)
            _AlertItem(
              icon: Icons.local_pharmacy,
              label: 'Sin vitaminas',
              cantidad: widget.sinVitaminas,
              color: Colors.purple,
            ),
        ],
      ),
    );
  }
}

/// Item dentro de alert card
class _AlertItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int cantidad;
  final Color color;

  const _AlertItem({
    required this.icon,
    required this.label,
    required this.cantidad,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[700],
                ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              cantidad.toString(),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta de menú con icono coloreado
class _MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const _MenuCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color.withOpacity(0.3), width: 1.5),
          borderRadius: BorderRadius.circular(AppRadius.md),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: color, size: 16),
          ],
        ),
      ),
    );
  }
}

/// Tarjeta de conteo por tipo mejorada
class _ConteoTipoCard extends StatelessWidget {
  final TipoGanado tipo;
  final int cantidad;

  const _ConteoTipoCard({
    required this.tipo,
    required this.cantidad,
  });

  @override
  Widget build(BuildContext context) {
    final tipoNombre =
        tipo.toString().split('.').last.replaceAll('_', ' ').toUpperCase();
    final iconos = {
      TipoGanado.vaca: Icons.pets,
      TipoGanado.toro: Icons.pets,
      TipoGanado.becerro: Icons.pets,
      TipoGanado.novillo: Icons.pets,
      TipoGanado.caballo: Icons.directions_run,
      TipoGanado.mula: Icons.directions_run,
      TipoGanado.burro: Icons.directions_run,
    };

    return Container(
      margin: const EdgeInsets.only(right: AppSpacing.md),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[50]!, Colors.blue[100]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.blue[200]!),
        borderRadius: BorderRadius.circular(AppRadius.md),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconos[tipo] ?? Icons.pets,
            color: Colors.blue[700],
            size: 28,
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            tipoNombre.substring(0, 1) +
                (tipoNombre.length > 1
                    ? tipoNombre.substring(1).toLowerCase()
                    : ''),
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xs),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              cantidad.toString(),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
