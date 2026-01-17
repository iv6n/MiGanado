import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/presentation/providers/register_animal_provider.dart';
import 'package:miganado/features/animals/presentation/widgets/form_fields.dart';

/// Pantalla para registrar un nuevo animal
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
          // Formulario
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: [
              // Página 1: Datos básicos
              _Page1Basicos(state: state, notifier: notifier),
              // Página 2: Datos adicionales
              _Page2Adicionales(state: state, notifier: notifier),
              // Página 3: Revisión y confirmación
              _Page3Confirmacion(state: state),
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
                3,
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
                            if (_currentPage < 2) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              // Registrar
                              final animal = await notifier.registrar();
                              if (mounted && animal != null) {
                                // Mostrar éxito y volver
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
                        : Text(_currentPage == 2 ? 'Registrar' : 'Siguiente'),
                  ),
                ),
              ],
            ),
          ),

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
        ],
      ),
    );
  }
}

// ============ PAGE 1: DATOS BÁSICOS ============

class _Page1Basicos extends StatelessWidget {
  final RegisterAnimalState state;
  final RegisterAnimalNotifier notifier;

  const _Page1Basicos({required this.state, required this.notifier});

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
          const SizedBox(height: 30),
          FormTextField(
            label: 'Número de Arete',
            initialValue: state.numeroArete,
            onChanged: notifier.updateArete,
            required: true,
            maxLength: 20,
          ),
          FormDropdown<Especie>(
            label: 'Especie',
            value: state.especie,
            items: getEspecieItems(),
            onChanged: notifier.updateEspecie,
            required: true,
          ),
          if (state.especie != null)
            FormDropdown<Categoria>(
              label: 'Categoría',
              value: state.categoria,
              items: getCategoriaItems(state.especie),
              onChanged: notifier.updateCategoria,
              required: true,
            ),
          FormTextField(
            label: 'Edad (meses)',
            initialValue: state.edadMeses.toString(),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              final edadMeses = int.tryParse(value) ?? 0;
              notifier.updateEdadMeses(edadMeses);
            },
            validator: (value) {
              if (value == null || value.isEmpty) return 'Campo requerido';
              final edad = int.tryParse(value);
              if (edad == null || edad < 0) return 'Debe ser un número válido';
              return null;
            },
          ),
          FormDropdown<Sexo>(
            label: 'Sexo',
            value: state.sexo,
            items: getSexoItems(),
            itemLabel: (sexo) => _getSexoLabel(sexo),
            onChanged: notifier.updateSexo,
            required: true,
          ),
          if (state.especie == Especie.bovino && state.sexo == Sexo.macho)
            FormCheckbox(
              label: 'Es castrado',
              value: state.esCastrado,
              onChanged: notifier.updateEsCastrado,
            ),
        ],
      ),
    );
  }

  String _getSexoLabel(Sexo sexo) {
    return sexo == Sexo.macho ? 'Macho' : 'Hembra';
  }
}

// ============ PAGE 2: DATOS ADICIONALES ============

class _Page2Adicionales extends StatelessWidget {
  final RegisterAnimalState state;
  final RegisterAnimalNotifier notifier;

  const _Page2Adicionales({required this.state, required this.notifier});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Información Adicional',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          FormTextField(
            label: 'Raza',
            initialValue: state.raza,
            onChanged: notifier.updateRaza,
            required: true,
            maxLength: 50,
          ),
          FormTextField(
            label: 'Nombre Personalizado',
            initialValue: state.nombrePersonalizado,
            onChanged: notifier.updateNombrePersonalizado,
            required: false,
            maxLength: 50,
          ),
          FormDateField(
            label: 'Fecha de Nacimiento',
            value: state.fechaNacimiento,
            onChanged: notifier.updateFechaNacimiento,
            lastDate: DateTime.now(),
            required: true,
          ),
        ],
      ),
    );
  }
}

// ============ PAGE 3: CONFIRMACIÓN ============

class _Page3Confirmacion extends StatelessWidget {
  final RegisterAnimalState state;

  const _Page3Confirmacion({required this.state});

  @override
  Widget build(BuildContext context) {
    final edad = _calcularEdad(state.fechaNacimiento!);

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
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _ResumenRow('Arete', state.numeroArete),
                  _ResumenRow(
                      'Nombre', state.nombrePersonalizado ?? '(sin nombre)'),
                  _ResumenRow('Especie', state.especie?.name ?? 'N/A'),
                  _ResumenRow('Categoría', state.categoria?.name ?? 'N/A'),
                  _ResumenRow('Etapa', state.etapa?.name ?? 'N/A'),
                  _ResumenRow('Sexo', _getSexoLabel(state.sexo!)),
                  _ResumenRow('Raza', state.raza),
                  if (state.esCastrado) _ResumenRow('Castrado', 'Sí'),
                  _ResumenRow(
                    'Fecha Nacimiento',
                    '${state.fechaNacimiento!.day}/${state.fechaNacimiento!.month}/${state.fechaNacimiento!.year}',
                  ),
                  _ResumenRow('Edad (meses)', state.edadMeses.toString()),
                  _ResumenRow('Edad Aproximada', edad),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Confirma que los datos son correctos antes de registrar.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String _calcularEdad(DateTime fechaNac) {
    final ahora = DateTime.now();
    final diferencia = ahora.difference(fechaNac);
    final dias = diferencia.inDays;

    if (dias < 30) {
      return '$dias días';
    } else if (dias < 365) {
      final meses = (dias / 30).toStringAsFixed(0);
      return '$meses meses';
    } else {
      final anos = (dias / 365).toStringAsFixed(1);
      return '$anos años';
    }
  }

  String _getSexoLabel(Sexo sexo) {
    return sexo == Sexo.macho ? 'Macho' : 'Hembra';
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
