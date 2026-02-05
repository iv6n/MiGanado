import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// DEPRECATED: This screen uses the disabled reproductivo functionality
@Deprecated('Reproductivo functionality is disabled')
class ReproductivHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const ReproductivHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial Reproductivo - $animalNombre (DISABLED)'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              'Funcionalidad Reproductiva Deshabilitada',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Esta funcionalidad ya no está disponible',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
