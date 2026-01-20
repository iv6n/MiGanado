import 'package:flutter/material.dart';
import 'package:miganado/core/config/animal_type_config.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

/// Widget mejorado que muestra acciones, historiales y reproducción de forma dinámica
/// basado en el tipo de animal (bovino hembra, macho, caballo)
class AccionesYHistorialesCard extends StatelessWidget {
  final Animal animal;

  // Callbacks para Acciones Rápidas
  final VoidCallback? onPesaje;
  final VoidCallback? onMantenimiento;
  final VoidCallback? onCosto;
  final VoidCallback? onFoto;
  final VoidCallback? onVacuna;
  final VoidCallback? onTratamiento;
  final VoidCallback? onNutricion;

  // Callbacks para Historiales
  final VoidCallback? onHistorialVacunas;
  final VoidCallback? onHistorialTratamientos;
  final VoidCallback? onHistorialNutricion;
  final VoidCallback? onHistorialDesparasitaciones;
  final VoidCallback? onHistorialMantenimiento;

  // Callbacks para Reproducción
  final VoidCallback? onEmpadre;
  final VoidCallback? onParto;
  final VoidCallback? onHistorialReproductivo;

  // Callback para Reportes
  final VoidCallback? onGenerarReporte;

  const AccionesYHistorialesCard({
    required this.animal,
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
    this.onHistorialMantenimiento,
    this.onEmpadre,
    this.onParto,
    this.onHistorialReproductivo,
    this.onGenerarReporte,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Obtener configuración específica para este tipo de animal
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
            // ═════════════════════════════════════════════════════════
            // ACCIONES RÁPIDAS - Mostrar solo las del tipo de animal
            // ═════════════════════════════════════════════════════════
            Text(
              'Acciones Rápidas',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: _construirAccionesRapidas(config, context),
            ),

            // ═════════════════════════════════════════════════════════
            // HISTORIALES - Mostrar solo los del tipo de animal
            // ═════════════════════════════════════════════════════════
            if (config.historiales.isNotEmpty) ...[
              const Divider(height: 24),
              Text(
                'Historiales',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: _construirHistoriales(config, context),
              ),
            ],

            // ═════════════════════════════════════════════════════════
            // REPRODUCCIÓN - Solo mostrar si aplica al tipo de animal
            // ═════════════════════════════════════════════════════════
            if (config.reproduccion.isNotEmpty) ...[
              const Divider(height: 24),
              Text(
                'Reproducción',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: _construirReproduccion(config, context),
              ),
            ],

            // ═════════════════════════════════════════════════════════
            // REPORTES
            // ═════════════════════════════════════════════════════════
            const Divider(height: 24),
            Text(
              'Reportes',
              style: Theme.of(context).textTheme.titleMedium,
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

  /// Construir botones de acciones rápidas según configuración
  List<Widget> _construirAccionesRapidas(
      AnimalTypeConfig config, BuildContext context) {
    final botones = <Widget>[];

    for (final accion in config.accionesRapidas) {
      botones.add(
        _construirBotonAccion(accion, context),
      );
    }

    return botones;
  }

  /// Construir botones de historiales según configuración
  List<Widget> _construirHistoriales(
      AnimalTypeConfig config, BuildContext context) {
    final botones = <Widget>[];

    for (final historial in config.historiales) {
      botones.add(
        _construirBotonHistorial(historial, context),
      );
    }

    return botones;
  }

  /// Construir botones de reproducción según configuración
  List<Widget> _construirReproduccion(
      AnimalTypeConfig config, BuildContext context) {
    final botones = <Widget>[];

    for (final reproduccion in config.reproduccion) {
      botones.add(
        _construirBotonReproduccion(reproduccion, context),
      );
    }

    return botones;
  }

  /// Crear botón para una acción rápida
  Widget _construirBotonAccion(TipoAccionRapida accion, BuildContext context) {
    VoidCallback? callback;
    IconData icono;
    Color color;

    switch (accion) {
      case TipoAccionRapida.pesaje:
        callback = onPesaje;
        icono = Icons.scale;
        color = Colors.blue;
        break;
      case TipoAccionRapida.mantenimiento:
        callback = onMantenimiento;
        icono = Icons.medical_services;
        color = Colors.red;
        break;
      case TipoAccionRapida.costo:
        callback = onCosto;
        icono = Icons.attach_money;
        color = Colors.orange;
        break;
      case TipoAccionRapida.foto:
        callback = onFoto;
        icono = Icons.photo_camera;
        color = Colors.purple;
        break;
      case TipoAccionRapida.vacuna:
        callback = onVacuna;
        icono = Icons.vaccines;
        color = Colors.teal;
        break;
      case TipoAccionRapida.tratamiento:
        callback = onTratamiento;
        icono = Icons.healing;
        color = Colors.deepOrange;
        break;
      case TipoAccionRapida.nutricion:
        callback = onNutricion;
        icono = Icons.restaurant;
        color = Colors.green;
        break;
    }

    return _AccionRapidaButton(
      icono: icono,
      label: accion.nombre,
      color: color,
      onPressed: callback,
    );
  }

  /// Crear botón para un historial
  Widget _construirBotonHistorial(
      TipoHistorial historial, BuildContext context) {
    VoidCallback? callback;
    IconData icono;
    Color color;

    switch (historial) {
      case TipoHistorial.vacunas:
        callback = onHistorialVacunas;
        icono = Icons.health_and_safety;
        color = Colors.indigo;
        break;
      case TipoHistorial.tratamientos:
        callback = onHistorialTratamientos;
        icono = Icons.medical_information;
        color = Colors.pink;
        break;
      case TipoHistorial.nutricion:
        callback = onHistorialNutricion;
        icono = Icons.ramen_dining;
        color = Colors.amber;
        break;
      case TipoHistorial.desparasitacion:
        callback = onHistorialDesparasitaciones;
        icono = Icons.pest_control;
        color = Colors.brown;
        break;
      case TipoHistorial.mantenimiento:
        callback = onHistorialMantenimiento;
        icono = Icons.build;
        color = Colors.grey;
        break;
    }

    return _AccionRapidaButton(
      icono: icono,
      label: historial.nombre,
      color: color,
      onPressed: callback,
    );
  }

  /// Crear botón para reproducción
  Widget _construirBotonReproduccion(
      TipoReproduccion reproduccion, BuildContext context) {
    VoidCallback? callback;
    IconData icono;
    Color color;

    switch (reproduccion) {
      case TipoReproduccion.empadre:
        callback = onEmpadre;
        icono = Icons.favorite;
        color = Colors.red;
        break;
      case TipoReproduccion.parto:
        callback = onParto;
        icono = Icons.child_care;
        color = Colors.orange;
        break;
      case TipoReproduccion.historial:
        callback = onHistorialReproductivo;
        icono = Icons.calendar_month;
        color = Colors.purple;
        break;
    }

    return _AccionRapidaButton(
      icono: icono,
      label: reproduccion.nombre.replaceFirst(
        reproduccion.nombre[0],
        reproduccion.nombre[0].toUpperCase(),
      ),
      color: color,
      onPressed: callback,
    );
  }
}

extension on TipoReproduccion {
  String get nombre {
    switch (this) {
      case TipoReproduccion.empadre:
        return 'Empadre';
      case TipoReproduccion.parto:
        return 'Parto';
      case TipoReproduccion.historial:
        return 'Historial';
    }
  }
}

/// Botón reutilizable para acciones
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
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
