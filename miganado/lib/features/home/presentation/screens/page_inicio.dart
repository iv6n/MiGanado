import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/home/presentation/providers/home_providers.dart';

class PageInicio extends ConsumerWidget {
  const PageInicio({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(animalStatsProvider);
    final animalsAsync = ref.watch(animalsStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(animalStatsProvider);
          ref.invalidate(animalsStreamProvider);
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // RESUMEN RÁPIDO - Horizontal scroll
            const Text(
              'Resumen Rápido',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            animalsAsync.when(
              data: (animals) {
                // Agrupar por etapa
                final etapaMap = <String, int>{};
                for (var animal in animals) {
                  final etapa = animal.etapa.toString().split('.').last;
                  etapaMap[etapa] = (etapaMap[etapa] ?? 0) + 1;
                }

                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final entry in etapaMap.entries)
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: _EtapaCard(
                            etapa: entry.key,
                            count: entry.value,
                          ),
                        ),
                    ],
                  ),
                );
              },
              loading: () => const SizedBox(
                height: 80,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, _) => Text('Error: $err'),
            ),
            const SizedBox(height: 28),

            // UBICACIONES
            const Text(
              'Ubicaciones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                _UbicacionCard(
                  nombre: 'Corral Principal',
                  animales: 5,
                  color: Colors.green,
                ),
                const SizedBox(height: 10),
                _UbicacionCard(
                  nombre: 'Potrero Norte',
                  animales: 3,
                  color: Colors.blue,
                ),
                const SizedBox(height: 10),
                _UbicacionCard(
                  nombre: 'Establo',
                  animales: 2,
                  color: Colors.orange,
                ),
                const SizedBox(height: 10),
                _UbicacionCard(
                  nombre: 'Cuarentena',
                  animales: 2,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 28),

            // PENDIENTES
            const Text(
              'Pendientes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _PendienteItem(
              titulo: 'Vacunar Becerro #101',
              fecha: 'Hoy',
              icono: Icons.vaccines,
              color: Colors.green,
            ),
            const SizedBox(height: 8),
            _PendienteItem(
              titulo: 'Desparasitar Vaca #203',
              fecha: 'Mañana',
              icono: Icons.medication,
              color: Colors.orange,
            ),
            const SizedBox(height: 8),
            _PendienteItem(
              titulo: 'Pesaje de Toretes',
              fecha: 'En 3 días',
              icono: Icons.scale,
              color: Colors.blue,
            ),
            const SizedBox(height: 8),
            _PendienteItem(
              titulo: 'Revisar reproducción',
              fecha: 'En 5 días',
              icono: Icons.favorite,
              color: Colors.pink,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final int count;
  final Color color;

  const _StatCard(this.label, this.count, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCardFull extends StatelessWidget {
  final String label;
  final int count;
  final Color color;

  const _StatCardFull(this.label, this.count, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

IconData _getEtapaIcon(String etapa) {
  final iconMap = {
    'BECERRO': Icons.baby_changing_station,
    'BECERRA': Icons.baby_changing_station,
    'VAQUILLA': Icons.trending_up,
    'NOVILLO': Icons.trending_up,
    'TORETE': Icons.fitness_center,
    'VACA': Icons.favorite,
    'TORO': Icons.shield,
    'POTRO': Icons.pets,
    'YEGUA': Icons.favorite,
    'CABALLO': Icons.shield,
  };
  return iconMap[etapa] ?? Icons.help_outline;
}

Color _getEtapaColor(String etapa) {
  final colorMap = {
    'BECERRO': Colors.blue,
    'BECERRA': Colors.pink,
    'VAQUILLA': Colors.cyan,
    'NOVILLO': Colors.brown,
    'TORETE': Colors.red,
    'VACA': Colors.green,
    'TORO': Colors.orange,
    'POTRO': Colors.teal,
    'YEGUA': Colors.indigo,
    'CABALLO': Colors.amber,
  };
  return colorMap[etapa] ?? Colors.grey;
}

class _EtapaCard extends StatelessWidget {
  final String etapa;
  final int count;

  const _EtapaCard({
    required this.etapa,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final color = _getEtapaColor(etapa);
    final icon = _getEtapaIcon(etapa);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 6),
          Text(
            etapa,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: color,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _UbicacionCard extends StatelessWidget {
  final String nombre;
  final int animales;
  final Color color;

  const _UbicacionCard({
    required this.nombre,
    required this.animales,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        border: Border.all(color: color, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: color, size: 20),
              const SizedBox(width: 10),
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$animales',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PendienteItem extends StatefulWidget {
  final String titulo;
  final String fecha;
  final IconData icono;
  final Color color;

  const _PendienteItem({
    required this.titulo,
    required this.fecha,
    required this.icono,
    required this.color,
  });

  @override
  State<_PendienteItem> createState() => _PendienteItemState();
}

class _PendienteItemState extends State<_PendienteItem> {
  bool completado = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border.all(color: Colors.grey[200]!, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => setState(() => completado = !completado),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.color,
                  width: 2,
                ),
                color: completado ? widget.color : Colors.transparent,
              ),
              child: completado
                  ? Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
          ),
          const SizedBox(width: 12),
          Icon(widget.icono, color: widget.color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    decoration: completado
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  widget.fecha,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
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
