import 'package:flutter/material.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';

// ============================================================================
// DIÁLOGO - Registrar mantenimiento
// ============================================================================

class RegistrarMantenimientoDialog extends StatefulWidget {
  final Function(
    String tipo,
    String descripcion,
    DateTime fecha,
    String? veterinario,
    String? medicamento,
    String? dosisAplicada,
    String? rutaAplicacion,
    DateTime? proximaDosis,
    String? observaciones,
  ) onConfirm;

  const RegistrarMantenimientoDialog({required this.onConfirm, super.key});

  @override
  State<RegistrarMantenimientoDialog> createState() =>
      _RegistrarMantenimientoDialogState();
}

class _RegistrarMantenimientoDialogState
    extends State<RegistrarMantenimientoDialog> {
  final _tiposMantenimiento = [
    'Vacunacion',
    'Desparasitacion',
    'Tratamiento',
    'Curacion',
    'Medicacion',
    'Otro'
  ];
  final _rutasAplicacion = [
    'Intramuscular',
    'Intravenosa',
    'Oral',
    'Tópica',
    'Otro'
  ];

  String _tipoSeleccionado = 'Vacunacion';
  DateTime _fecha = DateTime.now();
  final _descripcionController = TextEditingController();
  final _veterinarioController = TextEditingController();
  final _medicamentoController = TextEditingController();
  final _dosisController = TextEditingController();
  String? _rutaSeleccionada;
  DateTime? _proximaDosis;
  final _observacionesController = TextEditingController();

  @override
  void dispose() {
    _descripcionController.dispose();
    _veterinarioController.dispose();
    _medicamentoController.dispose();
    _dosisController.dispose();
    _observacionesController.dispose();
    super.dispose();
  }

  void _selectFecha() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _fecha,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() => _fecha = picked);
    }
  }

  void _selectProximaDosis() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _proximaDosis ?? DateTime.now().add(Duration(days: 365)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => _proximaDosis = picked);
    }
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
                'Registrar Mantenimiento Sanitario',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Tipo de mantenimiento
              const Text('Tipo de Mantenimiento *',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: _tipoSeleccionado,
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: _tiposMantenimiento.map((tipo) {
                    return DropdownMenuItem(
                      value: tipo,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(tipo),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => _tipoSeleccionado = value ?? 'Vacunacion');
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Descripción
              TextField(
                controller: _descripcionController,
                decoration: InputDecoration(
                  labelText: 'Descripción *',
                  hintText: 'Ej: Vacuna contra fiebre aftosa',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 12),

              // Fecha
              GestureDetector(
                onTap: _selectFecha,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fecha',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${_fecha.day}/${_fecha.month}/${_fecha.year}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(Icons.calendar_today),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Veterinario
              TextField(
                controller: _veterinarioController,
                decoration: InputDecoration(
                  labelText: 'Veterinario (opcional)',
                  hintText: 'Nombre del profesional',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 12),

              // Medicamento
              TextField(
                controller: _medicamentoController,
                decoration: InputDecoration(
                  labelText: 'Medicamento (opcional)',
                  hintText: 'Nombre del medicamento',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 12),

              // Dosis
              TextField(
                controller: _dosisController,
                decoration: InputDecoration(
                  labelText: 'Dosis Aplicada (opcional)',
                  hintText: 'Ej: 5ml',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(height: 12),

              // Ruta de aplicación
              const Text('Ruta de Aplicación (opcional)',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: _rutaSeleccionada,
                  hint: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Selecciona ruta'),
                  ),
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: _rutasAplicacion.map((ruta) {
                    return DropdownMenuItem(
                      value: ruta,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(ruta),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => _rutaSeleccionada = value);
                  },
                ),
              ),
              const SizedBox(height: 12),

              // Próxima dosis
              GestureDetector(
                onTap: _selectProximaDosis,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _proximaDosis != null
                          ? Colors.green
                          : Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Próxima Dosis (opcional)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _proximaDosis == null
                                ? 'Sin especificar'
                                : '${_proximaDosis!.day}/${_proximaDosis!.month}/${_proximaDosis!.year}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(Icons.calendar_today),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Observaciones
              TextField(
                controller: _observacionesController,
                decoration: InputDecoration(
                  labelText: 'Observaciones (opcional)',
                  hintText: 'Notas adicionales',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
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
                    onPressed: _descripcionController.text.isEmpty
                        ? null
                        : () {
                            widget.onConfirm(
                              _tipoSeleccionado,
                              _descripcionController.text,
                              _fecha,
                              _veterinarioController.text.isEmpty
                                  ? null
                                  : _veterinarioController.text,
                              _medicamentoController.text.isEmpty
                                  ? null
                                  : _medicamentoController.text,
                              _dosisController.text.isEmpty
                                  ? null
                                  : _dosisController.text,
                              _rutaSeleccionada,
                              _proximaDosis,
                              _observacionesController.text.isEmpty
                                  ? null
                                  : _observacionesController.text,
                            );
                            Navigator.pop(context);
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade700,
                    ),
                    child: const Text('Registrar'),
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
// CARD - Evento de mantenimiento
// ============================================================================

class MantenimientoCard extends StatelessWidget {
  final EventoMantenimiento evento;
  final VoidCallback? onTap;

  const MantenimientoCard({
    required this.evento,
    this.onTap,
    super.key,
  });

  IconData _getIcono(String tipo) {
    switch (tipo.toLowerCase()) {
      case 'vacunacion':
        return Icons.vaccines;
      case 'desparasitacion':
        return Icons.medical_services;
      case 'tratamiento':
        return Icons.healing;
      case 'curacion':
        return Icons.note;
      case 'medicacion':
        return Icons.medication;
      default:
        return Icons.event_available;
    }
  }

  Color _getColor(String tipo) {
    switch (tipo.toLowerCase()) {
      case 'vacunacion':
        return Colors.blue;
      case 'desparasitacion':
        return Colors.orange;
      case 'tratamiento':
        return Colors.red;
      case 'curacion':
        return Colors.green;
      case 'medicacion':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  String _formatearFecha(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = hoy.difference(fecha);

    if (diferencia.inDays == 0) {
      return 'Hoy';
    } else if (diferencia.inDays == 1) {
      return 'Ayer';
    } else if (diferencia.inDays < 30) {
      return 'Hace ${diferencia.inDays} dias';
    } else {
      return '${fecha.day}/${fecha.month}/${fecha.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: _getColor(evento.descripcion).withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              _getIcono(evento.descripcion),
              color: _getColor(evento.descripcion),
            ),
          ),
        ),
        title: Text(evento.descripcion),
        subtitle: Text(
          _formatearFecha(evento.fecha),
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
        ),
        trailing: evento.proximaDosis != null
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Proximo',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.amber.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
        onTap: onTap,
      ),
    );
  }
}

// ============================================================================
// ALERTA - Próxima dosis
// ============================================================================

class AlertaProximaDosisWidget extends StatelessWidget {
  final EventoMantenimiento evento;

  const AlertaProximaDosisWidget({required this.evento, super.key});

  String _diasRestantes() {
    final ahora = DateTime.now();
    if (evento.proximaDosis == null) return '';
    final diferencia = evento.proximaDosis!.difference(ahora);
    if (diferencia.inDays < 0) return 'VENCIDA';
    if (diferencia.inDays == 0) return 'HOY';
    return 'En ${diferencia.inDays} dias';
  }

  Color _getColor() {
    final ahora = DateTime.now();
    if (evento.proximaDosis == null) return Colors.transparent;
    final diferencia = evento.proximaDosis!.difference(ahora);
    if (diferencia.inDays < 0) return Colors.red;
    if (diferencia.inDays <= 7) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    if (evento.proximaDosis == null) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _getColor().withOpacity(0.1),
        border: Border.all(color: _getColor()),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.warning_amber, color: _getColor()),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Próxima dosis: ${evento.descripcion}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  _diasRestantes(),
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
