import 'package:flutter/material.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';

/// Formulario para editar datos del ganadero
class GanaderoFormWidget extends StatefulWidget {
  final GanaderoEntity ganadero;
  final Function(GanaderoEntity) onSave;
  final bool isLoading;

  const GanaderoFormWidget({
    required this.ganadero,
    required this.onSave,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  State<GanaderoFormWidget> createState() => _GanaderoFormWidgetState();
}

class _GanaderoFormWidgetState extends State<GanaderoFormWidget> {
  late TextEditingController _nombreController;
  late TextEditingController _telefonoController;
  late TextEditingController _emailController;
  late TextEditingController _ubicacionController;
  late TextEditingController _notasController;
  late TextEditingController _cantidadAnimalesController;

  String? _tipoProduccion;

  @override
  void initState() {
    super.initState();
    _nombreController = TextEditingController(text: widget.ganadero.nombre);
    _telefonoController =
        TextEditingController(text: widget.ganadero.telefono ?? '');
    _emailController = TextEditingController(text: widget.ganadero.email ?? '');
    _ubicacionController =
        TextEditingController(text: widget.ganadero.ubicacion ?? '');
    _notasController = TextEditingController(text: widget.ganadero.notas ?? '');
    _cantidadAnimalesController = TextEditingController(
        text: widget.ganadero.cantidadAnimales?.toString() ?? '');
    _tipoProduccion = widget.ganadero.tipoProduccion;
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _telefonoController.dispose();
    _emailController.dispose();
    _ubicacionController.dispose();
    _notasController.dispose();
    _cantidadAnimalesController.dispose();
    super.dispose();
  }

  void _handleSave() {
    if (_nombreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El nombre es requerido')),
      );
      return;
    }

    final updatedGanadero = widget.ganadero.copyWith(
      nombre: _nombreController.text,
      telefono:
          _telefonoController.text.isEmpty ? null : _telefonoController.text,
      correo: _emailController.text.isEmpty ? null : _emailController.text,
      ubicacion:
          _ubicacionController.text.isEmpty ? null : _ubicacionController.text,
      notas: _notasController.text.isEmpty ? null : _notasController.text,
      tipoProduccion: _tipoProduccion,
    );

    widget.onSave(updatedGanadero);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nombre
            TextField(
              controller: _nombreController,
              enabled: !widget.isLoading,
              decoration: InputDecoration(
                labelText: 'Nombre del Ganadero',
                hintText: 'Ej: Juan López',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Teléfono
            TextField(
              controller: _telefonoController,
              enabled: !widget.isLoading,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Teléfono',
                hintText: 'Ej: +57 300 1234567',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Email
            TextField(
              controller: _emailController,
              enabled: !widget.isLoading,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Ej: juan@example.com',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Ubicación
            TextField(
              controller: _ubicacionController,
              enabled: !widget.isLoading,
              decoration: InputDecoration(
                labelText: 'Ubicación de la Granja',
                hintText: 'Ej: Vereda El Roble, Ciénaga - Magdalena',
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Tipo de Producción
            DropdownButtonFormField<String>(
              value: _tipoProduccion,
              decoration: InputDecoration(
                labelText: 'Tipo de Producción',
                prefixIcon: const Icon(Icons.category),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              items: [
                'Lechero',
                'Carne',
                'Doble Propósito',
                'Reproductor',
                'Mixto',
              ]
                  .map((type) => DropdownMenuItem(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: !widget.isLoading
                  ? (value) {
                      setState(() {
                        _tipoProduccion = value;
                      });
                    }
                  : null,
            ),
            const SizedBox(height: 16),

            // Cantidad de Animales
            TextField(
              controller: _cantidadAnimalesController,
              enabled: !widget.isLoading,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad de Animales (aproximado)',
                hintText: 'Ej: 50',
                prefixIcon: const Icon(Icons.pets),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Notas
            TextField(
              controller: _notasController,
              enabled: !widget.isLoading,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Notas Adicionales',
                hintText: 'Información extra sobre tu operación ganadera',
                prefixIcon: const Icon(Icons.note),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Botón Guardar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: widget.isLoading ? null : _handleSave,
                icon: const Icon(Icons.save),
                label: widget.isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Guardar Cambios'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.green.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
