import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Legacy Ganadero Info Screen - Awaiting migration to new model
/// TODO: Implement ganadero_providers.dart with GanaderoModel provider
class GanaderoInfoScreen extends ConsumerStatefulWidget {
  const GanaderoInfoScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<GanaderoInfoScreen> createState() => _GanaderoInfoScreenState();
}

class _GanaderoInfoScreenState extends ConsumerState<GanaderoInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información Personal del Ganadero'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.construction,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            const Text(
              'Esta pantalla está en transición',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Se migrará a los nuevos modelos TypeSafe',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
