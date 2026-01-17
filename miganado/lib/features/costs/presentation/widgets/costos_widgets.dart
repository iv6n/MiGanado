import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/costs/domain/entities/costo.dart';
import 'package:miganado/features/costs/presentation/providers/costos_providers.dart';

// ============================================================================
// DIÁLOGO PARA REGISTRAR COSTO
// ============================================================================

class RegistrarCostoDialog extends ConsumerStatefulWidget {
  final String animalUuid;
  final String? eventoMantenimientoUuid;

  const RegistrarCostoDialog({
    Key? key,
    required this.animalUuid,
    this.eventoMantenimientoUuid,
  }) : super(key: key);

  @override
  ConsumerState<RegistrarCostoDialog> createState() =>
      _RegistrarCostoDialogState();
}

class _RegistrarCostoDialogState extends ConsumerState<RegistrarCostoDialog> {
  final _conceptoController = TextEditingController();
  final _montoController = TextEditingController();
  final _descripcionController = TextEditingController();
  final _proveedorController = TextEditingController();

  @override
  void dispose() {
    _conceptoController.dispose();
    _montoController.dispose();
    _descripcionController.dispose();
    _proveedorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registrarCostoProvider(widget.animalUuid));

    ref.listen(registrarCostoProvider(widget.animalUuid), (previous, next) {
      if (next.isSuccess) {
        _conceptoController.clear();
        _montoController.clear();
        _descripcionController.clear();
        _proveedorController.clear();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Costo registrado exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop();
      }
    });

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Registrar Costo',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),

