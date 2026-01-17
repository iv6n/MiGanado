import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/vacunas_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/tratamientos_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/nutricion_providers.dart';

class RegistroVacunaDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String registradoPor;

  const RegistroVacunaDialog({
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
      title: Text('Registrar Vacuna'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: tipoController,
              decoration: InputDecoration(labelText: 'Tipo (ej: Triple)'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: enfermedadController,
              decoration:
                  InputDecoration(labelText: 'Enfermedad (ej: Fiebre aftosa)'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: productoController,
              decoration: InputDecoration(labelText: 'Producto'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: dosisController,
              decoration: InputDecoration(labelText: 'Dosis'),
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaSeleccionada)}'),
              trailing: Icon(Icons.calendar_today),
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
            SizedBox(height: 8),
            TextField(
              controller: costController,
              decoration: InputDecoration(labelText: 'Costo (opcional)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<int>(
              value: diasIntervalo,
              items: [
                DropdownMenuItem(child: Text('Anual'), value: 365),
                DropdownMenuItem(child: Text('Semestral'), value: 180),
                DropdownMenuItem(child: Text('Trimestral'), value: 90),
                DropdownMenuItem(child: Text('Mensual'), value: 30),
              ],
              onChanged: (value) {
                setState(() => diasIntervalo = value ?? 365);
              },
              decoration: InputDecoration(labelText: 'Próxima dosis en'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registrarVacunaUseCaseProvider);

              final costo = costController.text.isEmpty
                  ? null
                  : double.parse(costController.text);

              await useCase(
                animalUuid: widget.animalUuid,
                tipo: tipoController.text,
                enfermedad: enfermedadController.text,
                fecha: fechaSeleccionada,
                diasIntervalo: diasIntervalo,
                aplicadoPor: widget.registradoPor,
                registradoPor: widget.registradoPor,
                producto: productoController.text.isEmpty
                    ? null
                    : productoController.text,
                dosis:
                    dosisController.text.isEmpty ? null : dosisController.text,
                costo: costo,
              );

              await ref.refresh(vacunasByAnimalProvider(widget.animalUuid));

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Vacuna registrada exitosamente')),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: Text('Guardar'),
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
      title: Text('Registrar Tratamiento'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: motivoController,
              decoration: InputDecoration(labelText: 'Motivo (ej: Mastitis)'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: medicamentoController,
              decoration: InputDecoration(labelText: 'Medicamento'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: dosisController,
              decoration: InputDecoration(labelText: 'Dosis'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: frecuenciaController,
              decoration:
                  InputDecoration(labelText: 'Frecuencia (ej: Cada 12h)'),
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text('Duracion: $duracionDias dias'),
              trailing: Icon(Icons.edit),
              onTap: () async {
                await showDialog<int>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Duracion en dias'),
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
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaInicio)}'),
              trailing: Icon(Icons.calendar_today),
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
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registrarTratamientoUseCaseProvider);

              await useCase(
                animalUuid: widget.animalUuid,
                motivo: motivoController.text,
                medicamento: medicamentoController.text,
                fechaInicio: fechaInicio,
                dosis: dosisController.text,
                viaAplicacion: 'Oral',
                duracionDias: duracionDias,
                frecuencia: frecuenciaController.text,
                registradoPor: widget.registradoPor,
              );

              await ref
                  .refresh(tratamientosByAnimalProvider(widget.animalUuid));

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tratamiento registrado exitosamente')),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: Text('Guardar'),
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
      title: Text('Registrar Nutricion'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButtonFormField<String>(
              value: 'Pastoreo',
              items: [
                DropdownMenuItem(child: Text('Pastoreo'), value: 'Pastoreo'),
                DropdownMenuItem(child: Text('Confinado'), value: 'Confinado'),
                DropdownMenuItem(child: Text('Mixto'), value: 'Mixto'),
              ],
              onChanged: (value) {
                tipoAlimentacionController.text = value ?? 'Pastoreo';
              },
              decoration: InputDecoration(labelText: 'Tipo de alimentacion'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: alimentoPrincipalController,
              decoration:
                  InputDecoration(labelText: 'Alimento principal (ej: Pasto)'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: suplementosController,
              decoration:
                  InputDecoration(labelText: 'Suplementos (separar con coma)'),
              maxLines: 2,
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaInicio)}'),
              trailing: Icon(Icons.calendar_today),
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
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final useCase = ref.read(registrarNutricionUseCaseProvider);

              final suplementos = suplementosController.text
                  .split(',')
                  .map((s) => s.trim())
                  .where((s) => s.isNotEmpty)
                  .toList();

              await useCase(
                animalUuid: widget.animalUuid,
                tipoAlimentacion: tipoAlimentacionController.text,
                fechaInicio: fechaInicio,
                registradoPor: widget.registradoPor,
                alimentoPrincipal: alimentoPrincipalController.text.isEmpty
                    ? null
                    : alimentoPrincipalController.text,
                suplementos: suplementos.isEmpty ? null : suplementos,
              );

              await ref.refresh(nutricionByAnimalProvider(widget.animalUuid));

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Nutricion registrada exitosamente')),
              );

              Navigator.pop(context);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: Text('Guardar'),
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
    return AlertDialog(
      title: Text('Registrar Empadre'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(fechaEmpadre)}'),
              trailing: Icon(Icons.calendar_today),
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
            SizedBox(height: 12),
            TextField(
              controller: sementalController,
              decoration: InputDecoration(
                labelText: 'Arete del Semental',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: metodoController,
              decoration: InputDecoration(
                labelText: 'Método (Natural/IA)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: observacionesController,
              decoration: InputDecoration(
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
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            if (sementalController.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Ingrese arete del semental')),
              );
              return;
            }

            // Aquí iría la lógica para guardar
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Empadre registrado')),
            );
          },
          child: Text('Guardar'),
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
      title: Text('Registrar Parto'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title:
                  Text('Fecha: ${DateFormat('dd/MM/yyyy').format(fechaParto)}'),
              trailing: Icon(Icons.calendar_today),
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
            SizedBox(height: 12),
            TextField(
              controller: numeroCriasController,
              decoration: InputDecoration(
                labelText: 'Número de Crías',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),
            TextField(
              controller: tipoPartoController,
              decoration: InputDecoration(
                labelText: 'Tipo (Simple/Múltiple)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: resultadoController,
              decoration: InputDecoration(
                labelText: 'Resultado (Normal/Complicado)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: observacionesController,
              decoration: InputDecoration(
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
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            if (numeroCriasController.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Ingrese número de crías')),
              );
              return;
            }

            // Aquí iría la lógica para guardar
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Parto registrado')),
            );
          },
          child: Text('Guardar'),
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
