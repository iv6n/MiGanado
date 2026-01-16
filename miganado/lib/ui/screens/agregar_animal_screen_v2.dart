import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/core/enums/index.dart';
import 'package:uuid/uuid.dart';

/// Pantalla para agregar/editar animal (FASE 4)
/// Reutiliza el mismo formulario para ambas operaciones
class AgregarAnimalScreenV2 extends ConsumerStatefulWidget {
  final v2.AnimalModel? animalParaEditar;
  final bool esEdicion;

  const AgregarAnimalScreenV2({
    Key? key,
    this.animalParaEditar,
    this.esEdicion = false,
  }) : super(key: key);

  @override
  ConsumerState<AgregarAnimalScreenV2> createState() =>
      _AgregarAnimalScreenV2State();
}

class _AgregarAnimalScreenV2State extends ConsumerState<AgregarAnimalScreenV2> {
  late TextEditingController _nombreController;
  late TextEditingController _ubicacionIdController;
  late TextEditingController _fechaNacimientoController;

  TipoGanado? _tipoSeleccionado;
  Sexo? _sexoSeleccionado;
  EstadoReproductivo? _estadoSeleccionado;
  MetodoEdad? _metodoEdadSeleccionado;

  @override
  void initState() {
    super.initState();
    _nombreController = TextEditingController(
      text: widget.animalParaEditar?.identificadorVisible ?? '',
    );
    _ubicacionIdController = TextEditingController(
      text: widget.animalParaEditar?.ubicacionId ?? '',
    );
    _fechaNacimientoController = TextEditingController(
      text: widget.animalParaEditar?.fechaNacimiento != null
          ? '${widget.animalParaEditar!.fechaNacimiento!.day}/${widget.animalParaEditar!.fechaNacimiento!.month}/${widget.animalParaEditar!.fechaNacimiento!.year}'
          : '',
    );

    if (widget.animalParaEditar != null) {
      _nombreController.text =
          widget.animalParaEditar!.identificadorVisible ?? '';
      _tipoSeleccionado = widget.animalParaEditar!.tipo;
      _sexoSeleccionado = widget.animalParaEditar!.sexo;
      _estadoSeleccionado = widget.animalParaEditar!.estadoReproductivo;
      _metodoEdadSeleccionado = widget.animalParaEditar!.metodoEdad;
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _ubicacionIdController.dispose();
    _fechaNacimientoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.animalParaEditar != null ? 'Editar Animal' : 'Agregar Animal',
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sección: Información Básica
              _buildSectionTitle('Información Básica'),
              const SizedBox(height: 12),
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre del Animal',
                  hintText: 'Ej: Bessie, Blanca',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Sección: Clasificación
              _buildSectionTitle('Clasificación'),
              const SizedBox(height: 12),
              DropdownButtonFormField<TipoGanado>(
                value: _tipoSeleccionado,
                items: TipoGanado.values.map((tipo) {
                  return DropdownMenuItem(
                    value: tipo,
                    child: Text(tipo.nombreEspanol),
                  );
                }).toList(),
                onChanged: (value) => setState(() => _tipoSeleccionado = value),
                decoration: InputDecoration(
                  labelText: 'Tipo de Ganado',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<Sexo>(
                value: _sexoSeleccionado,
                items: Sexo.values.map((sexo) {
                  return DropdownMenuItem(
                    value: sexo,
                    child: Text(sexo.nombreEspanol),
                  );
                }).toList(),
                onChanged: (value) => setState(() => _sexoSeleccionado = value),
                decoration: InputDecoration(
                  labelText: 'Sexo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<EstadoReproductivo>(
                value: _estadoSeleccionado,
                items: EstadoReproductivo.values.map((estado) {
                  return DropdownMenuItem(
                    value: estado,
                    child: Text(estado.nombreEspanol),
                  );
                }).toList(),
                onChanged: (value) =>
                    setState(() => _estadoSeleccionado = value),
                decoration: InputDecoration(
                  labelText: 'Estado Reproductivo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Sección: Edad
              _buildSectionTitle('Información de Edad'),
              const SizedBox(height: 12),
              DropdownButtonFormField<MetodoEdad>(
                value: _metodoEdadSeleccionado ??
                    MetodoEdad.exacta_por_fecha_nacimiento,
                items: MetodoEdad.values.map((metodo) {
                  return DropdownMenuItem(
                    value: metodo,
                    child: Text(metodo.nombreEspanol),
                  );
                }).toList(),
                onChanged: (value) =>
                    setState(() => _metodoEdadSeleccionado = value),
                decoration: InputDecoration(
                  labelText: 'Método de Cálculo de Edad',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _fechaNacimientoController,
                decoration: InputDecoration(
                  labelText: 'Fecha de Nacimiento (dd/mm/yyyy)',
                  hintText: '01/01/2023',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: _selectDate,
                  ),
                ),
                readOnly: true,
              ),
              const SizedBox(height: 16),

              // Sección: Ubicación
              _buildSectionTitle('Ubicación'),
              const SizedBox(height: 12),
              TextField(
                controller: _ubicacionIdController,
                decoration: InputDecoration(
                  labelText: 'ID de Ubicación',
                  hintText: 'Ej: Corral A, Potrero 1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Botones de acción
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _saveAnimal,
                      child: Text(
                        widget.animalParaEditar != null
                            ? 'Actualizar'
                            : 'Agregar',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _fechaNacimientoController.text =
            '${picked.day}/${picked.month}/${picked.year}';
      });
    }
  }

  Future<void> _saveAnimal() async {
    if (_nombreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El nombre es requerido')),
      );
      return;
    }

    if (_tipoSeleccionado == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El tipo de ganado es requerido')),
      );
      return;
    }

    try {
      // Parsear fecha de nacimiento
      DateTime? fechaNacimiento;
      if (_fechaNacimientoController.text.isNotEmpty) {
        final partes = _fechaNacimientoController.text.split('/');
        if (partes.length == 3) {
          fechaNacimiento = DateTime(
            int.parse(partes[2]),
            int.parse(partes[1]),
            int.parse(partes[0]),
          );
        }
      }

      final animal = v2.AnimalModel(
        id: widget.animalParaEditar?.id ?? const Uuid().v4(),
        identificadorVisible: _nombreController.text,
        tipo: _tipoSeleccionado!,
        sexo: _sexoSeleccionado!,
        estadoReproductivo:
            _estadoSeleccionado ?? EstadoReproductivo.no_definido,
        fechaNacimiento: fechaNacimiento,
        metodoEdad:
            _metodoEdadSeleccionado ?? MetodoEdad.exacta_por_fecha_nacimiento,
        ubicacionId: _ubicacionIdController.text.isNotEmpty
            ? _ubicacionIdController.text
            : null,
        fechaRegistro: widget.animalParaEditar?.fechaRegistro ?? DateTime.now(),
        categoriaAutomatica: '',
        fechaInicioEtapa: DateTime.now(),
      );

      // Guardar a través de Riverpod
      final animalNotifier = ref.read(animalNotifierProvider.notifier);
      await animalNotifier.addOrUpdateAnimal(animal);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.animalParaEditar != null
                  ? 'Animal actualizado exitosamente'
                  : 'Animal agregado exitosamente',
            ),
          ),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }
}
