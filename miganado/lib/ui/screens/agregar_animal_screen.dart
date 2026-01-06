import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';
import 'package:miganado/features/locations/presentation/providers/ubicaciones_providers.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

/// Pantalla para agregar un nuevo animal con formulario dinámico
class AgregarAnimalScreen extends ConsumerStatefulWidget {
  final AnimalModel? animal;

  const AgregarAnimalScreen({Key? key, this.animal}) : super(key: key);

  @override
  ConsumerState<AgregarAnimalScreen> createState() =>
      _AgregarAnimalScreenState();
}

class _AgregarAnimalScreenState extends ConsumerState<AgregarAnimalScreen> {
  late TextEditingController _areteController;
  late TextEditingController _nombreController;
  late TextEditingController _razaController;
  late TextEditingController _notasController;

  late TipoGanado _tipoSeleccionado;
  late Sexo _sexoSeleccionado;
  DateTime? _fechaNacimiento;
  String? _ubicacionId;

  bool _vacunado = false;
  DateTime? _fechaUltimaVacuna;
  late TextEditingController _tipoVacunaController;

  bool _desparasitado = false;
  DateTime? _fechaUltimoDesparasitante;
  late TextEditingController _tipoDesparasitanteController;

  bool _tieneVitaminas = false;
  DateTime? _fechaVitaminas;

  bool _tieneOtrosTratamientos = false;
  DateTime? _fechaOtrosTratamientos;
  late TextEditingController _descripcionOtrosTratamientosController;

  EstadoReproductivo _estadoReproductivo = EstadoReproductivo.no_definido;

  // Foto del animal
  String? _fotoBase64;

  final List<String> tiposVacunas = [
    'Fiebre Aftosa',
    'Brucelosis',
    'Rabia',
    'Tuberculosis',
    'Otro'
  ];

  final List<String> tiposDesparasitantes = [
    'Ivermectina',
    'Levamisol',
    'Albendazol',
    'Otro'
  ];

  @override
  void initState() {
    super.initState();
    _areteController =
        TextEditingController(text: widget.animal?.numeroArete ?? '');
    _nombreController =
        TextEditingController(text: widget.animal?.nombrePersonalizado ?? '');
    _razaController = TextEditingController(text: widget.animal?.raza ?? '');
    _notasController = TextEditingController(text: widget.animal?.notas ?? '');

    _tipoSeleccionado = widget.animal?.tipo ?? TipoGanado.vaca;
    _sexoSeleccionado = widget.animal?.sexo ?? Sexo.hembra;
    _fechaNacimiento = widget.animal?.fechaNacimiento;
    _ubicacionId = widget.animal?.ubicacionId;

    _vacunado = widget.animal?.vacunado ?? false;
    _fechaUltimaVacuna = widget.animal?.fechaUltimaVacuna;
    _tipoVacunaController =
        TextEditingController(text: widget.animal?.tipoVacuna ?? '');

    _desparasitado = widget.animal?.desparasitado ?? false;
    _fechaUltimoDesparasitante = widget.animal?.fechaUltimoDesparasitante;
    _tipoDesparasitanteController =
        TextEditingController(text: widget.animal?.tipoDesparasitante ?? '');

    _tieneVitaminas = widget.animal?.tieneVitaminas ?? false;
    _fechaVitaminas = widget.animal?.fechaVitaminas;

    _tieneOtrosTratamientos = widget.animal?.tieneOtrosTratamientos ?? false;
    _fechaOtrosTratamientos = widget.animal?.fechaOtrosTratamientos;
    _descripcionOtrosTratamientosController = TextEditingController(
        text: widget.animal?.descripcionOtrosTratamientos ?? '');

    _estadoReproductivo =
        widget.animal?.estadoReproductivo ?? EstadoReproductivo.no_definido;
  }

