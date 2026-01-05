import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/providers/data_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';
import 'package:miganado/providers/database_providers.dart';

/// Pantalla de gestión de ubicaciones
class UbicacionesScreen extends ConsumerStatefulWidget {
  const UbicacionesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UbicacionesScreen> createState() => _UbicacionesScreenState();
}

class _UbicacionesScreenState extends ConsumerState<UbicacionesScreen> {
  @override
  Widget build(BuildContext context) {
    final ubicacionesAsync = ref.watch(ubicacionesProvider);

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
                    Icons.location_off_outlined,
                    size: 64,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'Sin ubicaciones registradas',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  PrimaryButton(
                    label: 'Agregar primera ubicación',
                    onPressed: () {
                      _mostrarFormularioUbicacion(context, ref, null);
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
                  _mostrarFormularioUbicacion(context, ref, ubicacion);
                },
                onDelete: () {
                  _mostrarConfirmacionEliminar(context, ref, ubicacion.id);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mostrarFormularioUbicacion(context, ref, null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _mostrarFormularioUbicacion(
    BuildContext context,
    WidgetRef ref,
    Ubicacion? ubicacion,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _FormularioUbicacion(
        ubicacion: ubicacion,
        onGuardar: (ubicacionGuardada) {
          Navigator.pop(context);
          ref.invalidate(ubicacionesProvider);
        },
      ),
    );
  }

  void _mostrarConfirmacionEliminar(
    BuildContext context,
    WidgetRef ref,
    String ubicacionId,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar ubicación'),
        content:
            const Text('¿Estás seguro de que deseas eliminar esta ubicación?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              final repository = ref.watch(ubicacionRepositoryProvider);
              await repository.delete(ubicacionId);
              ref.invalidate(ubicacionesProvider);
            },
            child: const Text('Eliminar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta de ubicación
class _UbicacionCard extends StatelessWidget {
  final Ubicacion ubicacion;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _UbicacionCard({
    required this.ubicacion,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
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
          ubicacion.nombre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(ubicacion.tipo),
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

/// Formulario para agregar/editar ubicación
class _FormularioUbicacion extends ConsumerStatefulWidget {
  final Ubicacion? ubicacion;
  final Function(Ubicacion) onGuardar;

  const _FormularioUbicacion({
    required this.ubicacion,
    required this.onGuardar,
  });

  @override
  ConsumerState<_FormularioUbicacion> createState() =>
      _FormularioUbicacionState();
}

class _FormularioUbicacionState extends ConsumerState<_FormularioUbicacion> {
  late TextEditingController _nombreController;
  late TextEditingController _descripcionController;
  late String _tipoSeleccionado;

  final List<String> tipos = ['corral', 'potrero', 'monte', 'establo', 'otro'];

  @override
  void initState() {
    super.initState();
    _nombreController =
        TextEditingController(text: widget.ubicacion?.nombre ?? '');
    _descripcionController =
        TextEditingController(text: widget.ubicacion?.descripcion ?? '');
    _tipoSeleccionado = widget.ubicacion?.tipo ?? 'corral';
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          top: AppSpacing.lg,
          bottom: MediaQuery.of(context).viewInsets.bottom + AppSpacing.lg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.ubicacion == null ? 'Nueva ubicación' : 'Editar ubicación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppSpacing.lg),
            CustomTextField(
              label: 'Nombre',
              controller: _nombreController,
              hint: 'Ej: Corral 1, Potrero Norte',
            ),
            const SizedBox(height: AppSpacing.md),
            CustomDropdown<String>(
              label: 'Tipo',
              value: _tipoSeleccionado,
              items: tipos,
              itemLabel: (tipo) => tipo,
              onChanged: (value) {
                setState(() => _tipoSeleccionado = value ?? 'corral');
              },
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Descripción (opcional)',
              controller: _descripcionController,
              hint: 'Información adicional sobre la ubicación',
              maxLines: 3,
            ),
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                label: 'Guardar',
                onPressed: () {
                  _guardarUbicacion();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _guardarUbicacion() {
    if (_nombreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El nombre es requerido')),
      );
      return;
    }

    final ubicacion = Ubicacion(
      id: widget.ubicacion?.id,
      nombre: _nombreController.text,
      descripcion: _descripcionController.text.isNotEmpty
          ? _descripcionController.text
          : null,
      tipo: _tipoSeleccionado,
      fechaRegistro: widget.ubicacion?.fechaRegistro,
      ultimaActualizacion: DateTime.now(),
    );

    final repository = ref.watch(ubicacionRepositoryProvider);
    if (widget.ubicacion == null) {
      repository.create(ubicacion).then((_) {
        widget.onGuardar(ubicacion);
      });
    } else {
      repository.update(ubicacion).then((_) {
        widget.onGuardar(ubicacion);
      });
    }
  }
}
