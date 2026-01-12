import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/screens/agregar_animal_screen.dart';
import 'package:miganado/ui/screens/detalle_animal_screen.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';

/// Provider para el filtro de tipo
final animalFilterTipoProvider = StateProvider<TipoGanado?>((ref) => null);

/// Provider para el filtro de sexo
final animalFilterSexoProvider = StateProvider<Sexo?>((ref) => null);

/// Provider para el buscador de animales
final animalSearchProvider = StateProvider<String>((ref) => '');

/// Provider para el tipo de ordenamiento
final animalSortByProvider = StateProvider<String>((ref) => 'recientes');

/// Provider para el filtro de mostrar solo últimos registrados
final animalFilterUltimosProvider = StateProvider<bool>((ref) => true);

/// Pantalla de lista de animales con diseño moderno
class ListaAnimalesScreen extends ConsumerWidget {
  const ListaAnimalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesProvider);
    final filtroTipo = ref.watch(animalFilterTipoProvider);
    final filtroSexo = ref.watch(animalFilterSexoProvider);
    final busqueda = ref.watch(animalSearchProvider).toLowerCase();
    final ordenamiento = ref.watch(animalSortByProvider);
    final mostrarUltimos = ref.watch(animalFilterUltimosProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Directorio de Animales',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            tooltip: 'Filtrar',
            onPressed: () {
              _mostrarDialogoFiltros(context, ref);
            },
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.sort),
            tooltip: 'Ordenar',
            onSelected: (value) {
              ref.read(animalSortByProvider.notifier).state = value;
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'recientes',
                child: Text('Más Recientes'),
              ),
              const PopupMenuItem(
                value: 'antiguos',
                child: Text('Más Antiguos'),
              ),
              const PopupMenuItem(
                value: 'nombre',
                child: Text('Por Nombre'),
              ),
              const PopupMenuItem(
                value: 'tipo',
                child: Text('Por Tipo'),
              ),
            ],
          ),
        ],
      ),
      body: animalesAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, color: Colors.red[300], size: 64),
              const SizedBox(height: 16),
              Text(
                'Error: $error',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        data: (animales) {
          // Aplicar todos los filtros
          var animalesFiltrados = animales;

          if (mostrarUltimos) {
            animalesFiltrados = animalesFiltrados.take(10).toList();
          }

          if (filtroTipo != null) {
            animalesFiltrados =
                animalesFiltrados.where((a) => a.tipo == filtroTipo).toList();
          }

          if (filtroSexo != null) {
            animalesFiltrados =
                animalesFiltrados.where((a) => a.sexo == filtroSexo).toList();
          }

          if (busqueda.isNotEmpty) {
            animalesFiltrados = animalesFiltrados
                .where((a) =>
                    a.numeroArete.toLowerCase().contains(busqueda) ||
                    a.raza.toLowerCase().contains(busqueda))
                .toList();
          }

          // Aplicar ordenamiento
          _aplicarOrdenamiento(animalesFiltrados, ordenamiento);

          if (animales.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets_outlined,
                    size: 80,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Sin animales registrados',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Comienza agregando tu primer animal',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AgregarAnimalScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Agregar Animal'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              // Buscador con diseño moderno
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) {
                    ref.read(animalSearchProvider.notifier).state = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Buscar por arete o raza...',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.green[600]!,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),

              // Indicador de resultados
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${animalesFiltrados.length} ${animalesFiltrados.length == 1 ? 'animal' : 'animales'}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    if (mostrarUltimos)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Mostrando últimos registrados',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // Lista de animales
              Expanded(
                child: animalesFiltrados.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 64,
                              color: Colors.grey[300],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'No hay resultados',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: animalesFiltrados.length,
                        itemBuilder: (context, index) {
                          final animal = animalesFiltrados[index];
                          return _ModernAnimalCard(
                            animal: animal,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetalleAnimalScreen(animalId: animal.id),
                                ),
                              );
                            },
                            onDelete: () {
                              _mostrarDialogoEliminacion(context, ref, animal);
                            },
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AgregarAnimalScreen(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Agregar'),
        backgroundColor: Colors.green[600],
      ),
    );
  }

  void _mostrarDialogoFiltros(BuildContext context, WidgetRef ref) {
    final filtroTipo = ref.watch(animalFilterTipoProvider);
    final filtroSexo = ref.watch(animalFilterSexoProvider);
    final mostrarUltimos = ref.watch(animalFilterUltimosProvider);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Filtrar Animales'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                title: const Text('Solo últimos registrados'),
                value: mostrarUltimos,
                onChanged: (value) {
                  ref.read(animalFilterUltimosProvider.notifier).state =
                      value ?? true;
                },
              ),
              const Divider(),
              Text(
                'Tipo de Ganado',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  FilterChip(
                    label: const Text('Todos'),
                    selected: filtroTipo == null,
                    onSelected: (selected) {
                      ref.read(animalFilterTipoProvider.notifier).state = null;
                    },
                  ),
                  ...TipoGanado.values.map((tipo) {
                    final tipoNombre = tipo
                        .toString()
                        .split('.')
                        .last
                        .replaceAll('_', ' ')
                        .toUpperCase();
                    return FilterChip(
                      label: Text(tipoNombre),
                      selected: filtroTipo == tipo,
                      onSelected: (selected) {
                        ref.read(animalFilterTipoProvider.notifier).state =
                            selected ? tipo : null;
                      },
                    );
                  }).toList(),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Sexo',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  FilterChip(
                    label: const Text('Todos'),
                    selected: filtroSexo == null,
                    onSelected: (selected) {
                      ref.read(animalFilterSexoProvider.notifier).state = null;
                    },
                  ),
                  FilterChip(
                    label: const Text('Hembra'),
                    selected: filtroSexo == Sexo.hembra,
                    onSelected: (selected) {
                      ref.read(animalFilterSexoProvider.notifier).state =
                          selected ? Sexo.hembra : null;
                    },
                  ),
                  FilterChip(
                    label: const Text('Macho'),
                    selected: filtroSexo == Sexo.macho,
                    onSelected: (selected) {
                      ref.read(animalFilterSexoProvider.notifier).state =
                          selected ? Sexo.macho : null;
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cerrar'),
          ),
          TextButton(
            onPressed: () {
              ref.read(animalFilterTipoProvider.notifier).state = null;
              ref.read(animalFilterSexoProvider.notifier).state = null;
              ref.read(animalFilterUltimosProvider.notifier).state = true;
              Navigator.pop(context);
            },
            child: const Text('Limpiar Filtros'),
          ),
        ],
      ),
    );
  }

  void _mostrarDialogoEliminacion(
      BuildContext context, WidgetRef ref, AnimalModel animal) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Eliminar animal?'),
        content: Text(
          'Estás a punto de eliminar a ${animal.nombrePersonalizado?.isNotEmpty == true ? animal.nombrePersonalizado! : animal.numeroArete}. Esta acción no se puede deshacer.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              final database = ref.read(databaseProvider);
              database.deleteAnimal(animal.id).then((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Animal eliminado exitosamente')),
                );
              });
            },
            child: const Text('Eliminar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _aplicarOrdenamiento(List<AnimalModel> animales, String ordenamiento) {
    switch (ordenamiento) {
      case 'recientes':
        animales.sort((a, b) => b.fechaRegistro.compareTo(a.fechaRegistro));
        break;
      case 'antiguos':
        animales.sort((a, b) => a.fechaRegistro.compareTo(b.fechaRegistro));
        break;
      case 'nombre':
        animales.sort(
            (a, b) => a.raza.toLowerCase().compareTo(b.raza.toLowerCase()));
        break;
      case 'tipo':
        animales.sort((a, b) => a.tipo.toString().compareTo(b.tipo.toString()));
        break;
    }
  }
}

