import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/providers/data_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';
import 'package:miganado/providers/database_providers.dart';

/// Pantalla de información personal del ganadero
class GanaderoInfoScreen extends ConsumerStatefulWidget {
  const GanaderoInfoScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<GanaderoInfoScreen> createState() => _GanaderoInfoScreenState();
}

class _GanaderoInfoScreenState extends ConsumerState<GanaderoInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final ganaderoAsync = ref.watch(ganaderoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Información Personal'),
        elevation: 0,
      ),
      body: ganaderoAsync.when(
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
        data: (ganadero) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (ganadero != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _CardInfo(
                          titulo: 'Nombre',
                          valor: ganadero.nombre,
                          icono: Icons.person,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _CardInfo(
                          titulo: 'Teléfono',
                          valor: ganadero.telefono ?? 'No registrado',
                          icono: Icons.phone,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _CardInfo(
                          titulo: 'Dirección',
                          valor: ganadero.direccion ?? 'No registrada',
                          icono: Icons.location_on,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _CardInfo(
                          titulo: 'Marca de herrado',
                          valor: ganadero.marcaHerrado ?? 'No registrada',
                          icono: Icons.branding_watermark,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _CardInfo(
                          titulo: 'Señal de oreja',
                          valor: ganadero.senalOreja ?? 'No registrada',
                          icono: Icons.info,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _CardInfo(
                          titulo: 'UPP',
                          valor: ganadero.upp ?? 'No registrada',
                          icono: Icons.badge,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        if (ganadero.notas != null &&
                            ganadero.notas!.isNotEmpty)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notas',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: AppSpacing.sm),
                              Container(
                                padding: const EdgeInsets.all(AppSpacing.md),
                                decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(AppRadius.md),
                                  ),
                                ),
                                child: Text(ganadero.notas!),
                              ),
                              const SizedBox(height: AppSpacing.md),
                            ],
                          ),
                        SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            label: 'Editar',
                            onPressed: () {
                              _mostrarFormulario(context, ref, ganadero);
                            },
                          ),
                        ),
                      ],
                    )
                  else
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 64,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'Sin información registrada',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        PrimaryButton(
                          label: 'Agregar información',
                          onPressed: () {
                            _mostrarFormulario(context, ref, null);
                          },
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _mostrarFormulario(
    BuildContext context,
    WidgetRef ref,
    Ganadero? ganadero,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => _FormularioGanadero(
        ganadero: ganadero,
        onGuardar: () {
          Navigator.pop(context);
          ref.invalidate(ganaderoProvider);
        },
      ),
    );
  }
}

/// Tarjeta de información
class _CardInfo extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icono;

  const _CardInfo({
    required this.titulo,
    required this.valor,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(AppRadius.md)),
        border: Border.all(color: AppColors.primary, width: 2),
      ),
      child: Row(
        children: [
          Icon(icono, color: AppColors.primary, size: 28),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  valor,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
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

/// Formulario para agregar/editar información del ganadero
class _FormularioGanadero extends ConsumerStatefulWidget {
  final Ganadero? ganadero;
  final VoidCallback onGuardar;

  const _FormularioGanadero({
    required this.ganadero,
    required this.onGuardar,
  });

  @override
  ConsumerState<_FormularioGanadero> createState() =>
      _FormularioGanaderoState();
}

class _FormularioGanaderoState extends ConsumerState<_FormularioGanadero> {
  late TextEditingController _nombreController;
  late TextEditingController _telefonoController;
  late TextEditingController _direccionController;
  late TextEditingController _marcaHerradoController;
  late TextEditingController _senalOrejaController;
  late TextEditingController _uppController;
  late TextEditingController _notasController;

  @override
  void initState() {
    super.initState();
    _nombreController =
        TextEditingController(text: widget.ganadero?.nombre ?? '');
    _telefonoController =
        TextEditingController(text: widget.ganadero?.telefono ?? '');
    _direccionController =
        TextEditingController(text: widget.ganadero?.direccion ?? '');
    _marcaHerradoController =
        TextEditingController(text: widget.ganadero?.marcaHerrado ?? '');
    _senalOrejaController =
        TextEditingController(text: widget.ganadero?.senalOreja ?? '');
    _uppController = TextEditingController(text: widget.ganadero?.upp ?? '');
    _notasController =
        TextEditingController(text: widget.ganadero?.notas ?? '');
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _telefonoController.dispose();
    _direccionController.dispose();
    _marcaHerradoController.dispose();
    _senalOrejaController.dispose();
    _uppController.dispose();
    _notasController.dispose();
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
              'Información Personal',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppSpacing.lg),
            CustomTextField(
              label: 'Nombre',
              controller: _nombreController,
              hint: 'Tu nombre',
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Teléfono',
              controller: _telefonoController,
              hint: '+57 ...',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Dirección',
              controller: _direccionController,
              hint: 'Dirección de la finca',
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Información de Identificación',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Marca de herrado',
              controller: _marcaHerradoController,
              hint: 'Ej: MG, JRV, etc.',
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Señal de oreja',
              controller: _senalOrejaController,
              hint: 'Descripción del corte',
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'UPP (Unidad de Producción Pecuaria)',
              controller: _uppController,
              hint: 'Número de registro',
            ),
            const SizedBox(height: AppSpacing.md),
            CustomTextField(
              label: 'Notas adicionales',
              controller: _notasController,
              hint: 'Información adicional',
              maxLines: 3,
            ),
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                label: 'Guardar',
                onPressed: () {
                  _guardarGanadero();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _guardarGanadero() {
    if (_nombreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El nombre es requerido')),
      );
      return;
    }

    final ganadero = Ganadero(
      id: widget.ganadero?.id,
      nombre: _nombreController.text,
      telefono:
          _telefonoController.text.isNotEmpty ? _telefonoController.text : null,
      direccion: _direccionController.text.isNotEmpty
          ? _direccionController.text
          : null,
      marcaHerrado: _marcaHerradoController.text.isNotEmpty
          ? _marcaHerradoController.text
          : null,
      senalOreja: _senalOrejaController.text.isNotEmpty
          ? _senalOrejaController.text
          : null,
      upp: _uppController.text.isNotEmpty ? _uppController.text : null,
      notas: _notasController.text.isNotEmpty ? _notasController.text : null,
      fechaRegistro: widget.ganadero?.fechaRegistro,
      ultimaActualizacion: DateTime.now(),
    );

    final repository = ref.watch(ganaderoRepositoryProvider);
    repository.save(ganadero).then((_) {
      widget.onGuardar();
    });
  }
}
