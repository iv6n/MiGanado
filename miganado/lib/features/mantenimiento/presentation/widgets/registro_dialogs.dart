import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/vacunas_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/tratamientos_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/nutricion_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/mantenimiento_providers.dart';

class RegistroVacunaDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroVacunaDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroVacunaDialog> createState() =>
      _RegistroVacunaDialogState();
}

class _RegistroVacunaDialogState extends ConsumerState<RegistroVacunaDialog> {
  late DateTime fechaSeleccionada;
  final tipoController = TextEditingController();
  final enfermedadController = TextEditingController();
  final productoController = TextEditingController();
  final dosisController = TextEditingController();
  final costController = TextEditingController();
  int diasIntervalo = 365;

  @override
  void initState() {
    super.initState();
    fechaSeleccionada = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.registerVaccineTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: tipoController,
              decoration: const InputDecoration(labelText: 'Tipo (ej: Triple)'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: enfermedadController,
              decoration: const InputDecoration(
                  labelText: 'Enfermedad (ej: Fiebre aftosa)'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: productoController,
              decoration: const InputDecoration(labelText: 'Producto'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: dosisController,
              decoration: const InputDecoration(labelText: 'Dosis'),
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaSeleccionada)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final selected = await showDatePicker(
                  context: context,
                  initialDate: fechaSeleccionada,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (selected != null) {
                  setState(() => fechaSeleccionada = selected);
                }
              },
            ),
            const SizedBox(height: 8),
            TextField(
              controller: costController,
              decoration: const InputDecoration(labelText: 'Costo (opcional)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<int>(
              value: diasIntervalo,
              items: const [
                DropdownMenuItem(value: 365, child: Text('Anual')),
                DropdownMenuItem(value: 180, child: Text('Semestral')),
                DropdownMenuItem(value: 90, child: Text('Trimestral')),
                DropdownMenuItem(value: 30, child: Text('Mensual')),
              ],
              onChanged: (value) {
                setState(() => diasIntervalo = value ?? 365);
              },
              decoration: const InputDecoration(labelText: 'Próxima dosis en'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registerVaccineUseCaseProvider);

              final costo = costController.text.isEmpty
                  ? null
                  : double.parse(costController.text);

              await useCase(
                animalUuid: widget.animalUuid,
                type: tipoController.text,
                disease: enfermedadController.text,
                date: fechaSeleccionada,
                intervalDays: diasIntervalo,
                appliedBy: widget.registradoPor,
                recordedBy: widget.registradoPor,
                product: productoController.text.isEmpty
                    ? null
                    : productoController.text,
                dosage:
                    dosisController.text.isEmpty ? null : dosisController.text,
                cost: costo,
              );

              // ignore: unused_result
              ref.refresh(vaccinesByAnimalProvider(widget.animalUuid).future);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(AppStrings.vaccineSavedSuccess)),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    tipoController.dispose();
    enfermedadController.dispose();
    productoController.dispose();
    dosisController.dispose();
    costController.dispose();
    super.dispose();
  }
}

class RegistroTratamientoDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroTratamientoDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroTratamientoDialog> createState() =>
      _RegistroTratamientoDialogState();
}

class _RegistroTratamientoDialogState
    extends ConsumerState<RegistroTratamientoDialog> {
  late DateTime fechaInicio;
  final motivoController = TextEditingController();
  final medicamentoController = TextEditingController();
  final dosisController = TextEditingController();
  final frecuenciaController = TextEditingController();
  int duracionDias = 5;

  @override
  void initState() {
    super.initState();
    fechaInicio = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.registerTreatmentTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: motivoController,
              decoration:
                  const InputDecoration(labelText: 'Motivo (ej: Mastitis)'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: medicamentoController,
              decoration: const InputDecoration(labelText: 'Medicamento'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: dosisController,
              decoration: const InputDecoration(labelText: 'Dosis'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: frecuenciaController,
              decoration:
                  const InputDecoration(labelText: 'Frecuencia (ej: Cada 12h)'),
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text('Duracion: $duracionDias dias'),
              trailing: const Icon(Icons.edit),
              onTap: () async {
                await showDialog<int>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Duracion en dias'),
                    content: TextField(
                      keyboardType: TextInputType.number,
                      controller:
                          TextEditingController(text: duracionDias.toString()),
                      onChanged: (value) {
                        duracionDias = int.tryParse(value) ?? 5;
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaInicio)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final selected = await showDatePicker(
                  context: context,
                  initialDate: fechaInicio,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (selected != null) {
                  setState(() => fechaInicio = selected);
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registerTreatmentUseCaseProvider);

              await useCase(
                animalUuid: widget.animalUuid,
                reason: motivoController.text,
                medicament: medicamentoController.text,
                startDate: fechaInicio,
                dosage: dosisController.text,
                administrationRoute: 'Oral',
                durationDays: duracionDias,
                frequency: frecuenciaController.text,
                recordedBy: widget.registradoPor,
              );

              // ignore: unused_result
              ref.refresh(treatmentsByAnimalProvider(widget.animalUuid).future);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Tratamiento registrado exitosamente')),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    motivoController.dispose();
    medicamentoController.dispose();
    dosisController.dispose();
    frecuenciaController.dispose();
    super.dispose();
  }
}

class RegistroNutricionDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroNutricionDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroNutricionDialog> createState() =>
      _RegistroNutricionDialogState();
}

class _RegistroNutricionDialogState
    extends ConsumerState<RegistroNutricionDialog> {
  late DateTime fechaInicio;
  final tipoAlimentacionController = TextEditingController();
  final alimentoPrincipalController = TextEditingController();
  final suplementosController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fechaInicio = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.registerNutritionTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButtonFormField<String>(
              value: 'Pastoreo',
              items: const [
                DropdownMenuItem(value: 'Pastoreo', child: Text('Pastoreo')),
                DropdownMenuItem(value: 'Confinado', child: Text('Confinado')),
                DropdownMenuItem(value: 'Mixto', child: Text('Mixto')),
              ],
              onChanged: (value) {
                tipoAlimentacionController.text = value ?? 'Pastoreo';
              },
              decoration:
                  const InputDecoration(labelText: 'Tipo de alimentacion'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: alimentoPrincipalController,
              decoration: const InputDecoration(
                  labelText: 'Alimento principal (ej: Pasto)'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: suplementosController,
              decoration: const InputDecoration(
                  labelText: 'Suplementos (separar con coma)'),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaInicio)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final selected = await showDatePicker(
                  context: context,
                  initialDate: fechaInicio,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (selected != null) {
                  setState(() => fechaInicio = selected);
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registerNutritionUseCaseProvider);

              final suplementos = suplementosController.text
                  .split(',')
                  .map((s) => s.trim())
                  .where((s) => s.isNotEmpty)
                  .toList();

              await useCase(
                animalUuid: widget.animalUuid,
                feedingType: tipoAlimentacionController.text,
                startDate: fechaInicio,
                recordedBy: widget.registradoPor,
                mainFeed: alimentoPrincipalController.text.isEmpty
                    ? null
                    : alimentoPrincipalController.text,
                supplements: suplementos.isEmpty ? null : suplementos,
              );

              // ignore: unused_result
              ref.refresh(nutritionByAnimalProvider(widget.animalUuid).future);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Nutricion registrada exitosamente')),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    tipoAlimentacionController.dispose();
    alimentoPrincipalController.dispose();
    suplementosController.dispose();
    super.dispose();
  }
}

// ============================================================================
// REPRODUCCIÓN - Empadre y Partos
// ============================================================================

class RegistroEmpadreDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroEmpadreDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroEmpadreDialog> createState() =>
      _RegistroEmpadreDialogState();
}

class _RegistroEmpadreDialogState extends ConsumerState<RegistroEmpadreDialog> {
  late DateTime fechaEmpadre;
  final sementalController = TextEditingController();
  final metodoController = TextEditingController();
  final observacionesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fechaEmpadre = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // ...existing code...
    ref.watch(StateProvider<bool>((ref) => false)); // Placeholder

    return AlertDialog(
      title: const Text(AppStrings.registerBreedingTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaEmpadre)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: fechaEmpadre,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  setState(() => fechaEmpadre = picked);
                }
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: sementalController,
              decoration: const InputDecoration(
                labelText: 'Arete del Semental',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: metodoController,
              decoration: const InputDecoration(
                labelText: 'Método (Natural/IA)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: observacionesController,
              decoration: const InputDecoration(
                labelText: 'Observaciones',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (sementalController.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ingrese arete del semental')),
              );
              return;
            }

            try {
              // DEPRECATED: Reproductivo functionality is disabled
              if (mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('Funcionalidad Reproductiva Deshabilitada')),
                );
              }
            } catch (e) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    sementalController.dispose();
    metodoController.dispose();
    observacionesController.dispose();
    super.dispose();
  }
}

class RegistroPartoDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroPartoDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroPartoDialog> createState() =>
      _RegistroPartoDialogState();
}

class _RegistroPartoDialogState extends ConsumerState<RegistroPartoDialog> {
  late DateTime fechaParto;
  final numeroCriasController = TextEditingController();
  final tipoPartoController = TextEditingController();
  final resultadoController = TextEditingController();
  final observacionesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fechaParto = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.registerBirthTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title:
                  Text('Fecha: ${DateFormat('dd/MM/yyyy').format(fechaParto)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: fechaParto,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  setState(() => fechaParto = picked);
                }
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: numeroCriasController,
              decoration: const InputDecoration(
                labelText: 'Número de Crías',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: tipoPartoController,
              decoration: const InputDecoration(
                labelText: 'Tipo (Simple/Múltiple)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: resultadoController,
              decoration: const InputDecoration(
                labelText: 'Resultado (Normal/Complicado)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: observacionesController,
              decoration: const InputDecoration(
                labelText: 'Observaciones',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (numeroCriasController.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ingrese número de crías')),
              );
              return;
            }

            try {
              // DEPRECATED: Reproductivo functionality is disabled
              if (mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('Funcionalidad Reproductiva Deshabilitada')),
                );
              }
            } catch (e) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    numeroCriasController.dispose();
    tipoPartoController.dispose();
    resultadoController.dispose();
    observacionesController.dispose();
    super.dispose();
  }
}

// ============================================================================
// Registro de Mantenimiento
// ============================================================================

class RegistroMantenimientoDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroMantenimientoDialog({
    super.key,
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  ConsumerState<RegistroMantenimientoDialog> createState() =>
      _RegistroMantenimientoDialogState();
}

class _RegistroMantenimientoDialogState
    extends ConsumerState<RegistroMantenimientoDialog> {
  late DateTime fechaSeleccionada;
  final descripcionController = TextEditingController();
  final veterinarioController = TextEditingController();
  final medicamentoController = TextEditingController();
  final dosisController = TextEditingController();
  final rutaController = TextEditingController();
  final observacionesController = TextEditingController();
  final costController = TextEditingController();

  String tipoSeleccionado = 'control_veterinario';

  final tiposMantenimiento = [
    ('vacunacion', 'Vacunación'),
    ('desparasitacion', 'Desparasitación'),
    ('vitaminas', 'Vitaminas'),
    ('control_veterinario', 'Control Veterinario'),
    ('limpieza_corrales', 'Limpieza de Corrales'),
    ('alimentacion_especial', 'Alimentación Especial'),
    ('otro', 'Otro'),
  ];

  @override
  void initState() {
    super.initState();
    fechaSeleccionada = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.registerMaintenanceTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Tipo de evento
            DropdownButtonFormField<String>(
              value: tipoSeleccionado,
              items: tiposMantenimiento
                  .map((t) => DropdownMenuItem(
                        value: t.$1,
                        child: Text(t.$2),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => tipoSeleccionado = value);
                }
              },
              decoration: const InputDecoration(labelText: 'Tipo de Evento'),
            ),
            const SizedBox(height: 12),
            // Descripción
            TextField(
              controller: descripcionController,
              decoration: const InputDecoration(
                labelText: 'Descripción',
                hintText: 'Detalles del evento',
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            // Veterinario
            TextField(
              controller: veterinarioController,
              decoration: const InputDecoration(
                labelText: 'Veterinario (opcional)',
                hintText: 'Nombre del veterinario',
              ),
            ),
            const SizedBox(height: 12),
            // Medicamento
            TextField(
              controller: medicamentoController,
              decoration: const InputDecoration(
                labelText: 'Medicamento/Producto (opcional)',
              ),
            ),
            const SizedBox(height: 12),
            // Dosis
            TextField(
              controller: dosisController,
              decoration: const InputDecoration(
                labelText: 'Dosis (opcional)',
                hintText: 'ej: 2 dosis, 1 L, etc',
              ),
            ),
            const SizedBox(height: 12),
            // Ruta de aplicación
            TextField(
              controller: rutaController,
              decoration: const InputDecoration(
                labelText: 'Ruta de Aplicación (opcional)',
                hintText: 'ej: IM, IV, SQ, Oral',
              ),
            ),
            const SizedBox(height: 12),
            // Fecha
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaSeleccionada)}'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final selected = await showDatePicker(
                  context: context,
                  initialDate: fechaSeleccionada,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (selected != null) {
                  setState(() => fechaSeleccionada = selected);
                }
              },
            ),
            const SizedBox(height: 12),
            // Costo
            TextField(
              controller: costController,
              decoration: const InputDecoration(
                labelText: 'Costo (opcional)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            // Observaciones
            TextField(
              controller: observacionesController,
              decoration: const InputDecoration(
                labelText: 'Observaciones (opcional)',
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (descripcionController.text.trim().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('La descripción es requerida')),
              );
              return;
            }

            try {
              final useCase = ref.read(registerMaintenanceEventUseCaseProvider);

              await useCase(
                animalUuid: widget.animalUuid,
                type: tipoSeleccionado,
                description: descripcionController.text.trim(),
                date: fechaSeleccionada,
                veterinarian: veterinarioController.text.isEmpty
                    ? null
                    : veterinarioController.text,
                medicament: medicamentoController.text.isEmpty
                    ? null
                    : medicamentoController.text,
                appliedDosage:
                    dosisController.text.isEmpty ? null : dosisController.text,
                applicationRoute:
                    rutaController.text.isEmpty ? null : rutaController.text,
                observations: observacionesController.text.isEmpty
                    ? null
                    : observacionesController.text,
              );

              // ignore: unused_result
              ref.refresh(
                  historialMantenimientoProvider(widget.animalUuid).future);

              if (mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text(
                          'Evento de mantenimiento registrado exitosamente')),
                );
              }
            } catch (e) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    descripcionController.dispose();
    veterinarioController.dispose();
    medicamentoController.dispose();
    dosisController.dispose();
    rutaController.dispose();
    observacionesController.dispose();
    costController.dispose();
    super.dispose();
  }
}
