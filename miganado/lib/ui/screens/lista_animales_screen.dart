import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/providers/data_providers.dart';
import 'package:miganado/providers/database_providers.dart';
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

/// Pantalla de lista de animales con filtros avanzados
class ListaAnimalesScreen extends ConsumerWidget {
  const ListaAnimalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(animalesProvider);
    final filtroTipo = ref.watch(animalFilterTipoProvider);
    final filtroSexo = ref.watch(animalFilterSexoProvider);
    final busqueda = ref.watch(animalSearchProvider).toLowerCase();
    final ordenamiento = ref.watch(animalSortByProvider);
    final mostrarUltimos = ref.watch(animalFilterUltimosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Directorio de Animales'),
        elevation: 0,
        actions: [
          // Botón de filtros
          IconButton(
            icon: const Icon(Icons.filter_list),
            tooltip: 'Filtrar',
            onPressed: () {
              _mostrarDialogoFiltros(context, ref);
            },
          ),
          // Botón de ordenamiento
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
              const Icon(Icons.error_outline, color: Colors.red, size: 48),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Error: $error',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        data: (animales) {
          // Aplicar todos los filtros
          var animalesFiltrados = animales;

          // Filtro de últimos registrados (predeterminado)
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
                    size: 64,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'Sin animales registrados',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  PrimaryButton(
                    label: 'Agregar primer animal',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AgregarAnimalScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              // Buscador
              Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: TextField(
                  onChanged: (value) {
                    ref.read(animalSearchProvider.notifier).state = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Buscar por arete o raza...',
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md),
                    ),
                  ),
                ),
              ),

