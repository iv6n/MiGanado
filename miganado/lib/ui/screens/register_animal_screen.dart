import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/presentation/providers/register_animal_provider.dart';
import 'package:miganado/features/animals/presentation/widgets/form_fields.dart';

/// Pantalla mejorada para registrar un nuevo animal
class RegisterAnimalScreen extends ConsumerStatefulWidget {
  const RegisterAnimalScreen({super.key});

  @override
  ConsumerState<RegisterAnimalScreen> createState() =>
      _RegisterAnimalScreenState();
}

class _RegisterAnimalScreenState extends ConsumerState<RegisterAnimalScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerAnimalProvider);
    final notifier = ref.read(registerAnimalProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Nuevo Animal'),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Mostrar error si existe
          if (state.errorMessage != null)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.red.shade100,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.error, color: Colors.red.shade700),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            state.errorMessage!,
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => notifier.clearMessages(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          // Mostrar alerta de arete faltante
          if (state.mostrarAlertaArete)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.orange.shade100,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning, color: Colors.orange.shade700),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recordatorio: Falta el Arete',
                                style: TextStyle(
                                  color: Colors.orange.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Se generará un arete automático',
                                style: TextStyle(color: Colors.orange.shade700),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => notifier.cerrarAlertaArete(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          // Formulario
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: [
              // Página 1: Categoría y Sexo (ESENCIAL)
              _Page1Categoria(state: state, notifier: notifier),
              // Página 2: Datos del Animal
              _Page2DatosAnimal(state: state, notifier: notifier),
              // Página 3: Información Adicional
              _Page3InfoAdicional(state: state, notifier: notifier),
              // Página 4: Revisión
              _Page4Confirmacion(state: state),
            ],
          ),

          // Indicador de página
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.green
                        : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          ),

          // Botones de navegación
          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Row(
              children: [
                // Botón anterior
                if (_currentPage > 0)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text('Anterior'),
                    ),
                  ),
                if (_currentPage > 0) const SizedBox(width: 12),
                // Botón siguiente o registrar
                Expanded(
                  child: ElevatedButton(
                    onPressed: state.isLoading
                        ? null
                        : () async {
                            if (_currentPage < 3) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              // Registrar
                              final animal = await notifier.registrar();
                              if (mounted && animal != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Animal "${animal.numeroArete}" registrado',
                                    ),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                                Navigator.of(context).pop();
                              }
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: state.isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Text(_currentPage == 3 ? 'Registrar' : 'Siguiente'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============ PAGE 1: CATEGORÍA Y SEXO (ESENCIAL) ============

class _Page1Categoria extends StatelessWidget {
  final RegisterAnimalState state;
  final RegisterAnimalNotifier notifier;

  const _Page1Categoria({required this.state, required this.notifier});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Datos Básicos del Animal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Selecciona la categoría o etapa del animal',
            style: TextStyle(color: Colors.grey.shade700),
          ),
          const SizedBox(height: 30),

          // Etapa de vida - Dropdown con las opciones
          FormDropdown<EtapaVida>(
            label: 'Categoría o Etapa *',
            value: state.etapa,
            items: _getEtapaItems(),
            itemLabel: (etapa) => _getEtapaLabel(etapa),
            onChanged: notifier.updateEtapa,
            required: true,
          ),

          // Sexo - Automático pero permite cambio
          if (state.etapa != null)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info, color: Colors.blue.shade700),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'El sexo se selecciona automáticamente según la categoría',
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                FormDropdown<Sexo>(
                  label: 'Sexo *',
                  value: state.sexo,
                  items: getSexoItems(),
                  itemLabel: (sexo) => sexo == Sexo.macho ? 'Macho' : 'Hembra',
                  onChanged: notifier.updateSexo,
                  required: true,
                ),

                // Mostrar castración solo para machos bovinos
                if (state.sexo == Sexo.macho && state.etapa != EtapaVida.torete)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: FormCheckbox(
                      label: 'Está castrado',
                      value: state.esCastrado,
                      onChanged: notifier.updateEsCastrado,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }

  List<EtapaVida> _getEtapaItems() {
    return [
      EtapaVida.becerro,
      EtapaVida.becerra,
      EtapaVida.vaquilla,
      EtapaVida.torete,
      EtapaVida.novillo,
      EtapaVida.vaca,
      EtapaVida.toro,
    ];
  }

  String _getEtapaLabel(EtapaVida etapa) {
    const labels = {
      EtapaVida.becerro: 'Becerro',
      EtapaVida.becerra: 'Becerra',
      EtapaVida.vaquilla: 'Vaquilla',
      EtapaVida.torete: 'Torete',
      EtapaVida.novillo: 'Novillo',
      EtapaVida.vaca: 'Vaca',
      EtapaVida.toro: 'Toro',
      EtapaVida.potro: 'Potro',
      EtapaVida.adulto: 'Adulto',
    };
    return labels[etapa] ?? etapa.name;
  }
}

// ============ PAGE 2: DATOS DEL ANIMAL ============

class _Page2DatosAnimal extends StatefulWidget {
  final RegisterAnimalState state;
  final RegisterAnimalNotifier notifier;

  const _Page2DatosAnimal({required this.state, required this.notifier});

  @override
  State<_Page2DatosAnimal> createState() => _Page2DatosAnimalState();
}

class _Page2DatosAnimalState extends State<_Page2DatosAnimal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Datos del Animal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

          // Número de arete - OPCIONAL
          FormTextField(
            label: 'Número de Arete',
            initialValue: widget.state.numeroArete,
            onChanged: widget.notifier.updateArete,
            required: false,
            maxLength: 20,
          ),

          // Raza - OPCIONAL
          FormTextField(
            label: 'Raza',
            initialValue: widget.state.raza,
            onChanged: widget.notifier.updateRaza,
            required: false,
            maxLength: 50,
          ),

          // Nombre Personalizado - OPCIONAL
          FormTextField(
            label: 'Nombre Personalizado',
            initialValue: widget.state.nombrePersonalizado,
            onChanged: widget.notifier.updateNombrePersonalizado,
            required: false,
            maxLength: 50,
          ),

          // Ubicación - NUEVO
          FormTextField(
            label: 'Ubicación',
            initialValue: widget.state.ubicacion,
            onChanged: widget.notifier.updateUbicacion,
            required: false,
            maxLength: 50,
          ),
        ],
      ),
    );
  }
}

