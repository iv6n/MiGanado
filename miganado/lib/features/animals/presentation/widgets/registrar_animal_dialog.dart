import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/register_animal_provider.dart';
import 'package:miganado/features/animals/presentation/widgets/form_fields.dart';

class RegistrarAnimalDialog extends ConsumerWidget {
  const RegistrarAnimalDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerAnimalProvider);
    final notifier = ref.read(registerAnimalProvider.notifier);

    return AlertDialog(
      title: const Text('Registrar Nuevo Animal'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormTextField(
              label: 'Arete',
              initialValue: state.numeroArete,
              onChanged: notifier.updateArete,
              required: false,
            ),
            const SizedBox(height: 8),
            FormTextField(
              label: 'Nombre',
              initialValue: state.nombrePersonalizado,
              onChanged: notifier.updateNombrePersonalizado,
              required: false,
            ),
            const SizedBox(height: 8),
            FormTextField(
              label: 'Raza',
              initialValue: state.raza,
              onChanged: notifier.updateRaza,
              required: false,
            ),
            const SizedBox(height: 8),
            // Puedes agregar más campos según el modelo
            if (state.errorMessage != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  state.errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
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
          onPressed: state.isLoading
              ? null
              : () async {
                  final animal = await notifier.registrar();
                  if (animal != null && context.mounted) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Animal registrado')),
                    );
                  }
                },
          child: state.isLoading
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Registrar'),
        ),
      ],
    );
  }
}
