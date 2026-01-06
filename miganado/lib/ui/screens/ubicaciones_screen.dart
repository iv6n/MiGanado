import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';
import 'package:miganado/features/locations/presentation/providers/ubicaciones_providers.dart';

/// Pantalla de gestión de ubicaciones
class UbicacionesScreen extends ConsumerStatefulWidget {
  const UbicacionesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UbicacionesScreen> createState() => _UbicacionesScreenState();
}

class _UbicacionesScreenState extends ConsumerState<UbicacionesScreen> {
  @override
  Widget build(BuildContext context) {
    final ubicacionesAsync = ref.watch(allUbicacionesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicaciones'),
        elevation: 0,
      ),
      body: ubicacionesAsync.when(
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
        data: (ubicaciones) {
          if (ubicaciones.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_off,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    'Sin ubicaciones registradas',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  PrimaryButton(
                    label: 'Agregar primera ubicación',
                    onPressed: () {
                      // TODO: Implement add new ubicacion
                    },
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
            itemCount: ubicaciones.length,
            itemBuilder: (context, index) {
              final ubicacion = ubicaciones[index];
              return _UbicacionCard(
                ubicacion: ubicacion,
                onEdit: () {
                  // TODO: Implement edit ubicacion
                },
                onDelete: () {
                  // TODO: Implement delete ubicacion
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add new ubicacion
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// Tarjeta de ubicación
class _UbicacionCard extends StatelessWidget {
  final dynamic ubicacion;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _UbicacionCard({
    required this.ubicacion,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    // Safely extract data from UbicacionModel
    final nombre = ubicacion.nombre ?? 'Sin nombre';
    final tipo = ubicacion.tipo ?? 'Sin tipo';

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      child: ListTile(
        leading: Icon(
          Icons.location_on,
          color: AppColors.primary,
        ),
        title: Text(
          nombre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(tipo),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: const Row(
                children: [
                  Icon(Icons.edit, size: 20),
                  SizedBox(width: AppSpacing.sm),
                  Text('Editar'),
                ],
              ),
              onTap: onEdit,
            ),
            PopupMenuItem(
              child: const Row(
                children: [
                  Icon(Icons.delete, size: 20, color: Colors.red),
                  SizedBox(width: AppSpacing.sm),
                  Text('Eliminar', style: TextStyle(color: Colors.red)),
                ],
              ),
              onTap: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
