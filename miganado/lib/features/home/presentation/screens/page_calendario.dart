import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageCalendario extends ConsumerWidget {
  const PageCalendario({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          // Placeholder para calendario
          Container(
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[100],
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today, size: 64, color: Colors.green),
                  SizedBox(height: 16),
                  Text(
                    'Calendario de Mantenimiento',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Próximamente disponible',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            'Próximas Tareas',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Alertas
          _AlertTile('Vacunación', 'Becerra #1023', AlertaTipo.rojo),
          _AlertTile('Desparasitación', 'Vaca #456', AlertaTipo.amarillo),
          _AlertTile('Pesaje', 'Novillo #789', AlertaTipo.verde),
        ],
      ),
    );
  }
}

class _AlertTile extends StatelessWidget {
  final String tarea;
  final String animal;
  final AlertaTipo tipo;

  const _AlertTile(this.tarea, this.animal, this.tipo);

  Color _getColor() {
    switch (tipo) {
      case AlertaTipo.rojo:
        return Colors.red;
      case AlertaTipo.amarillo:
        return Colors.orange;
      case AlertaTipo.verde:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getColor(),
          radius: 12,
          child: Icon(
            Icons.circle,
            color: _getColor(),
            size: 12,
          ),
        ),
        title: Text(tarea, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(animal),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}

enum AlertaTipo { rojo, amarillo, verde }