/// Tarjeta moderna de animal
class _ModernAnimalCard extends StatelessWidget {
  final AnimalModel animal;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _ModernAnimalCard({
    required this.animal,
    required this.onTap,
    required this.onDelete,
  });

  // Mapeo de imágenes para cada tipo de ganado
  static const imagenesAnimales = {
    'vaca': 'assets/images/vaca.png',
    'toro': 'assets/images/toro.png',
    'becerro': 'assets/images/becerro.png',
    'novillo': 'assets/images/novillo.png',
    'caballo': 'assets/images/caballo.png',
    'mula': 'assets/images/mula.png',
    'burro': 'assets/images/burro.png',
  };

  @override
  Widget build(BuildContext context) {
    final alertas = _generarAlertas(animal);
    final tipoStr = animal.tipo.toString().split('.').last;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen del animal (foto del usuario o icono del tipo)
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child:
                        animal.fotoPath != null && animal.fotoPath!.isNotEmpty
                            ? Image.network(
                                animal.fotoPath!,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return _buildAnimalIcon(tipoStr);
                                },
                              )
                            : _buildAnimalIcon(tipoStr),
                  ),
                ),
                const SizedBox(width: 16),

                // Información del animal
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nombre y Arete
                      Text(
                        animal.nombrePersonalizado?.isNotEmpty == true
                            ? animal.nombrePersonalizado!
                            : 'Sin especificar',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '#${animal.numeroArete}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 8),

                      // Tipo y Raza
                      Row(
                        children: [
                          Text(
                            tipoStr.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            ' • ',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          Expanded(
                            child: Text(
                              animal.raza,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Etiquetas (Sexo y Estado)
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          _ModernTag(
                            label:
                                animal.sexo == Sexo.hembra ? 'Hembra' : 'Macho',
                            color: animal.sexo == Sexo.hembra
                                ? Colors.pink
                                : Colors.blue,
                          ),
                          if (animal.sexo == Sexo.hembra)
                            _ModernTag(
                              label: _getEstadoLabel(animal),
                              color: _getEstadoColor(animal),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Menú de opciones
                PopupMenuButton<String>(
                  icon:
                      Icon(Icons.more_vert, size: 20, color: Colors.grey[600]),
                  onSelected: (value) {
                    if (value == 'editar') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AgregarAnimalScreen(),
                        ),
                      );
                    } else if (value == 'eliminar') {
                      onDelete();
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'editar',
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: Colors.blue, size: 18),
                          SizedBox(width: 8),
                          Text('Editar'),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'eliminar',
                      child: Row(
                        children: [
                          Icon(Icons.delete, color: Colors.red, size: 18),
                          SizedBox(width: 8),
                          Text('Eliminar'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Indicadores de salud
            const SizedBox(height: 12),
            Row(
              children: [
                _ModernHealthIcon(
                  icon: Icons.vaccines,
                  isActive: animal.vacunado,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                _ModernHealthIcon(
                  icon: Icons.bug_report,
                  isActive: animal.desparasitado,
                  color: Colors.orange,
                ),
                const SizedBox(width: 10),
                _ModernHealthIcon(
                  icon: Icons.local_pharmacy,
                  isActive: animal.tieneVitaminas,
                  color: Colors.purple,
                ),
                const SizedBox(width: 10),
                _ModernHealthIcon(
                  icon: Icons.medical_services,
                  isActive: animal.tieneOtrosTratamientos,
                  color: Colors.blue,
                ),
              ],
            ),

            // Alertas en una línea combinada
            if (alertas.isNotEmpty) ...[
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red[200]!, width: 1),
                ),
                child: Row(
                  children: [
                    Icon(Icons.warning_rounded,
                        color: Colors.red[600], size: 16),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        alertas.join(' • '),
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAnimalIcon(String tipoStr) {
    return Center(
      child: Image.asset(
        imagenesAnimales[tipoStr] ?? 'assets/images/default.png',
        width: 40,
        height: 40,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.pets,
            color: Colors.grey[400],
            size: 36,
          );
        },
      ),
    );
  }

  String _getEstadoLabel(AnimalModel animal) {
    switch (animal.estadoReproductivo) {
      case EstadoReproductivo.prenada:
        return 'Prenada';
      case EstadoReproductivo.lactando:
        return 'Lactando';
      case EstadoReproductivo.seca:
        return 'Seca';
      case EstadoReproductivo.no_definido:
        return 'S/D';
    }
  }

  Color _getEstadoColor(AnimalModel animal) {
    switch (animal.estadoReproductivo) {
      case EstadoReproductivo.prenada:
        return Colors.purple;
      case EstadoReproductivo.lactando:
        return Colors.blue;
      case EstadoReproductivo.seca:
        return Colors.orange;
      case EstadoReproductivo.no_definido:
        return Colors.grey;
    }
  }

  List<String> _generarAlertas(AnimalModel animal) {
    List<String> alertas = [];
    final ahora = DateTime.now();

    // Alerta de vacunación
    if (!animal.vacunado) {
      alertas.add('Sin vacunar');
    } else if (animal.fechaUltimaVacuna != null) {
      final dias = ahora.difference(animal.fechaUltimaVacuna!).inDays;
      if (dias > 365) {
        alertas.add('Sin vacunar');
      }
    }

    // Alerta de desparasitación
    if (!animal.desparasitado) {
      alertas.add('Sin desparasitar');
    } else if (animal.fechaUltimoDesparasitante != null) {
      final dias = ahora.difference(animal.fechaUltimoDesparasitante!).inDays;
      if (dias > 180) {
        alertas.add('Sin desparasitar');
      }
    }

    // Alerta de vitaminas
    if (!animal.tieneVitaminas) {
      alertas.add('Sin vitaminas');
    } else if (animal.fechaVitaminas != null) {
      final dias = ahora.difference(animal.fechaVitaminas!).inDays;
      if (dias > 90) {
        alertas.add('Sin vitaminas');
      }
    }

    // Alerta de estado reproductivo
    if (animal.sexo == Sexo.hembra &&
        animal.estadoReproductivo == EstadoReproductivo.no_definido) {
      alertas.add('Estado reproductivo sin definir');
    }

    return alertas;
  }
}

/// Etiqueta moderna
class _ModernTag extends StatelessWidget {
  final String label;
  final Color color;

  const _ModernTag({
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),
      ),
    );
  }
}

/// Icono de salud moderno
class _ModernHealthIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Color color;

  const _ModernHealthIcon({
    required this.icon,
    required this.isActive,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: isActive ? color.withOpacity(0.15) : Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 20,
        color: isActive ? color : Colors.grey[300],
      ),
    );
  }
}