  @override
  void dispose() {
    _areteController.dispose();
    _nombreController.dispose();
    _razaController.dispose();
    _notasController.dispose();
    _tipoVacunaController.dispose();
    _tipoDesparasitanteController.dispose();
    _descripcionOtrosTratamientosController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal == null ? 'Nuevo Animal' : 'Editar Animal'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sección de Foto del Animal
              _SectionTitle(title: 'Foto del Animal (Opcional)'),
              const SizedBox(height: AppSpacing.md),
              _FotoAnimalWidget(
                fotoBase64: _fotoBase64,
                onFotoSelected: (foto) {
                  setState(() => _fotoBase64 = foto);
                },
              ),
              const SizedBox(height: AppSpacing.lg),

              // Sección 1: Información Básica
              _SectionTitle(title: 'Información Básica'),
              const SizedBox(height: AppSpacing.md),

              // Tipo de ganado y sexo en fila
              Row(
                children: [
                  Expanded(
                    child: CustomDropdown<TipoGanado>(
                      label: 'Tipo',
                      value: _tipoSeleccionado,
                      items: TipoGanado.values.toList(),
                      itemLabel: (tipo) =>
                          tipo.toString().split('.').last.toUpperCase(),
                      onChanged: (tipo) {
                        setState(() {
                          _tipoSeleccionado = tipo ?? TipoGanado.vaca;
                          // Ajustar sexo según tipo
                          if (_tipoSeleccionado == TipoGanado.toro) {
                            _sexoSeleccionado = Sexo.macho;
                          } else if (_tipoSeleccionado == TipoGanado.vaca) {
                            _sexoSeleccionado = Sexo.hembra;
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: CustomDropdown<Sexo>(
                      label: 'Sexo',
                      value: _sexoSeleccionado,
                      items: Sexo.values.toList(),
                      itemLabel: (sexo) =>
                          sexo.toString().split('.').last.toUpperCase(),
                      onChanged: (sexo) {
                        setState(() => _sexoSeleccionado = sexo ?? Sexo.hembra);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),

              // Ubicación (opcional)
              _UbicacionSelector(
                ubicacionId: _ubicacionId,
                onChanged: (id) {
                  setState(() => _ubicacionId = id);
                },
              ),
              const SizedBox(height: AppSpacing.md),

              // Campo de Arete con validación según especie
              CustomTextField(
                label: _tipoSeleccionado.requiereArete
                    ? 'Arete (Requerido)'
                    : 'Arete (Opcional)',
                controller: _areteController,
                hint: 'Ej: 12345',
                isRequired: _tipoSeleccionado.requiereArete,
              ),
              if (_tipoSeleccionado.requiereArete)
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.sm),
                  child: Text(
                    _tipoSeleccionado.mensajeArete,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.blue[700],
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                label: 'Nombre personalizado (Ej: Blanquita)',
                controller: _nombreController,
                hint: 'Ej: Bonita, Morena',
              ),

              CustomTextField(
                label: 'Raza',
                controller: _razaController,
                hint: 'Ej: Holstein, Brahman, Cebú',
              ),

              // Fecha de nacimiento
              _DatePickerField(
                label: 'Fecha de Nacimiento (opcional)',
                selectedDate: _fechaNacimiento,
                onDateSelected: (date) {
                  setState(() => _fechaNacimiento = date);
                },
              ),
              const SizedBox(height: AppSpacing.md),

              // Sección 2: Salud
              _SectionTitle(title: 'Salud'),
              const SizedBox(height: AppSpacing.md),

              // Vacunado
              _CheckboxField(
                title: '¿Está vacunado?',
                value: _vacunado,
                onChanged: (value) {
                  setState(() => _vacunado = value ?? false);
                },
              ),
              if (_vacunado) ...[
                const SizedBox(height: AppSpacing.md),
                CustomDropdown<String>(
                  label: 'Tipo de Vacuna',
                  value: _tipoVacunaController.text.isEmpty
                      ? null
                      : _tipoVacunaController.text,
                  items: tiposVacunas,
                  itemLabel: (tipo) => tipo,
                  onChanged: (tipo) {
                    setState(() => _tipoVacunaController.text = tipo ?? '');
                  },
                ),
                _DatePickerField(
                  label: 'Fecha Última Vacuna',
                  selectedDate: _fechaUltimaVacuna,
                  onDateSelected: (date) {
                    setState(() => _fechaUltimaVacuna = date);
                  },
                ),
              ],

              const SizedBox(height: AppSpacing.md),

              // Desparasitado
              _CheckboxField(
                title: '¿Está desparasitado?',
                value: _desparasitado,
                onChanged: (value) {
                  setState(() => _desparasitado = value ?? false);
                },
              ),
              if (_desparasitado) ...[
                const SizedBox(height: AppSpacing.md),
                CustomDropdown<String>(
                  label: 'Tipo de Desparasitante',
                  value: _tipoDesparasitanteController.text.isEmpty
                      ? null
                      : _tipoDesparasitanteController.text,
                  items: tiposDesparasitantes,
                  itemLabel: (tipo) => tipo,
                  onChanged: (tipo) {
                    setState(
                        () => _tipoDesparasitanteController.text = tipo ?? '');
                  },
                ),
                _DatePickerField(
                  label: 'Fecha Último Desparasitante',
                  selectedDate: _fechaUltimoDesparasitante,
                  onDateSelected: (date) {
                    setState(() => _fechaUltimoDesparasitante = date);
                  },
                ),
              ],

              const SizedBox(height: AppSpacing.md),

              // Vitaminas
              _CheckboxField(
                title: '¿Tiene vitaminas aplicadas?',
                value: _tieneVitaminas,
                onChanged: (value) {
                  setState(() => _tieneVitaminas = value ?? false);
                },
              ),
              if (_tieneVitaminas) ...[
                const SizedBox(height: AppSpacing.md),
                _DatePickerField(
                  label: 'Fecha Aplicación de Vitaminas',
                  selectedDate: _fechaVitaminas,
                  onDateSelected: (date) {
                    setState(() => _fechaVitaminas = date);
                  },
                ),
              ],

              const SizedBox(height: AppSpacing.md),

              // Otros Tratamientos
              _CheckboxField(
                title: '¿Tiene otros tratamientos aplicados?',
                value: _tieneOtrosTratamientos,
                onChanged: (value) {
                  setState(() => _tieneOtrosTratamientos = value ?? false);
                },
              ),
              if (_tieneOtrosTratamientos) ...[
                const SizedBox(height: AppSpacing.md),
                CustomTextField(
                  label: 'Descripción de Tratamientos',
                  controller: _descripcionOtrosTratamientosController,
                  hint: 'Ej: Antiparasitario tópico, inyección de vitamina D',
                  maxLines: 3,
                ),
                _DatePickerField(
                  label: 'Fecha Aplicación',
                  selectedDate: _fechaOtrosTratamientos,
                  onDateSelected: (date) {
                    setState(() => _fechaOtrosTratamientos = date);
                  },
                ),
              ],

              // Sección 3: Reproducción (solo para hembras)
              if (_sexoSeleccionado == Sexo.hembra) ...[
                const SizedBox(height: AppSpacing.lg),
                _SectionTitle(title: 'Reproducción'),
                const SizedBox(height: AppSpacing.md),
                CustomDropdown<EstadoReproductivo>(
                  label: 'Estado Reproductivo',
                  value: _estadoReproductivo,
                  items: EstadoReproductivo.values.toList(),
                  itemLabel: (estado) => estado
                      .toString()
                      .split('.')
                      .last
                      .replaceAll('_', ' ')
                      .toUpperCase(),
                  onChanged: (estado) {
                    setState(() => _estadoReproductivo =
                        estado ?? EstadoReproductivo.no_definido);
                  },
                ),
              ],

              const SizedBox(height: AppSpacing.md),
              CustomTextField(
                label: 'Notas (opcional)',
                controller: _notasController,
                hint: 'Observaciones adicionales sobre el animal',
                maxLines: 3,
              ),

              const SizedBox(height: AppSpacing.xl),

              // Botones
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: PrimaryButton(
                      label: 'Previsualizar',
                      onPressed: () {
                        _mostrarResumen(context);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
            ],
          ),
        ),
      ),
    );
  }

  void _mostrarResumen(BuildContext context) {
    if (_areteController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El arete es requerido')),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => _ResumenAnimal(
        arete: _areteController.text,
        nombre: _nombreController.text,
        tipo: _tipoSeleccionado,
        sexo: _sexoSeleccionado,
        raza: _razaController.text,
        fechaNacimiento: _fechaNacimiento,
        vacunado: _vacunado,
        fechaUltimaVacuna: _fechaUltimaVacuna,
        tipoVacuna: _tipoVacunaController.text,
        desparasitado: _desparasitado,
        fechaUltimoDesparasitante: _fechaUltimoDesparasitante,
        tipoDesparasitante: _tipoDesparasitanteController.text,
        estadoReproductivo: _estadoReproductivo,
        notas: _notasController.text,
        onConfirm: () {
          _guardarAnimal();
        },
      ),
    );
  }

  Future<void> _guardarAnimal() async {
    // Validar arete si es requerido
    if (_tipoSeleccionado.requiereArete && _areteController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'El arete es obligatorio para ${_tipoSeleccionado.toString().split('.').last}'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      // Crear el modelo de animal con los datos del formulario
      final animalModel = AnimalModel(
        id: widget.animal?.id,
        numeroArete: _areteController.text,
        nombrePersonalizado:
            _nombreController.text.isEmpty ? null : _nombreController.text,
        tipo: _tipoSeleccionado,
        sexo: _sexoSeleccionado,
        raza: _razaController.text.isEmpty
            ? 'Sin especificar'
            : _razaController.text,
        fechaNacimiento: _fechaNacimiento,
        ubicacionId: _ubicacionId,
        vacunado: _vacunado,
        fechaUltimaVacuna: _fechaUltimaVacuna,
        tipoVacuna: _tipoVacunaController.text.isEmpty
            ? null
            : _tipoVacunaController.text,
        desparasitado: _desparasitado,
        fechaUltimoDesparasitante: _fechaUltimoDesparasitante,
        tipoDesparasitante: _tipoDesparasitanteController.text.isEmpty
            ? null
            : _tipoDesparasitanteController.text,
        tieneVitaminas: _tieneVitaminas,
        fechaVitaminas: _fechaVitaminas,
        tieneOtrosTratamientos: _tieneOtrosTratamientos,
        fechaOtrosTratamientos: _fechaOtrosTratamientos,
        descripcionOtrosTratamientos:
            _descripcionOtrosTratamientosController.text.isEmpty
                ? null
                : _descripcionOtrosTratamientosController.text,
        estadoReproductivo: _estadoReproductivo,
        notas: _notasController.text,
        fotoPath: _fotoBase64,
      );

      // Guardar el animal usando el provider de Riverpod
      await ref.read(animalNotifierProvider.notifier).saveAnimal(animalModel);

      if (mounted) {
        // Refrescar la lista de animales (fire and forget)
        final _ = ref.refresh(allAnimalesProvider);

        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(widget.animal == null
                ? 'Animal guardado exitosamente'
                : 'Animal actualizado exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al guardar el animal: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

/// Widget para título de sección
class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          height: 2,
          width: 60,
          color: AppColors.accent,
        ),
      ],
    );
  }
}

/// Widget para selector de fecha
class _DatePickerField extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final Function(DateTime?) onDateSelected;

  const _DatePickerField({
    required this.label,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: AppSpacing.sm),
          GestureDetector(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );
              if (date != null) {
                onDateSelected(date);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.sm,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary, width: 2),
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDate != null
                        ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                        : 'Seleccionar fecha',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Icon(Icons.calendar_today, color: AppColors.primary),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget para checkbox
class _CheckboxField extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const _CheckboxField({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 2),
        borderRadius: BorderRadius.circular(AppRadius.md),
        color: value ? AppColors.secondary : Colors.transparent,
      ),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.primary,
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget para resumen previo
class _ResumenAnimal extends StatelessWidget {
  final String arete;
  final String nombre;
  final TipoGanado tipo;
  final Sexo sexo;
  final String raza;
  final DateTime? fechaNacimiento;
  final bool vacunado;
  final DateTime? fechaUltimaVacuna;
  final String tipoVacuna;
  final bool desparasitado;
  final DateTime? fechaUltimoDesparasitante;
  final String tipoDesparasitante;
  final EstadoReproductivo estadoReproductivo;
  final String notas;
  final VoidCallback onConfirm;

  const _ResumenAnimal({
    required this.arete,
    required this.nombre,
    required this.tipo,
    required this.sexo,
    required this.raza,
    this.fechaNacimiento,
    required this.vacunado,
    this.fechaUltimaVacuna,
    required this.tipoVacuna,
    required this.desparasitado,
    this.fechaUltimoDesparasitante,
    required this.tipoDesparasitante,
    required this.estadoReproductivo,
    required this.notas,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Resumen del Animal',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppSpacing.lg),
            _ResumenItem(label: 'Arete', valor: arete),
            _ResumenItem(
                label: 'Nombre',
                valor: nombre.isEmpty ? 'No especificado' : nombre),
            _ResumenItem(
                label: 'Tipo',
                valor: tipo.toString().split('.').last.toUpperCase()),
            _ResumenItem(
                label: 'Sexo',
                valor: sexo.toString().split('.').last.toUpperCase()),
            _ResumenItem(label: 'Raza', valor: raza),
            if (fechaNacimiento != null)
              _ResumenItem(
                label: 'Fecha de Nacimiento',
                valor:
                    '${fechaNacimiento!.day}/${fechaNacimiento!.month}/${fechaNacimiento!.year}',
              ),
            const SizedBox(height: AppSpacing.md),
            const Divider(thickness: 2),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Salud',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            _ResumenItem(label: 'Vacunado', valor: vacunado ? 'Sí' : 'No'),
            if (vacunado) ...[
              if (tipoVacuna.isNotEmpty)
                _ResumenItem(label: 'Tipo de Vacuna', valor: tipoVacuna),
              if (fechaUltimaVacuna != null)
                _ResumenItem(
                  label: 'Fecha Última Vacuna',
                  valor:
                      '${fechaUltimaVacuna!.day}/${fechaUltimaVacuna!.month}/${fechaUltimaVacuna!.year}',
                ),
            ],
            const SizedBox(height: AppSpacing.md),
            _ResumenItem(
                label: 'Desparasitado', valor: desparasitado ? 'Sí' : 'No'),
            if (desparasitado) ...[
              if (tipoDesparasitante.isNotEmpty)
                _ResumenItem(
                    label: 'Tipo de Desparasitante', valor: tipoDesparasitante),
              if (fechaUltimoDesparasitante != null)
                _ResumenItem(
                  label: 'Fecha Último Desparasitante',
                  valor:
                      '${fechaUltimoDesparasitante!.day}/${fechaUltimoDesparasitante!.month}/${fechaUltimoDesparasitante!.year}',
                ),
            ],
            if (sexo == Sexo.hembra) ...[
              const SizedBox(height: AppSpacing.md),
              const Divider(thickness: 2),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Reproducción',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
              ),
              const SizedBox(height: AppSpacing.md),
              _ResumenItem(
                label: 'Estado Reproductivo',
                valor: estadoReproductivo
                    .toString()
                    .split('.')
                    .last
                    .replaceAll('_', ' ')
                    .toUpperCase(),
              ),
            ],
            if (notas.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.md),
              const Divider(thickness: 2),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Notas',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
              ),
              const SizedBox(height: AppSpacing.md),
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: Text(notas),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Volver'),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: PrimaryButton(
                    label: 'Guardar Animal',
                    onPressed: () {
                      Navigator.pop(context);
                      onConfirm();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget para item de resumen
class _ResumenItem extends StatelessWidget {
  final String label;
  final String valor;

  const _ResumenItem({
    required this.label,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            valor,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
          ),
        ],
      ),
    );
  }
}

/// Widget para seleccionar foto del animal desde Chrome
class _FotoAnimalWidget extends StatefulWidget {
  final String? fotoBase64;
  final Function(String?) onFotoSelected;

  const _FotoAnimalWidget({
    required this.fotoBase64,
    required this.onFotoSelected,
  });

  @override
  State<_FotoAnimalWidget> createState() => _FotoAnimalWidgetState();
}

class _FotoAnimalWidgetState extends State<_FotoAnimalWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Área de vista previa de foto
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(AppRadius.md),
            color: AppColors.primary.withOpacity(0.1),
          ),
          child: widget.fotoBase64 != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                  child: Image.network(
                    'data:image/jpeg;base64,${widget.fotoBase64}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 50,
                              color: Colors.red,
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            const Text('Error al cargar la foto'),
                          ],
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 60,
                        color: AppColors.primary,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Text(
                        'Sin foto',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Botones de acción
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _seleccionarFoto,
                icon: const Icon(Icons.upload_file),
                label: const Text('Cargar Foto'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
              ),
            ),
            if (widget.fotoBase64 != null) ...[
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => widget.onFotoSelected(null),
                  icon: const Icon(Icons.delete_outline),
                  label: const Text('Eliminar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[400],
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  Future<void> _seleccionarFoto() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 80, // Reducir tamaño manteniendo calidad
        maxHeight: 1024,
        maxWidth: 1024,
      );

      if (image != null) {
        // Leer los bytes de la imagen
        final bytes = await image.readAsBytes();
        // Convertir a Base64
        final base64String = base64Encode(bytes);

        if (mounted) {
          widget.onFotoSelected(base64String);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Foto cargada correctamente'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al cargar foto: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

/// Widget selector de ubicación
class _UbicacionSelector extends ConsumerWidget {
  final String? ubicacionId;
  final Function(String?) onChanged;

  const _UbicacionSelector({
    required this.ubicacionId,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ubicacionesAsync = ref.watch(allUbicacionesProvider);

    return ubicacionesAsync.when(
      data: (ubicaciones) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown de ubicación
            CustomDropdown<String>(
              label: 'Ubicación (Opcional)',
              value: ubicacionId,
              items: ['', ...ubicaciones.map((u) => u.id).toList()],
              itemLabel: (id) {
                if (id.isEmpty) return 'Seleccionar ubicación';
                final ubicacion = ubicaciones.firstWhere(
                  (u) => u.id == id,
                  orElse: () => ubicaciones.first,
                );
                return ubicacion.nombre;
              },
              onChanged: (newId) {
                onChanged(newId?.isEmpty ?? true ? null : newId);
              },
            ),
            // Mostrar foto de la ubicación seleccionada si existe
            if (ubicacionId != null && ubicacionId!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.sm),
              _UbicacionCard(ubicacionId: ubicacionId!),
            ],
          ],
        );
      },
      loading: () => const Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
        child: SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      error: (error, stack) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        child: Text(
          'Error al cargar ubicaciones',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.red,
              ),
        ),
      ),
    );
  }
}

/// Widget que muestra la tarjeta de ubicación seleccionada
class _UbicacionCard extends ConsumerWidget {
  final String ubicacionId;

  const _UbicacionCard({required this.ubicacionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ubicacionAsync = ref.watch(ubicacionByIdProvider(ubicacionId));

    return ubicacionAsync.when(
      data: (ubicacion) {
        if (ubicacion == null) return const SizedBox.shrink();

        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            children: [
              // Foto de la ubicación
              if (ubicacion.fotoPath != null && ubicacion.fotoPath!.isNotEmpty)
                Container(
                  width: 60,
                  height: 60,
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
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.grey[400],
                  ),
                ),
              const SizedBox(width: AppSpacing.md),
              // Información de la ubicación
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ubicacion.nombre,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    if (ubicacion.descripcion != null &&
                        ubicacion.descripcion!.isNotEmpty)
                      Text(
                        ubicacion.descripcion!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacing.xs),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          ubicacion.tipo
                              .toString()
                              .split('.')
                              .last
                              .toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.blue[700],
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const SizedBox(
        height: 60,
        child: Center(
          child: SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
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
