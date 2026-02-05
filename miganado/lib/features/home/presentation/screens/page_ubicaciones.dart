import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';

class PageUbicaciones extends ConsumerWidget {
  const PageUbicaciones({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.locationsScreenTitle),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SizedBox(height: 8),
          _UbicacionCard('Corral Principal', 15, Icons.location_on),
          _UbicacionCard('Potrero Sur', 8, Icons.landscape),
          _UbicacionCard('Establo', 12, Icons.house),
          _UbicacionCard('Potrero Norte', 6, Icons.landscape),
        ],
      ),
    );
  }
}

class _UbicacionCard extends StatelessWidget {
  final String nombre;
  final int animales;
  final IconData icon;

  const _UbicacionCard(this.nombre, this.animales, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.green, size: 32),
        title:
            Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$animales animales'),
        trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
