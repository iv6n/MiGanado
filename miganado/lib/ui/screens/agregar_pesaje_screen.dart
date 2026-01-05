import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/providers/database_providers.dart';
import 'package:miganado/providers/data_providers.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/widgets/custom_widgets.dart';

/// Pantalla para agregar un nuevo pesaje
class AgregarPesajeScreen extends ConsumerStatefulWidget {
  final String animalId;
  final Pesaje? pesajeEdit; // Si no es null, estamos editando

  const AgregarPesajeScreen({
    required this.animalId,
    this.pesajeEdit,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<AgregarPesajeScreen> createState() =>
      _AgregarPesajeScreenState();
}

class _AgregarPesajeScreenState extends ConsumerState<AgregarPesajeScreen> {
  late TextEditingController pesoController;
  late TextEditingController notasController;
  DateTime? fechaPesaje;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    pesoController = TextEditingController(
      text: widget.pesajeEdit?.pesoKg.toString() ?? '',
    );
    notasController = TextEditingController(
      text: widget.pesajeEdit?.notas ?? '',
    );
    fechaPesaje = widget.pesajeEdit?.fecha ?? DateTime.now();
  }

  @override
  void dispose() {
    pesoController.dispose();
    notasController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final selected = await showDatePicker(
      context: context,
      initialDate: fechaPesaje ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (selected != null) {
      setState(() => fechaPesaje = selected);
    }
  }

  Future<void> _guardarPesaje() async {
    // Validar que el peso sea válido
    final peso = double.tryParse(pesoController.text);
    if (peso == null || peso <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor ingresa un peso válido'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      final repository = ref.read(pesajeRepositoryProvider);

      final nuevoPesaje = Pesaje(
        id: widget.pesajeEdit?.id,
        animalId: widget.animalId,
        pesoKg: peso,
        fecha: fechaPesaje ?? DateTime.now(),
        notas: notasController.text.isEmpty ? null : notasController.text,
      );

      if (widget.pesajeEdit != null) {
        await repository.updatePesaje(nuevoPesaje);
      } else {
        await repository.createPesaje(nuevoPesaje);
      }

      if (mounted) {
        // Invalida los providers para refrescar
        ref.invalidate(pesajesByAnimalProvider(widget.animalId));
        ref.invalidate(ultimoPesajeProvider(widget.animalId));

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.pesajeEdit != null
                  ? 'Pesaje actualizado correctamente'
                  : 'Pesaje registrado correctamente',
            ),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
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
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.pesajeEdit != null;
    final animalAsync = ref.watch(animalByIdProvider(widget.animalId));

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Editar pesaje' : 'Registrar pesaje'),
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
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              children: [
                // Card con información del animal
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Animal',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textSecondary,
                                  ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          animal.numeroArete,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          '${animal.tipo.toString().split('.').last.toUpperCase()} - ${animal.raza}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                // Peso GIGANTE - Input de 48px
                Text(
                  'Peso (kg)',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: AppSpacing.md),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: pesoController,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: AppSpacing.lg,
                              horizontal: AppSpacing.md,
                            ),
                            hintText: '0.0',
                            hintStyle: TextStyle(
                              fontSize: 48,
                              color: AppColors.borderColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                // Selector de fecha
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fecha del pesaje',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      GestureDetector(
                        onTap: _selectDate,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md,
                            vertical: AppSpacing.sm,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(AppRadius.sm),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                fechaPesaje != null
                                    ? '${fechaPesaje!.day}/${fechaPesaje!.month}/${fechaPesaje!.year}'
                                    : 'Seleccionar fecha',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Icon(Icons.calendar_today),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Campo de notas
                CustomTextField(
                  label: 'Notas (opcional)',
                  hint: 'Observaciones sobre el pesaje',
                  controller: notasController,
                  maxLines: 3,
                ),
                const SizedBox(height: AppSpacing.lg),
                // Botón guardar con color dorado
                PrimaryButton(
                  label: isEditing ? 'Actualizar pesaje' : 'Registrar peso',
                  onPressed: _guardarPesaje,
                  isLoading: isLoading,
                  backgroundColor: AppColors.accent,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
