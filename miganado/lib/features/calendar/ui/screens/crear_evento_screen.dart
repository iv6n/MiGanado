import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/providers/calendar_providers.dart';

/// Screen para crear un evento
class CrearEventoScreen extends ConsumerStatefulWidget {
  const CrearEventoScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CrearEventoScreen> createState() => _CrearEventoScreenState();
}

class _CrearEventoScreenState extends ConsumerState<CrearEventoScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descripcionController;

  CategoriaEvento? _categoriaSeleccionada;

  // Tipos de evento según categoría
  EventoSanitario _tipoSanitario = EventoSanitario.vacunacion;
  EventoReproductivo _tipoReproductivo =
      EventoReproductivo.inseminacionArtificial;
  EventoProductivo _tipoProductivo = EventoProductivo.pesaje;
  EventoAmbiental _tipoAmbiental = EventoAmbiental.limpiezaInstalacion;

  PrioridadEvento _prioridadSeleccionada = PrioridadEvento.media;
  EstadoEvento _estadoSeleccionado = EstadoEvento.pendiente;
  DateTime? _fechaSeleccionada;
  TimeOfDay? _horaSeleccionada;
  bool _esRecurrente = false;
  String? _patronRecurrencia;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descripcionController = TextEditingController();
    _fechaSeleccionada = DateTime.now();
    _horaSeleccionada = TimeOfDay.now();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  Future<void> _seleccionarFecha() async {
    final fecha = await showDatePicker(
      context: context,
      initialDate: _fechaSeleccionada ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (fecha != null) {
      setState(() {
        _fechaSeleccionada = fecha;
      });
    }
  }

  Future<void> _seleccionarHora() async {
    final hora = await showTimePicker(
      context: context,
      initialTime: _horaSeleccionada ?? TimeOfDay.now(),
    );
    if (hora != null) {
      setState(() {
        _horaSeleccionada = hora;
      });
    }
  }

  Future<void> _guardarEvento() async {
    if (_titleController.text.isEmpty || _categoriaSeleccionada == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Por favor completa todos los campos requeridos')),
      );
      return;
    }

    final fechaEvento = DateTime(
      _fechaSeleccionada?.year ?? DateTime.now().year,
      _fechaSeleccionada?.month ?? DateTime.now().month,
      _fechaSeleccionada?.day ?? DateTime.now().day,
      _horaSeleccionada?.hour ?? 0,
      _horaSeleccionada?.minute ?? 0,
    );

    // Crear el evento
    final evento = EventoGanaderoEntity(
      titulo: _titleController.text,
      descripcion: _descripcionController.text,
      categoria: _categoriaSeleccionada!,
      tipoSanitario: _tipoSanitario,
      tipoReproductivo: _tipoReproductivo,
      tipoProductivo: _tipoProductivo,
      tipoAmbiental: _tipoAmbiental,
      prioridad: _prioridadSeleccionada,
      estado: _estadoSeleccionado,
      fechaProgramada: fechaEvento,
    )
      ..esRecurrente = _esRecurrente
      ..patronRecurrencia = _patronRecurrencia
      ..fechaCreacion = DateTime.now()
      ..fechaActualizacion = DateTime.now();

    // Mostrar indicador de carga
    if (mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Guardar el evento
    try {
      await ref.read(crearEventoProvider(evento).future);

      if (mounted) {
        Navigator.of(context).pop(); // Cerrar diálogo de carga
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('✓ Evento "${evento.titulo}" creado correctamente'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.of(context).pop(); // Cerrar pantalla de crear evento
      }
    } catch (e) {
      if (mounted) {
        Navigator.of(context).pop(); // Cerrar diálogo de carga
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('✗ Error al crear evento: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('➕ Crear Evento'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            _buildSeccion('Título *', [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Ej: Vacunación de terneros',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ]),

            const SizedBox(height: 24),

            // Categoría
            _buildSeccion('Categoría *', [
              DropdownButton<CategoriaEvento>(
                isExpanded: true,
                value: _categoriaSeleccionada,
                hint: const Text('Selecciona una categoría'),
                items: CategoriaEvento.values.map((cat) {
                  return DropdownMenuItem(
                    value: cat,
                    child: Text(cat.nombreLegible),
                  );
                }).toList(),
                onChanged: (categoria) {
                  setState(() {
                    _categoriaSeleccionada = categoria;
                  });
                },
              ),
            ]),

            const SizedBox(height: 24),

            // Tipo de evento dinámico según categoría
            if (_categoriaSeleccionada != null)
              _buildSeccion('Tipo de Evento', [
                _buildTipoEventoDropdown(),
              ]),

            const SizedBox(height: 24),

            // Prioridad y Estado
            _buildSeccion('Prioridad y Estado', [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Prioridad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        DropdownButton<PrioridadEvento>(
                          isExpanded: true,
                          value: _prioridadSeleccionada,
                          items: PrioridadEvento.values.map((p) {
                            return DropdownMenuItem(
                              value: p,
                              child: Text(p.nombreLegible),
                            );
                          }).toList(),
                          onChanged: (p) {
                            setState(() {
                              _prioridadSeleccionada =
                                  p ?? PrioridadEvento.media;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Estado',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        DropdownButton<EstadoEvento>(
                          isExpanded: true,
                          value: _estadoSeleccionado,
                          items: EstadoEvento.values.map((e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(e.nombreLegible),
                            );
                          }).toList(),
                          onChanged: (e) {
                            setState(() {
                              _estadoSeleccionado = e ?? EstadoEvento.pendiente;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),

            const SizedBox(height: 24),

            // Fecha y Hora
            _buildSeccion('Fecha y Hora', [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: _seleccionarFecha,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today,
                                color: Colors.blue),
                            const SizedBox(width: 8),
                            Text(
                              _fechaSeleccionada != null
                                  ? '${_fechaSeleccionada!.day}/${_fechaSeleccionada!.month}/${_fechaSeleccionada!.year}'
                                  : 'Selecciona fecha',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: _seleccionarHora,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.access_time, color: Colors.blue),
                            const SizedBox(width: 8),
                            Text(
                              _horaSeleccionada != null
                                  ? '${_horaSeleccionada!.hour.toString().padLeft(2, '0')}:${_horaSeleccionada!.minute.toString().padLeft(2, '0')}'
                                  : 'Selecciona hora',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),

            const SizedBox(height: 24),

            // Recurrencia
            _buildSeccion('Recurrencia', [
              CheckboxListTile(
                title: const Text('¿Este evento se repite?'),
                value: _esRecurrente,
                onChanged: (v) {
                  setState(() {
                    _esRecurrente = v ?? false;
                  });
                },
              ),
              if (_esRecurrente)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    onChanged: (v) {
                      setState(() {
                        _patronRecurrencia = v;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Ej: cada 30 días, mensual, trimestral',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
            ]),

            const SizedBox(height: 24),

            // Descripción
            _buildSeccion('Descripción', [
              TextField(
                controller: _descripcionController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Describe el evento en detalle',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ]),

            const SizedBox(height: 32),

            // Botones
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancelar'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _guardarEvento,
                    child: const Text('Crear Evento'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildTipoEventoDropdown() {
    switch (_categoriaSeleccionada!) {
      case CategoriaEvento.sanitaria:
        return DropdownButton<EventoSanitario>(
          isExpanded: true,
          value: _tipoSanitario,
          items: EventoSanitario.values.map((tipo) {
            return DropdownMenuItem(
              value: tipo,
              child: Text(tipo.nombreLegible),
            );
          }).toList(),
          onChanged: (tipo) {
            setState(() {
              _tipoSanitario = tipo ?? EventoSanitario.vacunacion;
            });
          },
        );
      case CategoriaEvento.reproductiva:
        return DropdownButton<EventoReproductivo>(
          isExpanded: true,
          value: _tipoReproductivo,
          items: EventoReproductivo.values.map((tipo) {
            return DropdownMenuItem(
              value: tipo,
              child: Text(tipo.nombreLegible),
            );
          }).toList(),
          onChanged: (tipo) {
            setState(() {
              _tipoReproductivo =
                  tipo ?? EventoReproductivo.inseminacionArtificial;
            });
          },
        );
      case CategoriaEvento.productiva:
        return DropdownButton<EventoProductivo>(
          isExpanded: true,
          value: _tipoProductivo,
          items: EventoProductivo.values.map((tipo) {
            return DropdownMenuItem(
              value: tipo,
              child: Text(tipo.nombreLegible),
            );
          }).toList(),
          onChanged: (tipo) {
            setState(() {
              _tipoProductivo = tipo ?? EventoProductivo.pesaje;
            });
          },
        );
      case CategoriaEvento.ambiental:
        return DropdownButton<EventoAmbiental>(
          isExpanded: true,
          value: _tipoAmbiental,
          items: EventoAmbiental.values.map((tipo) {
            return DropdownMenuItem(
              value: tipo,
              child: Text(tipo.nombreLegible),
            );
          }).toList(),
          onChanged: (tipo) {
            setState(() {
              _tipoAmbiental = tipo ?? EventoAmbiental.limpiezaInstalacion;
            });
          },
        );
    }
  }

  Widget _buildSeccion(String titulo, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }
}
