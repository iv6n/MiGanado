import 'package:flutter/material.dart';
import 'package:miganado/features/locations/domain/entities/ubicacion.dart';

// ============================================================================
// DIÁLOGO - Cambiar ubicación
// ============================================================================

class CambiarUbicacionDialog extends StatefulWidget {
  final String ubicacionActual;
  final List<Ubicacion> ubicacionesDisponibles;
  final Function(String ubicacionUuid, String? razon, String? observaciones)
      onConfirm;

  const CambiarUbicacionDialog({
    required this.ubicacionActual,
    required this.ubicacionesDisponibles,
    required this.onConfirm,
    super.key,
  });

  @override
  State<CambiarUbicacionDialog> createState() => _CambiarUbicacionDialogState();
}

class _CambiarUbicacionDialogState extends State<CambiarUbicacionDialog> {
  String? _ubicacionSeleccionada;
  final _razonController = TextEditingController();
  final _observacionesController = TextEditingController();

  @override
  void dispose() {
    _razonController.dispose();
    _observacionesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título
              const Text(
                'Cambiar Ubicación',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Ubicación actual
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue.shade700),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ubicación Actual',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue.shade600,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            widget.ubicacionActual,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Selector de nueva ubicación
              const Text(
                'Nueva Ubicación',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: _ubicacionSeleccionada,
                  hint: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Selecciona una ubicación'),
                  ),
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: widget.ubicacionesDisponibles
                      .where((u) => u.name != widget.ubicacionActual)
                      .map((ubicacion) {
                    return DropdownMenuItem(
                      value: ubicacion.uuid,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(ubicacion.name),
                            if (ubicacion.type != null)
                              Text(
                                ubicacion.type!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => _ubicacionSeleccionada = value);
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Razón (opcional)
              TextField(
                controller: _razonController,
                decoration: InputDecoration(
                  labelText: 'Razón del cambio (opcional)',
                  hintText: 'Ej: Necesita pasto fresco',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 12),

              // Observaciones (opcional)
              TextField(
                controller: _observacionesController,
                decoration: InputDecoration(
                  labelText: 'Observaciones (opcional)',
                  hintText: 'Notas adicionales',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 20),

              // Botones
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _ubicacionSeleccionada == null
                        ? null
                        : () {
                            widget.onConfirm(
                              _ubicacionSeleccionada!,
                              _razonController.text.isEmpty
                                  ? null
                                  : _razonController.text,
                              _observacionesController.text.isEmpty
                                  ? null
                                  : _observacionesController.text,
                            );
                            Navigator.pop(context);
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                    ),
                    child: const Text('Cambiar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// DIÁLOGO - Crear ubicación
// ============================================================================

class CrearUbicacionDialog extends StatefulWidget {
  final Function(String nombre, String? descripcion, String? tipo) onConfirm;

  const CrearUbicacionDialog({required this.onConfirm, super.key});

  @override
  State<CrearUbicacionDialog> createState() => _CrearUbicacionDialogState();
}

class _CrearUbicacionDialogState extends State<CrearUbicacionDialog> {
  final _nombreController = TextEditingController();
  final _descripcionController = TextEditingController();
  String? _tipoSeleccionado;

  final _tiposUbicacion = ['Potrero', 'Establo', 'Corral', 'Aguada', 'Otro'];

  @override
  void dispose() {
    _nombreController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Crear Nueva Ubicación',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Nombre
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre de la ubicación *',
                  hintText: 'Ej: Potrero Norte',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Tipo
              const Text(
                'Tipo de ubicación',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: _tipoSeleccionado,
                  hint: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Selecciona tipo'),
                  ),
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: _tiposUbicacion.map((tipo) {
                    return DropdownMenuItem(
                      value: tipo,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(tipo),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => _tipoSeleccionado = value);
                  },
                ),
              ),
              const SizedBox(height: 12),

              // Descripción
              TextField(
                controller: _descripcionController,
                decoration: InputDecoration(
                  labelText: 'Descripción (opcional)',
                  hintText: 'Detalles de la ubicación',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 20),

              // Botones
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _nombreController.text.isEmpty
                        ? null
                        : () {
                            widget.onConfirm(
                              _nombreController.text.trim(),
                              _descripcionController.text.isEmpty
                                  ? null
                                  : _descripcionController.text.trim(),
                              _tipoSeleccionado,
                            );
                            Navigator.pop(context);
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                    ),
                    child: const Text('Crear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// CARD - Ubicación
// ============================================================================

class UbicacionListItem extends StatelessWidget {
  final Ubicacion ubicacion;
  final VoidCallback? onTap;

  const UbicacionListItem({
    required this.ubicacion,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.purple.shade100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.location_on,
              color: Colors.purple.shade700,
            ),
          ),
        ),
        title: Text(ubicacion.name),
        subtitle: Text(
          ubicacion.type ?? 'Sin especificar',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
        ),
        onTap: onTap,
      ),
    );
  }
}