              // Concepto (requerido)
              TextField(
                controller: _conceptoController,
                decoration: InputDecoration(
                  labelText: 'Concepto *',
                  hintText: 'Ej: Medicamento, Consulta Veterinaria, Alimento',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                onChanged: (value) {
                  ref
                      .read(registrarCostoProvider(widget.animalUuid).notifier)
                      .setConcepto(value);
                },
              ),
              const SizedBox(height: 16),

              // Monto (requerido)
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _montoController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: 'Monto *',
                        hintText: '0.00',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        final monto = double.tryParse(value);
                        if (monto != null) {
                          ref
                              .read(registrarCostoProvider(widget.animalUuid)
                                  .notifier)
                              .setMonto(monto);
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Moneda dropdown
                  Expanded(
                    flex: 0,
                    child: DropdownButton<String>(
                      value: state.moneda,
                      items: ['COP', 'USD', 'EUR', 'MXN']
                          .map((m) => DropdownMenuItem(
                                value: m,
                                child: Text(m),
                              ))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          ref
                              .read(registrarCostoProvider(widget.animalUuid)
                                  .notifier)
                              .setMoneda(value);
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Fecha (requerido)
              InkWell(
                onTap: () async {
                  final fecha = await showDatePicker(
                    context: context,
                    initialDate: state.fecha ??
                        DateTime.now().subtract(Duration(days: 1)),
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),
                  );
                  if (fecha != null) {
                    ref
                        .read(
                            registrarCostoProvider(widget.animalUuid).notifier)
                        .setFecha(fecha);
                  }
                },
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Fecha *',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                  child: Text(
                    state.fecha != null
                        ? DateFormat('dd/MMM/yyyy', 'es_ES')
                            .format(state.fecha!)
                        : 'Seleccionar fecha',
                    style: TextStyle(
                      color: state.fecha != null ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Categoría (opcional)
              DropdownButtonFormField<String>(
                value: state.categoria,
                decoration: InputDecoration(
                  labelText: 'Categoría',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                items: [
                  const DropdownMenuItem<String>(
                    value: '',
                    child: Text('Sin categoría'),
                  ),
                  ...[
                    'Mantenimiento',
                    'Alimentación',
                    'Infraestructura',
                    'Otro'
                  ]
                      .map<DropdownMenuItem<String>>(
                          (String cat) => DropdownMenuItem<String>(
                                value: cat,
                                child: Text(cat),
                              ))
                      .toList(),
                ],
                onChanged: (value) {
                  ref
                      .read(registrarCostoProvider(widget.animalUuid).notifier)
                      .setCategoria(value);
                },
              ),
              const SizedBox(height: 16),

              // Descripción (opcional)
              TextField(
                controller: _descripcionController,
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: 'Descripción (opcional)',
                  hintText: 'Detalles adicionales...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                onChanged: (value) {
                  ref
                      .read(registrarCostoProvider(widget.animalUuid).notifier)
                      .setDescripcion(value);
                },
              ),
              const SizedBox(height: 16),

              // Proveedor (opcional)
              TextField(
                controller: _proveedorController,
                decoration: InputDecoration(
                  labelText: 'Proveedor (opcional)',
                  hintText: 'Nombre del proveedor...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                onChanged: (value) {
                  ref
                      .read(registrarCostoProvider(widget.animalUuid).notifier)
                      .setProveedor(value);
                },
              ),

              // Error message
              if (state.error != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.error, color: Colors.red.shade700),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            state.error!,
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              const SizedBox(height: 24),

              // Botones
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton.icon(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            ref
                                .read(registrarCostoProvider(widget.animalUuid)
                                    .notifier)
                                .registrar(ref);
                          },
                    icon: state.isLoading
                        ? SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade700,
                              ),
                            ),
                          )
                        : const Icon(Icons.check),
                    label: const Text('Registrar'),
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
// CARD DE COSTO
// ============================================================================

class CostoCard extends StatelessWidget {
  final Costo costo;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const CostoCard({
    Key? key,
    required this.costo,
    this.onEdit,
    this.onDelete,
  }) : super(key: key);

  Color _getCategoriaColor() {
    // Use tipo from CostoEntity as fallback
    return Colors.blue;
  }

  IconData _getCategoriaIcon() {
    // Use tipo from CostoEntity as fallback
    return Icons.attach_money;
  }

  @override
  Widget build(BuildContext context) {
    final color = _getCategoriaColor();
    final icon = _getCategoriaIcon();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Icono categoría
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            const SizedBox(width: 12),

            // Información
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    costo.descripcion,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('dd/MMM/yyyy', 'es_ES').format(costo.fecha),
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                      if (costo.responsable != null)
                        Text(
                          'Por: ${costo.responsable}',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                  if (costo.detalles != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        costo.detalles!,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),

            // Monto
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$${costo.monto.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.green.shade700,
                      ),
                ),
                if (onEdit != null || onDelete != null)
                  Row(
                    children: [
                      if (onEdit != null)
                        IconButton(
                          icon: const Icon(Icons.edit, size: 18),
                          onPressed: onEdit,
                          constraints: const BoxConstraints(),
                          padding: const EdgeInsets.all(4),
                        ),
                      if (onDelete != null)
                        IconButton(
                          icon: const Icon(Icons.delete, size: 18),
                          onPressed: onDelete,
                          constraints: const BoxConstraints(),
                          padding: const EdgeInsets.all(4),
                          color: Colors.red,
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
// WIDGET DE RESUMEN FINANCIERO
// ============================================================================

class ResumenFinancieroWidget extends StatelessWidget {
  final ResumenFinanciero resumen;

  const ResumenFinancieroWidget({
    Key? key,
    required this.resumen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moneda = 'COP';

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Resumen Financiero',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),

            // Costo total
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Costo Total',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.green.shade700,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${resumen.costoTotal.toStringAsFixed(2)} $moneda',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade700,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Métricas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Eventos',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      resumen.totalEventos.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Promedio',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${resumen.costoPromedio.toStringAsFixed(0)} $moneda',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Período',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${resumen.totalEventos > 0 ? "${(resumen.hasta.difference(resumen.desde).inDays)} días" : "N/A"}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
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
