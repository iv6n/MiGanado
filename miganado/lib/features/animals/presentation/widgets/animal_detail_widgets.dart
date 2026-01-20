import 'package:flutter/material.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/animal_detail.dart';

// ============================================================================
// HEADER - Encabezado del animal
// ============================================================================

class AnimalDetailHeader extends StatelessWidget {
  final Animal animal;

  const AnimalDetailHeader({required this.animal, super.key});

  /// Obtener asset icon del tipo de ganado/etapa
  String _getTipoGanadoAsset() {
    return animal.etapaIcon;
  }

  /// Obtener color según sexo
  Color _getSexoColor() {
    switch (animal.sexo.name.toLowerCase()) {
      case 'macho':
        return Colors.blue;
      case 'hembra':
        return Colors.pink;
      default:
        return Colors.grey;
    }
  }

  /// Obtener badge de sexo
  String _getSexoBadge() {
    switch (animal.sexo.name.toLowerCase()) {
      case 'macho':
        return '♂ Macho';
      case 'hembra':
        return '♀ Hembra';
      default:
        return 'Desconocido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade600,
            Colors.green.shade800,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  _getTipoGanadoAsset(),
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      Icons.pets,
                      size: 32,
                      color: Colors.white,
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.nombrePersonalizado ?? 'Animal',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Arete: ${animal.numeroArete}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            children: [
              _Badge(
                label: _getSexoBadge(),
                backgroundColor: _getSexoColor(),
              ),
              _Badge(
                label: animal.raza,
                backgroundColor: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// CARD - Datos generales (dinámico por especie)
// ============================================================================

class DatosGeneralesCard extends StatelessWidget {
  final Animal animal;

  const DatosGeneralesCard({required this.animal, super.key});

  bool get _esBovinoOEquino =>
      animal.especie.toString().contains('bovino') ||
      animal.especie.toString().contains('equino');

  bool get _esEquino => animal.especie.toString().contains('equino');

  bool get _esBovinohembra => !_esEquino && animal.sexo.name == 'hembra';

  bool get _esMacho => animal.sexo.name == 'macho';

  /// Calcula la etapa de vida basada en edad en meses (SOLO para bovinos)
  String _calcularEtapa() {
    if (animal.edadMeses < 12) {
      return animal.sexo.name == 'macho' ? 'Becerro' : 'Becerra';
    } else if (animal.edadMeses < 24) {
      if (animal.sexo.name == 'hembra') {
        return 'Vaquilla';
      }
      return animal.esCastrado ? 'Novillo' : 'Torete';
    } else {
      return animal.sexo.name == 'hembra' ? 'Vaca' : 'Toro';
    }
  }

  String _calcularEdadFormato() {
    if (animal.edadMeses < 12) {
      return '${animal.edadMeses} meses';
    }

    final anios = (animal.edadMeses / 12).floor();
    final mesesResto = animal.edadMeses % 12;

    if (mesesResto == 0) {
      return '$anios ${anios == 1 ? 'año' : 'años'}';
    }
    return '$anios ${anios == 1 ? 'año' : 'años'} $mesesResto meses';
  }

  /// Obtiene estado de castración
  String _getEstadoCastrado() {
    return animal.esCastrado ? 'Sí' : 'No';
  }

  /// Obtiene descripción del ciclo reproductivo
  String _getEstadoReproductivo() {
    final estado = animal.estadoReproductivo?.toString() ?? 'no_definido';

    if (estado.contains('lactando')) return 'Lactando';
    if (estado.contains('prenada')) return 'Preñada';
    if (estado.contains('parida')) return 'Parida';
    if (estado.contains('secando')) return 'Secando';
    if (estado.contains('vacia')) return 'Vacía';
    return 'No definido';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Datos Generales',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 16),

            // Fila 1: Arete y (Etapa para bovinos / Castrado para equinos)
            Row(
              children: [
                Expanded(
                  child: _DatosField(
                    label: 'Arete',
                    valor: animal.numeroArete,
                    icono: Icons.tag,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _DatosField(
                    label: _esEquino ? 'Castrado' : 'Etapa',
                    valor: _esEquino ? _getEstadoCastrado() : _calcularEtapa(),
                    icono: _esEquino
                        ? Icons.check_circle_outline
                        : Icons.info_outline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Fila 2: Raza
            Row(
              children: [
                Expanded(
                  child: _DatosField(
                    label: 'Raza',
                    valor: animal.raza,
                    icono: Icons.pets,
                  ),
                ),
                const SizedBox(width: 16),
                if (!_esEquino) ...[
                  const SizedBox(height: 16),
                  if (_esMacho) ...[
                    Expanded(
                      child: _DatosField(
                        label: 'Castrado',
                        valor: _getEstadoCastrado(),
                        icono: Icons.check_circle_outline,
                      ),
                    ),
                  ] else if (_esBovinohembra) ...[
                    Expanded(
                      child: _DatosField(
                        label: 'Ciclo',
                        valor: _getEstadoReproductivo(),
                        icono: Icons.favorite,
                      ),
                    ),
                  ],
                ],
              ],
            ),
            const SizedBox(height: 16),

            // Fila 3: Edad y Fecha de Nacimiento
            Row(
              children: [
                Expanded(
                  child: _DatosField(
                    label: 'Edad',
                    valor: _calcularEdadFormato(),
                    icono: Icons.cake,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _DatosField(
                    label: 'Nac.',
                    valor:
                        '${animal.fechaNacimiento.day}/${animal.fechaNacimiento.month}/${animal.fechaNacimiento.year}',
                    icono: Icons.calendar_today,
                  ),
                ),
              ],
            ),

            // Fila 4: Castrado (solo para machos bovinos) + Ciclo (solo para hembras bovinas)

            // Fila 5: Peso y Fecha Pesaje
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _DatosField(
                    label: 'Peso',
                    valor: animal.pesoActual != null
                        ? '${animal.pesoActual} kg'
                        : 'No registrado',
                    icono: Icons.scale,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _DatosField(
                    label: 'Ult. Pesaje',
                    valor: animal.fechaUltimoPesaje != null
                        ? '${animal.fechaUltimoPesaje?.day}/${animal.fechaUltimoPesaje?.month}/${animal.fechaUltimoPesaje?.year}'
                        : 'Sin datos',
                    icono: Icons.date_range,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// WIDGET - Campo de datos con iconos
// ============================================================================

class _DatosField extends StatelessWidget {
  final String label;
  final String valor;
  final IconData icono;

  const _DatosField({
    required this.label,
    required this.valor,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icono, size: 18, color: Colors.green.shade700),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          valor,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// WIDGET - Fila de datos (deprecated, replaced by _DatosField)
// ============================================================================

class _DatosRow extends StatelessWidget {
  final String label;
  final String valor;
  final IconData icono;
  final bool esUltimo;

  const _DatosRow({
    required this.label,
    required this.valor,
    required this.icono,
    this.esUltimo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Icon(icono, size: 20, color: Colors.green.shade700),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      valor,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!esUltimo) const Divider(height: 16),
      ],
    );
  }
}

// ============================================================================
// CARD - Ubicación actual
// ============================================================================

class UbicacionCard extends StatelessWidget {
  final String? ubicacion;
  final VoidCallback? onCambiarUbicacion;

  const UbicacionCard({
    this.ubicacion,
    this.onCambiarUbicacion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.purple),
                const SizedBox(width: 8),
                const Text(
                  'Ubicación Actual',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                ubicacion ?? 'Sin asignar',
                style: TextStyle(
                  fontSize: 14,
                  color: ubicacion == null ? Colors.grey : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onCambiarUbicacion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Cambiar Ubicación'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// CARD - Observaciones editable
// ============================================================================

class ObservacionesCard extends StatefulWidget {
  final String? observaciones;
  final VoidCallback? onEditingComplete;
  final Function(String)? onChanged;
  final bool isLoading;

  const ObservacionesCard({
    this.observaciones,
    this.onEditingComplete,
    this.onChanged,
    this.isLoading = false,
    super.key,
  });

  @override
  State<ObservacionesCard> createState() => _ObservacionesCardState();
}

class _ObservacionesCardState extends State<ObservacionesCard> {
  late TextEditingController _controller;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.observaciones ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Observaciones',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (_isEditing)
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: widget.isLoading
                        ? const CircularProgressIndicator(strokeWidth: 2)
                        : null,
                  ),
              ],
            ),
            const Divider(height: 16),
            if (!_isEditing)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: GestureDetector(
                  onTap: () {
                    setState(() => _isEditing = true);
                  },
                  child: Text(
                    widget.observaciones?.isEmpty ?? true
                        ? 'Sin observaciones. Toca para agregar...'
                        : widget.observaciones!,
                    style: TextStyle(
                      fontSize: 14,
                      color: (widget.observaciones?.isEmpty ?? true)
                          ? Colors.grey
                          : Colors.black,
                    ),
                  ),
                ),
              )
            else
              Column(
                children: [
                  TextField(
                    controller: _controller,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Escribe tus observaciones...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.all(12),
                    ),
                    onChanged: widget.onChanged,
                    enabled: !widget.isLoading,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: !widget.isLoading
                            ? () {
                                _controller.text = widget.observaciones ?? '';
                                setState(() => _isEditing = false);
                              }
                            : null,
                        child: const Text('Cancelar'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: !widget.isLoading
                            ? () {
                                widget.onEditingComplete?.call();
                                setState(() => _isEditing = false);
                              }
                            : null,
                        child: widget.isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text('Guardar'),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// ACCIONES RÁPIDAS
// ============================================================================

class AccionesRapidasCard extends StatelessWidget {
  final VoidCallback? onPesaje;
  final VoidCallback? onMantenimiento;
  final VoidCallback? onCosto;
  final VoidCallback? onFoto;
  final VoidCallback? onVacuna;
  final VoidCallback? onTratamiento;
  final VoidCallback? onNutricion;
  final VoidCallback? onHistorialVacunas;
  final VoidCallback? onHistorialTratamientos;
  final VoidCallback? onHistorialNutricion;
  final VoidCallback? onHistorialDesparasitaciones;
  final VoidCallback? onEmpadre;
  final VoidCallback? onParto;
  final VoidCallback? onHistorialReproductivo;
  final VoidCallback? onGenerarReporte;

  const AccionesRapidasCard({
    this.onPesaje,
    this.onMantenimiento,
    this.onCosto,
    this.onFoto,
    this.onVacuna,
    this.onTratamiento,
    this.onNutricion,
    this.onHistorialVacunas,
    this.onHistorialTratamientos,
    this.onHistorialNutricion,
    this.onHistorialDesparasitaciones,
    this.onEmpadre,
    this.onParto,
    this.onHistorialReproductivo,
    this.onGenerarReporte,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acciones Rápidas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _AccionRapidaButton(
                  icono: Icons.scale,
                  label: 'Pesaje',
                  color: Colors.blue,
                  onPressed: onPesaje,
                ),
                _AccionRapidaButton(
                  icono: Icons.medical_services,
                  label: 'Mantenimiento',
                  color: Colors.red,
                  onPressed: onMantenimiento,
                ),
                _AccionRapidaButton(
                  icono: Icons.attach_money,
                  label: 'Costo',
                  color: Colors.orange,
                  onPressed: onCosto,
                ),
                _AccionRapidaButton(
                  icono: Icons.photo_camera,
                  label: 'Foto',
                  color: Colors.purple,
                  onPressed: onFoto,
                ),
                _AccionRapidaButton(
                  icono: Icons.vaccines,
                  label: 'Vacuna',
                  color: Colors.teal,
                  onPressed: onVacuna,
                ),
                _AccionRapidaButton(
                  icono: Icons.healing,
                  label: 'Tratamiento',
                  color: Colors.deepOrange,
                  onPressed: onTratamiento,
                ),
                _AccionRapidaButton(
                  icono: Icons.restaurant,
                  label: 'Nutricion',
                  color: Colors.green,
                  onPressed: onNutricion,
                ),
              ],
            ),
            const Divider(height: 24),
            const Text(
              'Historiales',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _AccionRapidaButton(
                  icono: Icons.health_and_safety,
                  label: 'Vacunas',
                  color: Colors.indigo,
                  onPressed: onHistorialVacunas,
                ),
                _AccionRapidaButton(
                  icono: Icons.medical_information,
                  label: 'Tratamientos',
                  color: Colors.pink,
                  onPressed: onHistorialTratamientos,
                ),
                _AccionRapidaButton(
                  icono: Icons.ramen_dining,
                  label: 'Nutrición',
                  color: Colors.amber,
                  onPressed: onHistorialNutricion,
                ),
                _AccionRapidaButton(
                  icono: Icons.pest_control,
                  label: 'Desparasitación',
                  color: Colors.brown,
                  onPressed: onHistorialDesparasitaciones,
                ),
              ],
            ),
            const Divider(height: 24),
            const Text(
              'Reproducción',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _AccionRapidaButton(
                  icono: Icons.favorite,
                  label: 'Empadre',
                  color: Colors.red,
                  onPressed: onEmpadre,
                ),
                _AccionRapidaButton(
                  icono: Icons.child_care,
                  label: 'Parto',
                  color: Colors.orange,
                  onPressed: onParto,
                ),
                _AccionRapidaButton(
                  icono: Icons.calendar_month,
                  label: 'Historial',
                  color: Colors.purple,
                  onPressed: onHistorialReproductivo,
                ),
              ],
            ),
            const Divider(height: 24),
            const Text(
              'Reportes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _AccionRapidaButton(
                  icono: Icons.description,
                  label: 'Generar\nReporte',
                  color: Colors.teal,
                  onPressed: onGenerarReporte,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AccionRapidaButton extends StatelessWidget {
  final IconData icono;
  final String label;
  final Color color;
  final VoidCallback? onPressed;

  const _AccionRapidaButton({
    required this.icono,
    required this.label,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.2),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              customBorder: const CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(icono, color: color, size: 24),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

// ============================================================================
// HISTÓRICO - Lista de eventos
// ============================================================================

class HistoricoEventosCard extends StatelessWidget {
  final List<EventoHistorico> eventos;

  const HistoricoEventosCard({required this.eventos, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.history, color: Colors.indigo),
                const SizedBox(width: 8),
                const Text(
                  'Histórico (últimos 10)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 16),
            if (eventos.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    'Sin eventos registrados',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: eventos.length,
                itemBuilder: (context, index) {
                  final evento = eventos[index];
                  return _EventoHistoricoItem(evento: evento);
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _EventoHistoricoItem extends StatelessWidget {
  final EventoHistorico evento;

  const _EventoHistoricoItem({required this.evento});

  String _formatearFecha(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = hoy.difference(fecha);

    if (diferencia.inDays == 0) {
      return 'Hoy a las ${fecha.hour}:${fecha.minute.toString().padLeft(2, '0')}';
    } else if (diferencia.inDays == 1) {
      return 'Ayer';
    } else if (diferencia.inDays < 7) {
      return 'Hace ${diferencia.inDays} dias';
    } else {
      return '${fecha.day}/${fecha.month}/${fecha.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: evento.getColor().withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              evento.getIcono(),
              color: evento.getColor(),
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  evento.descripcion,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  _formatearFecha(evento.fecha),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// BADGE - Etiqueta
// ============================================================================

class _Badge extends StatelessWidget {
  final String label;
  final Color backgroundColor;

  const _Badge({
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
