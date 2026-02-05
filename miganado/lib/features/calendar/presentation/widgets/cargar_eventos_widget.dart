import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/services/seed_eventos_calendario_animales.dart';
import 'package:miganado/providers/calendar_sync_providers.dart';

/// Widget de utilidad para cargar eventos con información del animal
/// Úsalo en desarrollo/pruebas para generar datos de ejemplo en el calendario
class CargarEventosConAnimalWidget extends ConsumerWidget {
  const CargarEventosConAnimalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '🌱 Cargar Eventos de Ejemplo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Genera eventos de calendario con información completa del animal para visualización y testing',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () => _cargarEventos(context, ref),
              icon: const Icon(Icons.add_circle),
              label: const Text('Cargar 6 Eventos de Ejemplo'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Eventos que se crearán:\n'
              '1. 💉 Vacunación Anual\n'
              '2. ⚖️ Pesaje Mensual\n'
              '3. 🔴 Detección de Celo\n'
              '4. 👨‍⚕️ Revisión Veterinaria\n'
              '5. 🏠 Control Ambiental\n'
              '6. 🌾 Cambio de Alimentación',
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _cargarEventos(BuildContext context, WidgetRef ref) async {
    try {
      // Mostrar loading
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('⏳ Cargando eventos...'),
          duration: Duration(seconds: 2),
        ),
      );

      final database = MiGanadoDatabase();
      await SeedEventosCalendarioAnimales.seedEventosConAnimales(database);

      // Refrescar providers de Riverpod
      ref.invalidate(todosLosEventosProvider);
      ref.invalidate(eventosProximosProvider);
      ref.invalidate(eventosVencidosProvider);

      // Mostrar éxito
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('✅ Eventos cargados exitosamente'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Ver',
              onPressed: () {
                Navigator.of(context).pushNamed('/calendar');
              },
            ),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
      print('Error cargando eventos: $e');
    }
  }
}
