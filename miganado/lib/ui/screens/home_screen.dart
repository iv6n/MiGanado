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

/// Pantalla de inicio con menú principal y dashboard profesional
class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesProvider);
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: animalesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
              const SizedBox(height: 16),
              Text('Error: $error', textAlign: TextAlign.center),
            ],
          ),
        ),
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
              // Header con logo
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.grey[50]!,
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Hero(
                          tag: 'app_logo',
                          child: Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 30,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(36),
                              child: Image.network(
                                'https://i.ibb.co/nsNCZ1JT/logoxd-1.png',
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green[700],
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: const Icon(
                                      Icons.pets,
                                      color: Colors.white,
                                      size: 60,
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
              ),

              // Contenido principal
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    // Card de alertas si las hay
                    if (totalAlertas > 0) ...[
                      _DismissableAlertCard(
                        totalAlertas: totalAlertas,
                        sinVacunar: sinVacunar,
                        sinDesparasitar: sinDesparasitar,
                        sinVitaminas: sinVitaminas,
                      ),
                      const SizedBox(height: 28),
                    ],

                    // Título Resumen por Tipo
                    Padding(
                      padding: const EdgeInsets.only(left: 4, bottom: 16),
                      child: Text(
                        'Resumen por Tipo',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              letterSpacing: -0.5,
                            ),
                      ),
                    ),

                    // Resumen por Tipo - Grid compacto
                    if (tiposOrdenados.isEmpty)
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: Column(
                            children: [
                              Icon(
                                Icons.pets_outlined,
                                size: 64,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No hay animales registrados',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Colors.grey[500],
                                      fontSize: 15,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      )
                    else
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tiposOrdenados.length + 1,
                          itemBuilder: (context, index) {
                            if (index == tiposOrdenados.length) {
                              // Botón Agregar
                              return _AgregarCard(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ListaAnimalesScreen(),
                                    ),
                                  );
                                },
                              );
                            }
                            final tipo = tiposOrdenados[index].key;
                            final cantidad = tiposOrdenados[index].value;
                            return _ConteoTipoCard(
                              tipo: tipo,
                              cantidad: cantidad,
                            );
                          },
                        ),
                      ),

                    const SizedBox(height: 32),

                    // Título Acciones Rápidas
                    Padding(
                      padding: const EdgeInsets.only(left: 4, bottom: 16),
                      child: Text(
                        'Acciones Rápidas',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              letterSpacing: -0.5,
                            ),
                      ),
                    ),

                    // Menú de Acciones
                    _MenuCard(
                      imagePath: 'assets/images/directorio.png',
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
                    const SizedBox(height: 12),
                    _MenuCard(
                      imagePath: 'assets/images/mantenimiento.png',
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
                    const SizedBox(height: 12),
                    _MenuCard(
                      imagePath: 'assets/images/ubicaciones.png',
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
                    const SizedBox(height: 12),
                    _MenuCard(
                      imagePath: 'assets/images/perfil.png',
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
                    const SizedBox(height: 20),
                  ]),
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

/// Card de alertas dismissable con diseño mejorado
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

class _DismissableAlertCardState extends State<_DismissableAlertCard>
    with SingleTickerProviderStateMixin {
  bool _isVisible = true;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) {
      return const SizedBox.shrink();
    }

    return FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.orange[200]!, width: 2),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.08),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.warning_rounded,
                    color: Colors.orange[700],
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.totalAlertas} pendientes',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.orange[900],
                                  fontSize: 15,
                                ),
                      ),
                      Text(
                        'Requieren atención',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      _controller.reverse().then((_) {
                        setState(() {
                          _isVisible = false;
                        });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        Icons.close,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (widget.sinVacunar > 0)
              _AlertItem(
                imagePath: 'assets/images/vacuna.png',
                label: 'Sin vacunar',
                cantidad: widget.sinVacunar,
                color: Colors.red,
              ),
            if (widget.sinDesparasitar > 0)
              _AlertItem(
                imagePath: 'assets/images/desparasitar.png',
                label: 'Sin desparasitar',
                cantidad: widget.sinDesparasitar,
                color: Colors.orange,
              ),
            if (widget.sinVitaminas > 0)
              _AlertItem(
                imagePath: 'assets/images/vitaminas.png',
                label: 'Sin vitaminas',
                cantidad: widget.sinVitaminas,
                color: Colors.purple,
              ),
          ],
        ),
      ),
    );
  }
}

/// Item dentro de alert card con diseño mejorado
class _AlertItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final int cantidad;
  final Color color;

  const _AlertItem({
    required this.imagePath,
    required this.label,
    required this.cantidad,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                width: 16,
                height: 16,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.circle, color: color, size: 16);
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              cantidad.toString(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta de menú profesional
class _MenuCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const _MenuCard({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey[200]!, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    width: 36,
                    height: 36,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.apps, color: color, size: 36);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[500],
                            fontSize: 13,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: color,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Tarjeta de conteo por tipo - SOLO imagen y número
class _ConteoTipoCard extends StatelessWidget {
  final TipoGanado tipo;
  final int cantidad;

  const _ConteoTipoCard({
    required this.tipo,
    required this.cantidad,
  });

  @override
  Widget build(BuildContext context) {
    // Mapeo de imágenes para cada tipo de ganado
    final imagenesAnimales = {
      TipoGanado.vaca: 'assets/images/vaca.png',
      TipoGanado.toro: 'assets/images/toro.png',
      TipoGanado.becerro: 'assets/images/becerro.png',
      TipoGanado.novillo: 'assets/images/novillo.png',
      TipoGanado.caballo: 'assets/images/caballo.png',
      TipoGanado.mula: 'assets/images/mula.png',
      TipoGanado.burro: 'assets/images/burro.png',
    };

    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Imagen del animal
          Center(
            child: Image.asset(
              imagenesAnimales[tipo] ?? 'assets/images/default.png',
              width: 48,
              height: 48,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.pets,
                  color: Colors.grey[400],
                  size: 48,
                );
              },
            ),
          ),
          // Badge con número
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                cantidad.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Botón agregar con diseño profesional
class _AgregarCard extends StatelessWidget {
  final VoidCallback onTap;

  const _AgregarCard({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.amber[300]!, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.amber.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.add_rounded,
                color: Colors.amber[700],
                size: 28,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Agregar',
              style: TextStyle(
                color: Colors.amber[900],
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
