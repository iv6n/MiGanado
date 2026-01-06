import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_model.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/models/index.dart'
    hide EventoMantenimiento, TipoMantenimiento;

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
  late TipoMantenimiento _tipoSeleccionado = TipoMantenimiento.vacunacion;
  late DateTime _fechaSeleccionada = DateTime.now();
  late String _producto = '';
  late String _observaciones = '';

  // Listas predefinidas
  final Map<TipoMantenimiento, List<String>> productosMap = {
    TipoMantenimiento.vacunacion: [
      'Fiebre Aftosa',
      'Brucelosis',
      'Rabia',
      'Tuberculosis',
      'Leptospirosis',
      'IBR',
      'Otro'
    ],
    TipoMantenimiento.desparasitante: [
      'Ivermectina',
      'Levamisol',
      'Albendazol',
      'Milbemicina',
      'Otro'
    ],
    TipoMantenimiento.vitaminas: [
      'Complejo B',
      'Vitamina A',
      'Vitamina D',
      'Mineral Mix',
      'Otro'
    ],
    TipoMantenimiento.revision_clinica: [],
    TipoMantenimiento.curacion: [],
    TipoMantenimiento.dentadura: [],
    TipoMantenimiento.castracion: [],
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

            // Observaciones
            _SectionTitle(title: 'Observaciones (Opcional)'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              onChanged: (value) => setState(() => _observaciones = value),
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Notas adicionales sobre el mantenimiento',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                prefixIcon: Icon(Icons.note, color: AppColors.primary),
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

  Future<void> _guardarMantenimiento() async {
    if (_producto.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor selecciona un producto'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      // Crear el modelo de evento de mantenimiento
      final evento = EventoMantenimientoModel(
        animalId: widget.animal.id,
        tipo: _tipoSeleccionado,
        fecha: _fechaSeleccionada,
        descripcion: _producto,
        notas: _observaciones.isEmpty ? null : _observaciones,
      );

      // Obtener la base de datos y guardar
      final database = ref.read(databaseProvider);
      await database.saveEvento(evento);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                '${_getNombreTipo(_tipoSeleccionado)} registrada exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al guardar mantenimiento: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  String _getNombreTipo(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
        return 'Vacunación';
      case TipoMantenimiento.desparasitante:
        return 'Desparasitación';
      case TipoMantenimiento.vitaminas:
        return 'Vitaminas';
      case TipoMantenimiento.revision_clinica:
        return 'Revisión Clínica';
      case TipoMantenimiento.curacion:
        return 'Curación';
      case TipoMantenimiento.dentadura:
        return 'Dentadura';
      case TipoMantenimiento.castracion:
        return 'Castración';
      case TipoMantenimiento.otro:
        return 'Otro';
      default:
        return 'Desconocido';
    }
  }

  IconData _getIconoTipo(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
        return Icons.medical_services;
      case TipoMantenimiento.desparasitante:
        return Icons.local_pharmacy;
      case TipoMantenimiento.vitaminas:
        return Icons.health_and_safety;
      case TipoMantenimiento.revision_clinica:
        return Icons.health_and_safety;
      case TipoMantenimiento.curacion:
        return Icons.healing;
      case TipoMantenimiento.dentadura:
        return Icons.sentiment_satisfied;
      case TipoMantenimiento.castracion:
        return Icons.medical_information;
      case TipoMantenimiento.otro:
        return Icons.more_horiz;
      default:
        return Icons.help;
    }
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
      case TipoMantenimiento.vacunacion:
        return 'Vacunación';
      case TipoMantenimiento.desparasitante:
        return 'Desparasitación';
      case TipoMantenimiento.vitaminas:
        return 'Vitaminas';
      case TipoMantenimiento.revision_clinica:
        return 'Revisión Clínica';
      case TipoMantenimiento.curacion:
        return 'Curación';
      case TipoMantenimiento.dentadura:
        return 'Dentadura';
      case TipoMantenimiento.castracion:
        return 'Castración';
      case TipoMantenimiento.otro:
        return 'Otro';
      default:
        return 'Desconocido';
    }
  }

  IconData _getIconoTipo(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
        return Icons.medical_services;
      case TipoMantenimiento.desparasitante:
        return Icons.local_pharmacy;
      case TipoMantenimiento.vitaminas:
        return Icons.health_and_safety;
      case TipoMantenimiento.revision_clinica:
        return Icons.health_and_safety;
      case TipoMantenimiento.curacion:
        return Icons.healing;
      case TipoMantenimiento.dentadura:
        return Icons.sentiment_satisfied;
      case TipoMantenimiento.castracion:
        return Icons.medical_information;
      case TipoMantenimiento.otro:
        return Icons.more_horiz;
      default:
        return Icons.help;
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