              // Indicador de filtros activos y contador de resultados
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${animalesFiltrados.length} ${animalesFiltrados.length == 1 ? 'animal' : 'animales'}',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        if (mostrarUltimos)
                          Text(
                            'Mostrando últimos registrados',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.blue[600],
                                ),
                          ),
                      ],
                    ),
                    if (filtroTipo != null ||
                        filtroSexo != null ||
                        busqueda.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Filtros activos',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.orange[700],
                                  ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              // Lista de animales
              Expanded(
                child: animalesFiltrados.isEmpty
                    ? Center(
                        child: Text(
                          'No hay resultados',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md),
                        itemCount: animalesFiltrados.length,
                        itemBuilder: (context, index) {
                          final animal = animalesFiltrados[index];
                          return _AnimalCardWithAlertas(
                            animal: animal,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetalleAnimalScreen(animalId: animal.id),
                                ),
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AgregarAnimalScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  /// Abre un diálogo para filtrar la lista de animales
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
              // Filtro de últimos registrados
              CheckboxListTile(
                title: const Text('Solo últimos registrados'),
                value: mostrarUltimos,
                onChanged: (value) {
                  ref.read(animalFilterUltimosProvider.notifier).state =
                      value ?? true;
                },
              ),
              const Divider(),
              // Filtro de tipo
              Text(
                'Tipo de Ganado',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: AppSpacing.sm),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
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
              const SizedBox(height: AppSpacing.md),
              // Filtro de sexo
              Text(
                'Sexo',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: AppSpacing.sm),
              Wrap(
                spacing: AppSpacing.sm,
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

  /// Aplica el ordenamiento seleccionado a la lista
  void _aplicarOrdenamiento(List<Animal> animales, String ordenamiento) {
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

/// Widget de filtros
class _FiltrosWidget extends StatelessWidget {
  final TipoGanado? filtroTipo;
  final Sexo? filtroSexo;
  final Function(TipoGanado?) onFiltroTipoChanged;
  final Function(Sexo?) onFiltroSexoChanged;

  const _FiltrosWidget({
    required this.filtroTipo,
    required this.filtroSexo,
    required this.onFiltroTipoChanged,
    required this.onFiltroSexoChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Tipo:',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: AppSpacing.sm),
              ...TipoGanado.values.map((tipo) {
                final isSelected = filtroTipo == tipo;
                return Padding(
                  padding: const EdgeInsets.only(right: AppSpacing.sm),
                  child: FilterChip(
                    label: Text(tipo.toString().split('.').last.toUpperCase()),
                    selected: isSelected,
                    onSelected: (selected) {
                      onFiltroTipoChanged(selected ? tipo : null);
                    },
                    backgroundColor: Colors.grey[200],
                    selectedColor: AppColors.primary,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Text(
                'Sexo:',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: AppSpacing.sm),
              ...Sexo.values.map((sexo) {
                final isSelected = filtroSexo == sexo;
                return Padding(
                  padding: const EdgeInsets.only(right: AppSpacing.sm),
                  child: FilterChip(
                    label: Text(sexo.toString().split('.').last.toUpperCase()),
                    selected: isSelected,
                    onSelected: (selected) {
                      onFiltroSexoChanged(selected ? sexo : null);
                    },
                    backgroundColor: Colors.grey[200],
                    selectedColor: AppColors.secondary,
                    labelStyle: TextStyle(
                      color: isSelected ? AppColors.primary : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}

/// Tarjeta de animal con alertas de mantenimiento
class _AnimalCardWithAlertas extends ConsumerWidget {
  final Animal animal;
  final VoidCallback onTap;

  const _AnimalCardWithAlertas({
    required this.animal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alertas = _generarAlertas(animal);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: AppSpacing.md),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fila principal: Foto + Info + Menú
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Foto
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(AppRadius.md),
                    ),
                    child: animal.fotoPath != null &&
                            animal.fotoPath!.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.md),
                            child: Image.network(
                              animal.fotoPath!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.pets,
                                    color: AppColors.primary);
                              },
                            ),
                          )
                        : Icon(Icons.pets, color: AppColors.primary, size: 32),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  // Nombre y datos
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Nombre - Arete
                        Text(
                          '${animal.nombrePersonalizado?.isNotEmpty == true ? animal.nombrePersonalizado! : animal.raza} • #${animal.numeroArete}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Tipo - Raza
                        Text(
                          '${animal.tipo.toString().split('.').last.toUpperCase()} • ${animal.raza}',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        // Etiquetas
                        Wrap(
                          spacing: 4,
                          runSpacing: 4,
                          children: [
                            _SimpleTag(
                              label: animal.sexo == Sexo.hembra
                                  ? 'Hembra'
                                  : 'Macho',
                              color: animal.sexo == Sexo.hembra
                                  ? Colors.pink
                                  : Colors.blue,
                            ),
                            if (animal.sexo == Sexo.hembra)
                              _SimpleTag(
                                label: _getEstadoLabel(animal),
                                color: _getEstadoColor(animal),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Botón editar
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert, size: 20),
                    onSelected: (value) {
                      if (value == 'editar') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                AgregarAnimalScreen(animal: animal),
                          ),
                        );
                      } else if (value == 'eliminar') {
                        _mostrarDialogoEliminacion(context, ref);
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

              // Indicadores de salud en una fila compacta
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        _CompactHealthIcon(
                          icon: Icons.vaccines,
                          isActive: animal.vacunado,
                          color: Colors.green,
                          tooltip: 'Vacunado',
                        ),
                        const SizedBox(width: 8),
                        _CompactHealthIcon(
                          icon: Icons.bug_report,
                          isActive: animal.desparasitado,
                          color: Colors.orange,
                          tooltip: 'Desparasitado',
                        ),
                        const SizedBox(width: 8),
                        _CompactHealthIcon(
                          icon: Icons.local_pharmacy,
                          isActive: animal.tieneVitaminas,
                          color: Colors.purple,
                          tooltip: 'Vitaminas',
                        ),
                        const SizedBox(width: 8),
                        _CompactHealthIcon(
                          icon: Icons.medical_services,
                          isActive: animal.tieneOtrosTratamientos,
                          color: Colors.blue,
                          tooltip: 'Otros',
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Alertas si las hay
              if (alertas.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.sm),
                ..._construirAlertasCompactas(context, alertas),
              ],
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _construirAlertasCompactas(
      BuildContext context, List<String> alertas) {
    return alertas
        .map((alerta) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  Icon(Icons.warning_rounded, color: Colors.red[600], size: 14),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      alerta,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.red[700],
                            fontWeight: FontWeight.w500,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ))
        .toList();
  }

  void _mostrarDialogoEliminacion(BuildContext context, WidgetRef ref) {
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
              // Eliminar el animal
              ref
                  .read(animalRepositoryProvider)
                  .deleteAnimal(animal.id)
                  .then((_) {
                ref.invalidate(animalesProvider);
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

  String _getEstadoLabel(Animal animal) {
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

  Color _getEstadoColor(Animal animal) {
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

  List<String> _generarAlertas(Animal animal) {
    List<String> alertas = [];
    final ahora = DateTime.now();

    // Alerta de vacunación
    if (!animal.vacunado) {
      alertas.add('Sin vacunar');
    } else if (animal.fechaUltimaVacuna != null) {
      final diasDesdeUltimaVacuna =
          ahora.difference(animal.fechaUltimaVacuna!).inDays;
      if (diasDesdeUltimaVacuna > 365) {
        alertas.add('Vacuna vencida (${diasDesdeUltimaVacuna} dias)');
      }
    }

    // Alerta de desparasitación
    if (!animal.desparasitado) {
      alertas.add('Sin desparasitar');
    } else if (animal.fechaUltimoDesparasitante != null) {
      final diasDesdeUltimoDesparasitante =
          ahora.difference(animal.fechaUltimoDesparasitante!).inDays;
      if (diasDesdeUltimoDesparasitante > 180) {
        alertas.add('Desparasitacion vencida');
      }
    }

    // Alerta de estado reproductivo para hembras
    if (animal.sexo == Sexo.hembra &&
        animal.estadoReproductivo == EstadoReproductivo.no_definido) {
      alertas.add('Estado reproductivo sin definir');
    }

    return alertas;
  }

  List<Widget> _construirAlertas(BuildContext context, List<String> alertas) {
    return alertas
        .map((alerta) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  border: Border(
                    left: BorderSide(color: Colors.red[400]!, width: 3),
                  ),
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Row(
                  children: [
                    Icon(Icons.warning_rounded,
                        color: Colors.red[600], size: 16),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: Text(
                        alerta,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.red[700],
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();
  }
}

/// Etiqueta simple
class _SimpleTag extends StatelessWidget {
  final String label;
  final Color color;

  const _SimpleTag({
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        border: Border.all(color: color, width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
      ),
    );
  }
}

/// Icono de salud compacto
class _CompactHealthIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Color color;
  final String tooltip;

  const _CompactHealthIcon({
    required this.icon,
    required this.isActive,
    required this.color,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Icon(
        icon,
        size: 18,
        color: isActive ? color : Colors.grey[300],
      ),
    );
  }
}
