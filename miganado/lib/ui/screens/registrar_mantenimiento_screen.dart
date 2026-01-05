import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/models/index.dart';
import 'package:miganado/theme/app_theme.dart';

/// Pantalla para registrar mantenimiento de un animal
class RegistrarMantenimientoScreen extends ConsumerStatefulWidget {
  final Animal animal;

  const RegistrarMantenimientoScreen({
    Key? key,
    required this.animal,
  }) : super(key: key);

  @override
  ConsumerState<RegistrarMantenimientoScreen> createState() =>
      _RegistrarMantenimientoScreenState();
}

class _RegistrarMantenimientoScreenState
    extends ConsumerState<RegistrarMantenimientoScreen> {
  late TipoMantenimiento _tipoSeleccionado = TipoMantenimiento.vacuna;
  late DateTime _fechaSeleccionada = DateTime.now();
  late String _producto = '';
  late String _dosis = '';
  late String _lote = '';
  late String _observaciones = '';

  // Listas predefinidas
  final Map<TipoMantenimiento, List<String>> productosMap = {
    TipoMantenimiento.vacuna: [
      'Fiebre Aftosa',
      'Brucelosis',
      'Rabia',
      'Tuberculosis',
      'Leptospirosis',
      'IBR',
      'Otro'
    ],
    TipoMantenimiento.banio: [
      'Ivermectina',
      'Levamisol',
      'Albendazol',
      'Cipermectrina',
      'Otro'
    ],
    TipoMantenimiento.desparasitacion: [
      'Ivermectina',
      'Levamisol',
      'Albendazol',
      'Milbemicina',
      'Otro'
    ],
    TipoMantenimiento.ubicacion: ['Potrero A', 'Potrero B', 'Establo', 'Otro'],
    TipoMantenimiento.otro: [],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Mantenimiento'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Información del animal
            _AnimalInfoCard(animal: widget.animal),
            const SizedBox(height: AppSpacing.lg),

            // Tipo de mantenimiento
            _SectionTitle(title: 'Tipo de Mantenimiento'),
            const SizedBox(height: AppSpacing.md),
            _TipoMantenimientoSelector(
              tipoSeleccionado: _tipoSeleccionado,
              onChanged: (tipo) {
                setState(() {
                  _tipoSeleccionado = tipo;
                  _producto = '';
                });
              },
            ),
            const SizedBox(height: AppSpacing.lg),

            // Producto
            _SectionTitle(title: 'Producto/Tratamiento'),
            const SizedBox(height: AppSpacing.md),
            if (productosMap[_tipoSeleccionado]!.isNotEmpty)
              DropdownButtonFormField<String>(
                value: _producto.isEmpty ? null : _producto,
                items: productosMap[_tipoSeleccionado]!
                    .map((p) => DropdownMenuItem(value: p, child: Text(p)))
                    .toList(),
                onChanged: (value) {
                  setState(() => _producto = value ?? '');
                },
                decoration: InputDecoration(
                  hintText: 'Selecciona un producto',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  prefixIcon:
                      Icon(Icons.medical_services, color: AppColors.primary),
                ),
              )
            else
              TextField(
                onChanged: (value) => setState(() => _producto = value),
                decoration: InputDecoration(
                  hintText: 'Describe el producto o tratamiento',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  prefixIcon:
                      Icon(Icons.medical_services, color: AppColors.primary),
                ),
              ),
            const SizedBox(height: AppSpacing.lg),

            // Fecha
            _SectionTitle(title: 'Fecha del Tratamiento'),
            const SizedBox(height: AppSpacing.md),
            _DatePickerField(
              fecha: _fechaSeleccionada,
              onChanged: (fecha) => setState(() => _fechaSeleccionada = fecha),
            ),
            const SizedBox(height: AppSpacing.lg),

            // Dosis
            _SectionTitle(title: 'Dosis (Opcional)'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              onChanged: (value) => setState(() => _dosis = value),
              decoration: InputDecoration(
                hintText: 'Ejemplo: 10 ml, 2 dosis, etc.',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                prefixIcon: Icon(Icons.straighten, color: AppColors.primary),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),

            // Lote
            _SectionTitle(title: 'Lote (Opcional)'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              onChanged: (value) => setState(() => _lote = value),
              decoration: InputDecoration(
                hintText: 'Número de lote del producto',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                prefixIcon: Icon(Icons.numbers, color: AppColors.primary),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),

            // Observaciones
            _SectionTitle(title: 'Observaciones'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              onChanged: (value) => setState(() => _observaciones = value),
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Notas adicionales sobre el tratamiento',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),

            // Botones de acción
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    label: const Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _guardarMantenimiento,
                    icon: const Icon(Icons.check),
                    label: const Text('Registrar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
        ),
      ),
    );
  }

  void _guardarMantenimiento() {
    if (_producto.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor selecciona un producto')),
      );
      return;
    }

    final evento = EventoMantenimiento(
      animalId: widget.animal.id,
      tipo: _tipoSeleccionado,
      fecha: _fechaSeleccionada,
      producto: _producto,
      dosis: _dosis.isEmpty ? null : _dosis,
      lote: _lote.isEmpty ? null : _lote,
      observaciones: _observaciones,
    );

    // Aquí se guardaría en la base de datos
    // Por ahora mostramos un mensaje de éxito
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${evento.nombreTipo} registrada exitosamente'),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.of(context).pop();
  }
}

