import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/pesos/domain/entities/pesaje.dart';
import 'package:miganado/features/pesos/presentation/providers/pesos_providers.dart';

// ============================================================================
// DIÁLOGO PARA REGISTRAR PESAJE
// ============================================================================

class RegistrarPesajeDialog extends ConsumerStatefulWidget {
  final String animalUuid;

  const RegistrarPesajeDialog({
    Key? key,
    required this.animalUuid,
  }) : super(key: key);

  @override
  ConsumerState<RegistrarPesajeDialog> createState() =>
      _RegistrarPesajeDialogState();
}

class _RegistrarPesajeDialogState extends ConsumerState<RegistrarPesajeDialog> {
  final _pesoController = TextEditingController();
  final _notasController = TextEditingController();

  @override
  void dispose() {
    _pesoController.dispose();
    _notasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registrarPesajeProvider(widget.animalUuid));

    ref.listen(registrarPesajeProvider(widget.animalUuid), (previous, next) {
      if (next.isSuccess) {
        _pesoController.clear();
        _notasController.clear();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Pesaje registrado exitosamente'),
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
                'Registrar Pesaje',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),

              // Peso (requerido)
              TextField(
                controller: _pesoController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Peso *',
                  hintText: '0.00',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                onChanged: (value) {
                  final peso = double.tryParse(value);
                  if (peso != null) {
                    ref
                        .read(
                            registrarPesajeProvider(widget.animalUuid).notifier)
                        .setPeso(peso);
                  }
                },
              ),
              const SizedBox(height: 16),

              // Unidad (kg/lb)
              DropdownButtonFormField<String>(
                value: state.unidad,
                decoration: InputDecoration(
                  labelText: 'Unidad',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
                items: ['kg', 'lb']
                    .map((u) => DropdownMenuItem(
                          value: u,
                          child: Text(u),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    ref
                        .read(
                            registrarPesajeProvider(widget.animalUuid).notifier)
                        .setUnidad(value);
                  }
                },
              ),
              const SizedBox(height: 16),

              // Fecha (requerido)
              InkWell(
                onTap: () async {
                  final fecha = await showDatePicker(
                    context: context,
                    initialDate: state.fecha ??
                        DateTime.now().subtract(const Duration(days: 1)),
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),
                  );
                  if (fecha != null) {
                    ref
                        .read(
                            registrarPesajeProvider(widget.animalUuid).notifier)
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

              // Notas (opcional)
              TextField(
                controller: _notasController,
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: 'Notas (opcional)',
                  hintText: 'Condición, observaciones...',
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
                      .read(
                        registrarPesajeProvider(widget.animalUuid).notifier,
                      )
                      .setNotas(value);
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
                                .read(registrarPesajeProvider(widget.animalUuid)
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
// CARD DE PESAJE
// ============================================================================

class PesajeCard extends StatelessWidget {
  final Pesaje pesaje;
  final Pesaje? pesajeAnterior;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const PesajeCard({
    Key? key,
    required this.pesaje,
    this.pesajeAnterior,
    this.onEdit,
    this.onDelete,
  }) : super(key: key);

  Color _getGananciaColor() {
    if (pesajeAnterior == null) return Colors.grey;
    final ganancia = pesaje.peso - pesajeAnterior!.peso;
    if (ganancia > 0) return Colors.green;
    if (ganancia < 0) return Colors.red;
    return Colors.grey;
  }

  String _getGananciaText() {
    if (pesajeAnterior == null) return '—';
    final ganancia = pesaje.peso - pesajeAnterior!.peso;
    final signo = ganancia > 0 ? '+' : '';
    return '$signo${ganancia.toStringAsFixed(1)} ${pesaje.unidad}';
  }

  @override
  Widget build(BuildContext context) {
    final color = _getGananciaColor();
    final ganancia = _getGananciaText();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Peso principal
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    pesaje.peso.toStringAsFixed(1),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ),
                  ),
                  Text(
                    pesaje.unidad,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.blue,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),

            // Información
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd/MMM/yyyy', 'es_ES').format(pesaje.fecha),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${DateFormat('HH:mm').format(pesaje.fecha)} hrs',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey),
                  ),
                  if (pesaje.notas != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        pesaje.notas!,
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

            // Ganancia
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (pesajeAnterior != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      ganancia,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: color,
                          ),
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
// WIDGET DE ANÁLISIS DE PESOS
// ============================================================================

class AnalisisPesosWidget extends StatelessWidget {
  final AnalisisPesos analisis;

  const AnalisisPesosWidget({
    Key? key,
    required this.analisis,
  }) : super(key: key);

  Color _getTendenciaColor(String tendencia) {
    if (analisis.gananciaPromedioDiaria == null) return Colors.grey;
    if (analisis.gananciaPromedioDiaria! >= 0.75) return Colors.green;
    if (analisis.gananciaPromedioDiaria! >= 0.5) return Colors.orange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    final color = _getTendenciaColor(analisis.tendencia ?? '');

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Análisis de Pesos',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),

            // Peso actual
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peso Actual',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.blue.shade700,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${analisis.pesoActual.toStringAsFixed(2)} kg',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade700,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Grid de métricas
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.6,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                _MetricaItem(
                  titulo: 'Ganancia',
                  valor: analisis.ganancia != null
                      ? '${analisis.ganancia! > 0 ? '+' : ''}${analisis.ganancia!.toStringAsFixed(1)} kg'
                      : 'N/A',
                  color: analisis.ganancia != null && analisis.ganancia! > 0
                      ? Colors.green
                      : Colors.red,
                  icono: Icons.trending_up,
                ),
                _MetricaItem(
                  titulo: 'Ganancia/Día',
                  valor: analisis.gananciaPromedioDiaria != null
                      ? '${analisis.gananciaPromedioDiaria!.toStringAsFixed(2)} kg'
                      : 'N/A',
                  color: color,
                  icono: Icons.show_chart,
                ),
                _MetricaItem(
                  titulo: 'Ganancia/Semana',
                  valor: analisis.gananciaPromedioSemanal != null
                      ? '${analisis.gananciaPromedioSemanal!.toStringAsFixed(1)} kg'
                      : 'N/A',
                  color: color,
                  icono: Icons.calendar_month,
                ),
                _MetricaItem(
                  titulo: 'Proyección/Mes',
                  valor: analisis.pesoProyectadoMes != null
                      ? '${analisis.pesoProyectadoMes!.toStringAsFixed(1)} kg'
                      : 'N/A',
                  color: Colors.purple,
                  icono: Icons.auto_awesome,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Tendencia
            if (analisis.tendencia != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: color.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info, color: color),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tendencia',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: color),
                          ),
                          Text(
                            analisis.descripcionTendencia,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: color,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            // Rango de fechas
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Período de análisis',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  '${DateFormat('dd/MMM', 'es_ES').format(analisis.desde)} - ${DateFormat('dd/MMM', 'es_ES').format(analisis.hasta)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total de pesajes',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  analisis.totalPesajes.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Item para métrica
class _MetricaItem extends StatelessWidget {
  final String titulo;
  final String valor;
  final Color color;
  final IconData icono;

  const _MetricaItem({
    required this.titulo,
    required this.valor,
    required this.color,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icono, color: color, size: 18),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  titulo,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Text(
            valor,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
