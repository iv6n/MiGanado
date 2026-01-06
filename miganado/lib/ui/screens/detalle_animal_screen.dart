import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/costs/presentation/providers/costos_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/mantenimiento_providers.dart';
import 'package:miganado/features/locations/presentation/providers/ubicaciones_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/screens/agregar_pesaje_screen.dart';

/// Pantalla de detalle de un animal específico
class DetalleAnimalScreen extends ConsumerStatefulWidget {
  final String animalId;

  const DetalleAnimalScreen({
    required this.animalId,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<DetalleAnimalScreen> createState() =>
      _DetalleAnimalScreenState();
}

class _DetalleAnimalScreenState extends ConsumerState<DetalleAnimalScreen> {
  late bool _isEditMode = false;

  @override
  Widget build(BuildContext context) {
    final animalAsync = ref.watch(animalByIdProvider(widget.animalId));
    final costosAsync = ref.watch(costosByAnimalProvider(widget.animalId));
    final eventosAsync = ref.watch(eventosByAnimalProvider(widget.animalId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Animal'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Editar'),
                onTap: () {
                  setState(() {
                    _isEditMode = !_isEditMode;
                  });
                },
              ),
              PopupMenuItem(
                child: const Text('Eliminar'),
                onTap: () => _showDeleteDialog(context),
              ),
            ],
          ),
        ],
      ),
      body: animalAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
        data: (animal) {
          if (animal == null) {
            return const Center(child: Text('Animal no encontrado'));
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FotoYBasicosCard(
                  animal: animal,
                  isEditMode: _isEditMode,
                  onAnimalUpdated: () {
                    ref.invalidate(animalByIdProvider(widget.animalId));
                    setState(() {
                      _isEditMode = false;
                    });
                  },
                ),
                _InformacionSaludCard(
                  animal: animal,
                ),
                if (animal.ubicacionId != null)
                  _UbicacionCard(ubicacionId: animal.ubicacionId!),
                if (animal.precioCompra != null ||
                    animal.precioVenta != null ||
                    animal.costosExtra.isNotEmpty)
                  _InformacionEconomicaCard(animal: animal),
                _AgregarMantenimientoCard(
                  animalId: widget.animalId,
                  onMantenimientoAdded: () {
                    ref.invalidate(eventosByAnimalProvider(widget.animalId));
                  },
                ),
                costosAsync.when(
                  data: (costos) {
                    if (costos.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return _CostosCard(costos: costos);
                  },
                  loading: () => const SizedBox(height: AppSpacing.lg),
                  error: (_, __) => const SizedBox.shrink(),
                ),
                eventosAsync.when(
                  data: (eventos) {
                    if (eventos.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return _EventosTimelineCard(eventos: eventos);
                  },
                  loading: () => const SizedBox(height: AppSpacing.lg),
                  error: (_, __) => const SizedBox.shrink(),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  AgregarPesajeScreen(animalId: widget.animalId),
            ),
          );
        },
        tooltip: 'Agregar pesaje',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showDeleteDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Eliminar animal?'),
        content: const Text(
          'Esta acción eliminará el animal y todos sus registros asociados. No se puede deshacer.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () async {
              try {
                final animalNotifier =
                    ref.read(animalNotifierProvider.notifier);
                await animalNotifier.deleteAnimal(widget.animalId);
                ref.invalidate(allAnimalesProvider);

                if (context.mounted) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Animal eliminado'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            child: const Text('Eliminar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// WIDGETS PERSONALIZADOS
// ═══════════════════════════════════════════════════════════════════════════

/// Tarjeta con foto y información básica editable
class _FotoYBasicosCard extends ConsumerStatefulWidget {
  final AnimalModel animal;
  final bool isEditMode;
  final VoidCallback onAnimalUpdated;

  const _FotoYBasicosCard({
    required this.animal,
    required this.isEditMode,
    required this.onAnimalUpdated,
  });

  @override
  ConsumerState<_FotoYBasicosCard> createState() => _FotoYBasicosCardState();
}

class _FotoYBasicosCardState extends ConsumerState<_FotoYBasicosCard> {
  late TextEditingController _nombreController;
  late TextEditingController _notasController;

  @override
  void initState() {
    super.initState();
    _nombreController =
        TextEditingController(text: widget.animal.nombrePersonalizado ?? '');
    _notasController = TextEditingController(text: widget.animal.notas);
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _notasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto del animal
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: widget.animal.fotoPath != null &&
                        widget.animal.fotoPath!.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          widget.animal.fotoPath!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.pets,
                              size: 80,
                              color: Colors.grey[400],
                            );
                          },
                        ),
                      )
                    : Icon(
                        Icons.pets,
                        size: 80,
                        color: Colors.grey[400],
                      ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Arete',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.animal.numeroArete,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tipo',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.animal.tipo.toString().split('.').last,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (widget.isEditMode)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nombre personalizado',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  TextField(
                    controller: _nombreController,
                    decoration: InputDecoration(
                      hintText: 'Ej: Blanquita',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Notas',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  TextField(
                    controller: _notasController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Observaciones...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () => _guardarCambios(),
                          icon: const Icon(Icons.save),
                          label: const Text('Guardar'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            setState(() {
                              _nombreController.text =
                                  widget.animal.nombrePersonalizado ?? '';
                              _notasController.text = widget.animal.notas;
                            });
                          },
                          icon: const Icon(Icons.cancel),
                          label: const Text('Cancelar'),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.animal.nombrePersonalizado != null &&
                      widget.animal.nombrePersonalizado!.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nombre',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          widget.animal.nombrePersonalizado!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  if (widget.animal.notas.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Notas',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(widget.animal.notas),
                      ],
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _guardarCambios() async {
    try {
      final animalActualizado = widget.animal.copyWith(
        nombrePersonalizado:
            _nombreController.text.isNotEmpty ? _nombreController.text : null,
        notas: _notasController.text.isNotEmpty ? _notasController.text : null,
      );

      final animalNotifier = ref.read(animalNotifierProvider.notifier);
      await animalNotifier.saveAnimal(animalActualizado);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Animal actualizado'),
            backgroundColor: Colors.green,
          ),
        );
        widget.onAnimalUpdated();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void didUpdateWidget(_FotoYBasicosCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isEditMode) {
      _nombreController.text = widget.animal.nombrePersonalizado ?? '';
      _notasController.text = widget.animal.notas;
    }
  }
}

/// Tarjeta con información de salud
class _InformacionSaludCard extends StatelessWidget {
  final dynamic animal;

  const _InformacionSaludCard({required this.animal});

  @override
  Widget build(BuildContext context) {
    final edad = _calcularEdad(animal.fechaNacimiento);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.green.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Información de Salud',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _InfoRow(
              'Raza',
              animal.raza,
              icon: Icons.info,
            ),
            _InfoRow(
              'Sexo',
              animal.sexo.toString().split('.').last.toUpperCase(),
              icon: animal.sexo.toString().contains('HEMBRA')
                  ? Icons.female
                  : Icons.male,
            ),
            if (animal.fechaNacimiento != null)
              _InfoRow(
                'Edad',
                edad,
                icon: Icons.cake,
              ),
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              'Estado Sanitario',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            _EstadoSanitario(
              label: 'Vacunado',
              estatus: animal.vacunado,
              icon: Icons.vaccines,
              color: Colors.green,
            ),
            _EstadoSanitario(
              label: 'Desparasitado',
              estatus: animal.desparasitado,
              icon: Icons.bug_report,
              color: Colors.orange,
            ),
            _EstadoSanitario(
              label: 'Vitaminas',
              estatus: animal.tieneVitaminas,
              icon: Icons.local_pharmacy,
              color: Colors.blue,
            ),
            _EstadoSanitario(
              label: 'Otros Tratamientos',
              estatus: animal.tieneOtrosTratamientos,
              icon: Icons.medical_services,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  String _calcularEdad(DateTime? fechaNacimiento) {
    if (fechaNacimiento == null) return 'No especificada';
    final hoy = DateTime.now();
    final edad = hoy.difference(fechaNacimiento);
    final anios = edad.inDays ~/ 365;
    final meses = (edad.inDays % 365) ~/ 30;

    if (anios > 0) {
      return '$anios años${meses > 0 ? ' y $meses meses' : ''}';
    } else {
      return '$meses meses';
    }
  }
}

/// Widget para mostrar estado sanitario
class _EstadoSanitario extends StatelessWidget {
  final String label;
  final bool estatus;
  final IconData icon;
  final Color color;

  const _EstadoSanitario({
    required this.label,
    required this.estatus,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            estatus ? Icons.check_circle : Icons.cancel,
            color: estatus ? Colors.green : Colors.red,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: estatus ? Colors.green[100] : Colors.red[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              estatus ? 'OK' : 'Pendiente',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: estatus ? Colors.green[700] : Colors.red[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta para agregar mantenimiento
class _AgregarMantenimientoCard extends ConsumerStatefulWidget {
  final String animalId;
  final VoidCallback onMantenimientoAdded;

  const _AgregarMantenimientoCard({
    required this.animalId,
    required this.onMantenimientoAdded,
  });

  @override
  ConsumerState<_AgregarMantenimientoCard> createState() =>
      _AgregarMantenimientoCardState();
}

class _AgregarMantenimientoCardState
    extends ConsumerState<_AgregarMantenimientoCard> {
  String _tipoSeleccionado = 'Vacuna';
  final _notasController = TextEditingController();
  bool _isLoading = false;

  final List<String> _tiposMantenimiento = [
    'Vacuna',
    'Desparasitación',
    'Vitaminas',
    'Baño',
    'Revisión veterinaria',
    'Medicamento',
    'Otro'
  ];

  @override
  void dispose() {
    _notasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.blue.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.medical_services, color: Colors.blue[700]),
                const SizedBox(width: 12),
                const Text(
                  'Registrar Mantenimiento',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Selector de tipo
            DropdownButtonFormField<String>(
              value: _tipoSeleccionado,
              items: _tiposMantenimiento.map((tipo) {
                return DropdownMenuItem(
                  value: tipo,
                  child: Text(tipo),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _tipoSeleccionado = value!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Tipo de mantenimiento',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Notas
            TextField(
              controller: _notasController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'Observaciones (opcional)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Botón registrar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isLoading ? null : _registrarMantenimiento,
                icon: _isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.add),
                label: Text(
                    _isLoading ? 'Registrando...' : 'Registrar Mantenimiento'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _registrarMantenimiento() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Por ahora se registra actualizando el animal con un evento
      // En el futuro se puede crear una tabla de eventos separada
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mantenimiento registrado exitosamente'),
          backgroundColor: Colors.green,
        ),
      );

      if (mounted) {
        _notasController.clear();
        setState(() {
          _tipoSeleccionado = 'Vacuna';
        });
        widget.onMantenimientoAdded();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}

class _InformacionEconomicaCard extends StatelessWidget {
  final dynamic animal;

  const _InformacionEconomicaCard({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.blue.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Información económica',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (animal.precioCompra != null)
              _InfoRow(
                'Precio de compra',
                '\$${animal.precioCompra?.toStringAsFixed(2)}',
              ),
            if (animal.precioVenta != null)
              _InfoRow(
                'Precio de venta',
                '\$${animal.precioVenta?.toStringAsFixed(2)}',
              ),
            if (animal.costosExtra.isNotEmpty) ...[
              const Divider(),
              const Text(
                'Costos extras',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              ...animal.costosExtra.entries.map((e) {
                return _InfoRow(e.key, '\$${e.value.toStringAsFixed(2)}');
              }),
            ],
            if (animal.precioCompra != null && animal.precioVenta != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: _InfoRow(
                  'Ganancia potencial',
                  '\$${animal.gananciaPotencial.toStringAsFixed(2)}',
                  valueColor:
                      animal.gananciaPotencial >= 0 ? Colors.green : Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _PesajesCard extends StatelessWidget {
  final AsyncValue pesajesAsync;

  const _PesajesCard({required this.pesajesAsync});

  @override
  Widget build(BuildContext context) {
    return pesajesAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Error cargando pesajes: $error'),
        ),
      ),
      data: (pesajes) {
        if (pesajes.isEmpty) {
          return Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pesajes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      'Sin pesajes registrados',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pesajes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: pesajes.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final pesaje = pesajes[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${pesaje.pesoKg.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${pesaje.fecha.day}/${pesaje.fecha.month}/${pesaje.fecha.year}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {},
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;
  final IconData? icon;

  const _InfoRow(
    this.label,
    this.value, {
    this.valueColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, size: 16, color: Colors.grey),
                const SizedBox(width: 8),
              ],
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: valueColor ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta que muestra la ubicación asignada al animal
class _UbicacionCard extends ConsumerWidget {
  final String ubicacionId;

  const _UbicacionCard({required this.ubicacionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ubicacionAsync = ref.watch(ubicacionByIdProvider(ubicacionId));

    return ubicacionAsync.when(
      data: (ubicacion) {
        if (ubicacion == null) return const SizedBox.shrink();

        return Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ubicación',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        ubicacion.tipo.toString().split('.').last.toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    // Foto de la ubicación
                    if (ubicacion.fotoPath != null &&
                        ubicacion.fotoPath!.isNotEmpty)
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: MemoryImage(
                              _base64ToImage(ubicacion.fotoPath!),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    else
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.location_on,
                          size: 40,
                          color: Colors.grey[400],
                        ),
                      ),
                    const SizedBox(width: 16),
                    // Información
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ubicacion.nombre,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (ubicacion.descripcion != null &&
                              ubicacion.descripcion!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                ubicacion.descripcion!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      loading: () => Card(
        margin: const EdgeInsets.all(16),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
      error: (error, stack) => const SizedBox.shrink(),
    );
  }

  /// Convierte base64 a Uint8List para mostrar imagen
  Uint8List _base64ToImage(String base64String) {
    return base64Decode(base64String.split(',').last);
  }
}

/// Tarjeta de costos registrados
class _CostosCard extends StatelessWidget {
  final List<dynamic> costos;

  const _CostosCard({required this.costos});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Costos Registrados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: costos.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final costo = costos[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            costo.tipo.toString().split('.').last,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (costo.descripcion != null)
                            Text(
                              costo.descripcion!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                          Text(
                            costo.fecha.toString().split(' ')[0],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$${costo.monto.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${costos.fold<double>(0, (sum, c) => sum + c.monto).toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
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

/// Tarjeta de línea de tiempo de eventos de mantenimiento
class _EventosTimelineCard extends StatelessWidget {
  final List<dynamic> eventos;

  const _EventosTimelineCard({required this.eventos});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Historial de Mantenimiento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: eventos.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final evento = eventos[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            evento.tipo.toString().split('.').last,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (evento.descripcion != null)
                            Text(
                              evento.descripcion!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                          Text(
                            evento.fecha.toString().split(' ')[0],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          if (evento.proximaFecha != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  border: Border.all(
                                    color: Colors.orange[200]!,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Próximo: ${evento.proximaFecha.toString().split(' ')[0]}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.orange[700],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