/// Tarjeta con información del animal
class _AnimalInfoCard extends StatelessWidget {
  final Animal animal;

  const _AnimalInfoCard({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primary.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: animal.fotoPath != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.md),
                      child: Image.network(
                        animal.fotoPath!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.pets,
                            color: Colors.white,
                          );
                        },
                      ),
                    )
                  : Icon(
                      Icons.pets,
                      color: Colors.white,
                    ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animal.numeroArete,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    '${animal.raza} • ${animal.tipo.name.toUpperCase()}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Selector de tipo de mantenimiento
class _TipoMantenimientoSelector extends StatelessWidget {
  final TipoMantenimiento tipoSeleccionado;
  final Function(TipoMantenimiento) onChanged;

  const _TipoMantenimientoSelector({
    required this.tipoSeleccionado,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final tipos = TipoMantenimiento.values;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tipos
            .map((tipo) => Padding(
                  padding: const EdgeInsets.only(right: AppSpacing.md),
                  child: _TipoChip(
                    label: _getNombreTipo(tipo),
                    icono: _getIconoTipo(tipo),
                    seleccionado: tipoSeleccionado == tipo,
                    onTap: () => onChanged(tipo),
                  ),
                ))
            .toList(),
      ),
    );
  }

  String _getNombreTipo(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacuna:
        return 'Vacuna';
      case TipoMantenimiento.banio:
        return 'Banio';
      case TipoMantenimiento.desparasitacion:
        return 'Desparasito';
      case TipoMantenimiento.ubicacion:
        return 'Ubicacion';
      case TipoMantenimiento.otro:
        return 'Otro';
    }
  }

  IconData _getIconoTipo(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacuna:
        return Icons.medical_services;
      case TipoMantenimiento.banio:
        return Icons.shower;
      case TipoMantenimiento.desparasitacion:
        return Icons.local_pharmacy;
      case TipoMantenimiento.ubicacion:
        return Icons.location_on;
      case TipoMantenimiento.otro:
        return Icons.more_horiz;
    }
  }
}

/// Chip de tipo de mantenimiento
class _TipoChip extends StatelessWidget {
  final String label;
  final IconData icono;
  final bool seleccionado;
  final VoidCallback onTap;

  const _TipoChip({
    required this.label,
    required this.icono,
    required this.seleccionado,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: seleccionado ? AppColors.primary : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: seleccionado ? AppColors.primary : Colors.grey[300]!,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icono,
              size: 18,
              color: seleccionado ? Colors.white : Colors.grey[700],
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: seleccionado ? Colors.white : Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Campo de selección de fecha
class _DatePickerField extends StatelessWidget {
  final DateTime fecha;
  final Function(DateTime) onChanged;

  const _DatePickerField({
    required this.fecha,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: fecha,
          firstDate: DateTime(2020),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          onChanged(pickedDate);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_today, color: AppColors.primary),
            const SizedBox(width: AppSpacing.md),
            Text(
              '${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

/// Título de sección
class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 3,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
