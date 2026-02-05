import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';

class PagePerfil extends ConsumerWidget {
  const PagePerfil({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profileGanaderTitle),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          // Datos personales
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Datos Personales',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _ProfileField('Nombre', 'Tu Nombre'),
                  Divider(),
                  _ProfileField('Teléfono', '+57 XXX XXX XXXX'),
                  Divider(),
                  _ProfileField('Correo', 'correo@example.com'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Configuración
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Configuración',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SwitchListTile(
                    title: const Text('Notificaciones'),
                    value: true,
                    onChanged: (value) {},
                    contentPadding: EdgeInsets.zero,
                  ),
                  SwitchListTile(
                    title: const Text('Sincronización en la nube'),
                    value: false,
                    onChanged: (value) {},
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Reportes
          Card(
            child: ListTile(
              leading: const Icon(Icons.assessment, color: Colors.green),
              title: const Text('Costos y Reportes'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 16),
          // Versión
          Center(
            child: Text(
              'MiGanado v1.0.0',
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileField(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(value, style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
