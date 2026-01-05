import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/providers/data_providers.dart';

/// Pantalla para seleccionar un animal de la lista
class SeleccionarAnimalScreen extends ConsumerWidget {
  const SeleccionarAnimalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(animalesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar Animal'),
        elevation: 0,
      ),
      body: animalesAsync.when(
        data: (animales) {
          // Filtrar solo vacas
          final vacas = animales
              .where((a) =>
                  a.tipo == TipoGanado.vaca || a.tipo == TipoGanado.becerro)
              .toList();

          if (vacas.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets_outlined,
                    size: 80,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'No hay animales registrados',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Registra un animal primero',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: vacas.length,
            itemBuilder: (context, index) {
              final animal = vacas[index];
              return _AnimalCard(
                animal: animal,
                onTap: () => Navigator.of(context).pop(animal),
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
}

/// Tarjeta individual de animal
class _AnimalCard extends StatelessWidget {
  final Animal animal;
  final VoidCallback onTap;

  const _AnimalCard({
    required this.animal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            children: [
              // Avatar con foto o icono
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: animal.fotoPath != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        child: Image.network(
                          animal.fotoPath!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.pets,
                              color: AppColors.primary,
                            );
                          },
                        ),
                      )
                    : Icon(
                        Icons.pets,
                        color: AppColors.primary,
                      ),
              ),
              const SizedBox(width: AppSpacing.md),
              // Información del animal
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.numeroArete,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${animal.tipo.name.toUpperCase()} • ${animal.raza}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        _Badge(
                          label: _getEstadoLabel(animal),
                          color: _getEstadoColor(animal),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        if (animal.vacunado)
                          _Badge(
                            label: 'Vacunado',
                            color: Colors.green,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getEstadoLabel(Animal animal) {
    if (animal.sexo == Sexo.hembra) {
      switch (animal.estadoReproductivo) {
        case EstadoReproductivo.prenada:
          return 'Preñada';
        case EstadoReproductivo.lactando:
          return 'Lactando';
        case EstadoReproductivo.seca:
          return 'Seca';
        case EstadoReproductivo.no_definido:
          return 'Sin estado';
      }
    }
    return animal.sexo.name == 'macho' ? 'Macho' : 'Hembra';
  }

  Color _getEstadoColor(Animal animal) {
    if (animal.sexo == Sexo.hembra) {
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
    return Colors.grey;
  }
}

/// Badge de estado
class _Badge extends StatelessWidget {
  final String label;
  final Color color;

  const _Badge({
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        border: Border.all(color: color, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