// ============ PAGE 3: INFORMACIÓN ADICIONAL ============

class _Page3InfoAdicional extends StatefulWidget {
  final RegisterAnimalState state;
  final RegisterAnimalNotifier notifier;

  const _Page3InfoAdicional({required this.state, required this.notifier});

  @override
  State<_Page3InfoAdicional> createState() => _Page3InfoAdicionalState();
}

class _Page3InfoAdicionalState extends State<_Page3InfoAdicional> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Fecha de Nacimiento',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

          // Toggle entre fecha exacta o aproximada
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        widget.notifier.toggleUsarEdadAproximada(false),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: !widget.state.usarEdadAproximada
                            ? Colors.green.shade50
                            : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                        ),
                      ),
                      child: const Text(
                        'Fecha Exacta',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 48,
                  color: Colors.grey.shade300,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => widget.notifier.toggleUsarEdadAproximada(true),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: widget.state.usarEdadAproximada
                            ? Colors.green.shade50
                            : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                      ),
                      child: const Text(
                        'Edad Aprox.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Mostrar campo de fecha o edad aproximada
          if (!widget.state.usarEdadAproximada)
            FormDateField(
              label: 'Fecha de Nacimiento',
              value: widget.state.fechaNacimiento,
              onChanged: widget.notifier.updateFechaNacimiento,
              lastDate: DateTime.now(),
              required: true,
            )
          else
            FormTextField(
              label: 'Edad Aproximada (meses)',
              initialValue: widget.state.edadAproximadaMeses?.toString() ?? '',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final edad = int.tryParse(value);
                if (edad != null) {
                  widget.notifier.updateEdadAproximada(edad);
                }
              },
              required: true,
              maxLength: 3,
            ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),

          // Información Adicional
          const Text(
            'Información Adicional',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Vacunada
          FormCheckbox(
            label: 'Está vacunado/a',
            value: widget.state.vacunada,
            onChanged: widget.notifier.updateVacunada,
          ),

          if (widget.state.vacunada)
            FormTextField(
              label: 'Tipo de Vacuna',
              initialValue: widget.state.tipoVacuna,
              onChanged: widget.notifier.updateTipoVacuna,
              required: false,
              maxLength: 50,
            ),

          // Peso
          FormTextField(
            label: 'Peso (kg)',
            initialValue: widget.state.peso?.toString() ?? '',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onChanged: (value) {
              final peso = double.tryParse(value);
              widget.notifier.updatePeso(peso);
            },
            required: false,
            maxLength: 6,
          ),

          // Observaciones
          FormTextField(
            label: 'Observaciones',
            initialValue: widget.state.observaciones,
            onChanged: widget.notifier.updateObservaciones,
            required: false,
            maxLength: 200,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

// ============ PAGE 4: CONFIRMACIÓN ============

class _Page4Confirmacion extends StatelessWidget {
  final RegisterAnimalState state;

  const _Page4Confirmacion({required this.state});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Resumen del Registro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

          // Card con información
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Datos Básicos
                  _SectionTitle('Datos Básicos'),
                  _ResumenRow(
                    'Arete',
                    state.numeroArete.isNotEmpty
                        ? state.numeroArete
                        : '(Auto-generado)',
                  ),
                  if (state.nombrePersonalizado != null)
                    _ResumenRow('Nombre', state.nombrePersonalizado!),
                  _ResumenRow('Categoría', _getEtapaLabel(state.etapa)),
                  _ResumenRow(
                      'Sexo', state.sexo == Sexo.macho ? 'Macho' : 'Hembra'),
                  if (state.esCastrado) _ResumenRow('Estado', 'Castrado'),

                  const Divider(),

                  // Datos del Animal
                  _SectionTitle('Datos del Animal'),
                  if (state.raza.isNotEmpty) _ResumenRow('Raza', state.raza),
                  if (state.ubicacion != null && state.ubicacion!.isNotEmpty)
                    _ResumenRow('Ubicación', state.ubicacion!),

                  const Divider(),

                  // Fecha y Edad
                  _SectionTitle('Fecha y Edad'),
                  if (state.fechaNacimiento != null)
                    _ResumenRow(
                      'Fecha Nacimiento',
                      '${state.fechaNacimiento!.day}/${state.fechaNacimiento!.month}/${state.fechaNacimiento!.year}',
                    )
                  else if (state.edadAproximadaMeses != null)
                    _ResumenRow(
                      'Edad Aproximada',
                      '${state.edadAproximadaMeses} meses',
                    ),
                  _ResumenRow(
                    'Edad Calculada',
                    _formatearEdad(state.edadMesesFinal),
                  ),

                  if (state.vacunada ||
                      (state.peso != null && state.peso! > 0) ||
                      (state.observaciones != null &&
                          state.observaciones!.isNotEmpty))
                    const Divider(),

                  // Información Adicional
                  if (state.vacunada ||
                      (state.peso != null && state.peso! > 0) ||
                      (state.observaciones != null &&
                          state.observaciones!.isNotEmpty))
                    Column(
                      children: [
                        _SectionTitle('Información Adicional'),
                        if (state.vacunada)
                          _ResumenRow(
                            'Vacunado',
                            state.tipoVacuna ?? 'Sí',
                          ),
                        if (state.peso != null && state.peso! > 0)
                          _ResumenRow('Peso', '${state.peso} kg'),
                        if (state.observaciones != null &&
                            state.observaciones!.isNotEmpty)
                          _ResumenRow('Obs.', state.observaciones!),
                      ],
                    ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green.shade200),
            ),
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green.shade700),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Verifica que los datos sean correctos antes de registrar',
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getEtapaLabel(EtapaVida? etapa) {
    if (etapa == null) return 'N/A';
    const labels = {
      EtapaVida.becerro: 'Becerro',
      EtapaVida.becerra: 'Becerra',
      EtapaVida.vaquilla: 'Vaquilla',
      EtapaVida.torete: 'Torete',
      EtapaVida.novillo: 'Novillo',
      EtapaVida.vaca: 'Vaca',
      EtapaVida.toro: 'Toro',
      EtapaVida.potro: 'Potro',
      EtapaVida.adulto: 'Adulto',
    };
    return labels[etapa] ?? etapa.name;
  }

  String _formatearEdad(int meses) {
    if (meses < 12) {
      return '$meses meses';
    } else if (meses < 24) {
      final anos = (meses / 12).toStringAsFixed(1);
      return '$anos año${meses >= 12 ? 's' : ''}';
    } else {
      final anos = (meses / 12).toStringAsFixed(1);
      return '$anos años';
    }
  }
}

// ============ COMPONENTES REUTILIZABLES ============

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class _ResumenRow extends StatelessWidget {
  final String label;
  final String value;

  const _ResumenRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// ============ CHECKBOX FIELD ============

class FormCheckbox extends StatefulWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FormCheckbox({
    required this.label,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<FormCheckbox> createState() => _FormCheckboxState();
}

class _FormCheckboxState extends State<FormCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: CheckboxListTile(
        title: Text(widget.label),
        value: widget.value,
        onChanged: (value) {
          widget.onChanged(value ?? false);
        },
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
