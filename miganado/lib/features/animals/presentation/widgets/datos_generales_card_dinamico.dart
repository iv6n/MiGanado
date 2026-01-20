import 'package:flutter/material.dart';
import 'package:miganado/core/config/animal_type_config.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';

/// Widget personalizado que muestra datos generales del animal
/// adaptados al tipo específico (bovino hembra, macho, caballo)
class DatosGeneralesCardDinamico extends StatelessWidget {
  final Animal animal;

  const DatosGeneralesCardDinamico({
    required this.animal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final config = AnimalTypeConfig.getConfig(
      especie: animal.especie,
      sexo: animal.sexo,
      categoria: animal.categoria,
    );

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Datos Generales',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(height: 16),
            _DatoGeneralItem(
              label: 'Nombre',
              valor: animal.nombrePersonalizado ?? 'Sin nombre',
              icono: Icons.pets,
            ),
            if (config.requiereArete)
              _DatoGeneralItem(
                label: 'Arete',
                valor: animal.numeroArete,
                icono: Icons.tag,
              ),
            _DatoGeneralItem(
              label: 'Sexo',
              valor: _getSexoNombre(animal.sexo),
              icono: _getSexoIcono(animal.sexo),
            ),
            _DatoGeneralItem(
              label: 'Especie/Categoría',
              valor: _getEspecieCategoria(animal),
              icono: Icons.category,
            ),
            _DatoGeneralItem(
              label: 'Raza',
              valor: animal.raza ?? 'No especificada',
              icono: Icons.info,
            ),
            _DatoGeneralItem(
              label: 'Edad',
              valor: _formatearEdad(animal),
              icono: Icons.calendar_today,
            ),
            _DatoGeneralItem(
              label: 'Etapa de Vida',
              valor: animal.etapa.name[0].toUpperCase() +
                  animal.etapa.name.substring(1),
              icono: Icons.trending_up,
            ),
            if (config.puedeSerCastrado)
              _DatoGeneralItem(
                label: 'Estado de Castración',
                valor: animal.esCastrado ? 'Castrado' : 'Sin castrar',
                icono: animal.esCastrado ? Icons.check_circle : Icons.cancel,
              ),
            if (config.muestraEstadoReproductivo && animal.sexo == Sexo.hembra)
              _DatoGeneralItem(
                label: 'Estado Reproductivo',
                valor: _getEstadoReproductivo(animal),
                icono: Icons.favorite,
              ),
            const SizedBox(height: 12),
            const Divider(),
            const SizedBox(height: 12),
            Text(
              'Peso y Pesaje',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            _DatoGeneralItem(
              label: 'Peso Actual',
              valor: animal.pesoActual != null
                  ? '${animal.pesoActual} kg'
                  : 'No registrado',
              icono: Icons.scale,
            ),
            _DatoGeneralItem(
              label: 'Último Pesaje',
              valor: animal.fechaUltimoPesaje != null
                  ? _formatearFecha(animal.fechaUltimoPesaje!)
                  : 'Nunca pesado',
              icono: Icons.date_range,
            ),
          ],
        ),
      ),
    );
  }

  String _getSexoNombre(Sexo sexo) {
    return sexo == Sexo.macho ? '♂ Macho' : '♀ Hembra';
  }

  IconData _getSexoIcono(Sexo sexo) {
    return sexo == Sexo.macho ? Icons.male : Icons.female;
  }

  String _getEspecieCategoria(Animal animal) {
    final especie = animal.especie.name.toUpperCase();
    final categoria = animal.categoria.name;
    return '$especie - ${_capitalizarPrimera(categoria)}';
  }

  String _capitalizarPrimera(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }

  String _formatearEdad(Animal animal) {
    final edad = animal.edadMeses;
    final anos = edad ~/ 12;
    final meses = edad % 12;
    return '$anos anios, $meses meses';
  }

  String _getEstadoReproductivo(Animal animal) {
    final estado = animal.estadoReproductivo?.name ?? 'no_definido';
    return estado.replaceAll('_', ' ').toUpperCase();
  }

  String _formatearFecha(DateTime fecha) {
    return '${fecha.day}/${fecha.month}/${fecha.year}';
  }
}

/// Item individual de dato general
class _DatoGeneralItem extends StatelessWidget {
  final String label;
  final String valor;
  final IconData icono;

  const _DatoGeneralItem({
    required this.label,
    required this.valor,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icono, size: 20, color: Colors.green.shade600),
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
    );
  }
}
