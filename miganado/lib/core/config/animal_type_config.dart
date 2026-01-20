import 'package:miganado/features/animals/data/models/animal_entity.dart';

/// Tipos de acciones rápidas disponibles
enum TipoAccionRapida {
  pesaje,
  mantenimiento,
  costo,
  foto,
  vacuna,
  tratamiento,
  nutricion,
}

/// Tipos de historiales disponibles
enum TipoHistorial {
  vacunas,
  tratamientos,
  nutricion,
  desparasitacion,
  mantenimiento,
}

/// Tipos de secciones de reproducción
enum TipoReproduccion {
  empadre,
  parto,
  historial,
}

/// Configuración centralizada de qué features están disponibles por tipo de animal
/// Esto permite que cada tipo de animal (bovino hembra, macho, caballo) tenga diferentes
/// acciones, historiales y opciones de reproducción
abstract class AnimalTypeConfig {
  /// Acciones rápidas que se muestran para este tipo
  List<TipoAccionRapida> get accionesRapidas;

  /// Historiales que se muestran para este tipo
  List<TipoHistorial> get historiales;

  /// Opciones de reproducción (si aplica)
  List<TipoReproduccion> get reproduccion;

  /// Si este tipo puede mostrar estado reproductivo
  bool get muestraEstadoReproductivo;

  /// Si este tipo requiere arete obligatoriamente
  bool get requiereArete;

  /// Si este tipo puede ser castrado
  bool get puedeSerCastrado;

  /// Descripción legible del tipo
  String get descripcion;

  /// Factory para obtener la configuración correcta
  static AnimalTypeConfig getConfig({
    required Especie especie,
    required Sexo sexo,
    required Categoria categoria,
  }) {
    if (especie == Especie.bovino) {
      if (sexo == Sexo.hembra) {
        return _BovinoPembraConfig();
      } else {
        return _BovMachoConfig();
      }
    } else {
      // Equino (caballo, burro, mula)
      return _EquinoConfig();
    }
  }
}

/// Configuración para Bovino Hembra (vaca, vaquilla, becerra)
class _BovinoPembraConfig extends AnimalTypeConfig {
  @override
  List<TipoAccionRapida> get accionesRapidas => [
        TipoAccionRapida.pesaje,
        TipoAccionRapida.vacuna,
        TipoAccionRapida.tratamiento,
        TipoAccionRapida.nutricion,
        TipoAccionRapida.costo,
        TipoAccionRapida.foto,
        // TipoAccionRapida.mantenimiento, // FASE 4
      ];

  @override
  List<TipoHistorial> get historiales => [
        TipoHistorial.vacunas,
        TipoHistorial.tratamientos,
        TipoHistorial.nutricion,
        TipoHistorial.desparasitacion,
        TipoHistorial.mantenimiento,
      ];

  @override
  List<TipoReproduccion> get reproduccion => [
        TipoReproduccion.empadre,
        TipoReproduccion.parto,
        TipoReproduccion.historial,
      ];

  @override
  bool get muestraEstadoReproductivo => true;

  @override
  bool get requiereArete => true;

  @override
  bool get puedeSerCastrado => false;

  @override
  String get descripcion => 'Bovino Hembra';
}

/// Configuración para Bovino Macho (toro, novillo, torete, becerro)
class _BovMachoConfig extends AnimalTypeConfig {
  @override
  List<TipoAccionRapida> get accionesRapidas => [
        TipoAccionRapida.pesaje,
        TipoAccionRapida.vacuna,
        TipoAccionRapida.tratamiento,
        TipoAccionRapida.nutricion,
        TipoAccionRapida.costo,
        TipoAccionRapida.foto,
        // TipoAccionRapida.mantenimiento, // FASE 4
      ];

  @override
  List<TipoHistorial> get historiales => [
        TipoHistorial.vacunas,
        TipoHistorial.tratamientos,
        TipoHistorial.nutricion,
        TipoHistorial.desparasitacion,
        TipoHistorial.mantenimiento,
      ];

  @override
  List<TipoReproduccion> get reproduccion => [
        // Los machos no tienen opciones de reproducción actualmente
        // pero esto permite expandir en el futuro
      ];

  @override
  bool get muestraEstadoReproductivo => false;

  @override
  bool get requiereArete => true;

  @override
  bool get puedeSerCastrado => true;

  @override
  String get descripcion => 'Bovino Macho';
}

/// Configuración para Equinos (caballo, burro, mula)
class _EquinoConfig extends AnimalTypeConfig {
  @override
  List<TipoAccionRapida> get accionesRapidas => [
        TipoAccionRapida.pesaje,
        TipoAccionRapida.vacuna,
        TipoAccionRapida.tratamiento,
        TipoAccionRapida.nutricion,
        TipoAccionRapida.costo,
        TipoAccionRapida.foto,
        // TipoAccionRapida.mantenimiento, // FASE 4
      ];

  @override
  List<TipoHistorial> get historiales => [
        TipoHistorial.vacunas,
        TipoHistorial.tratamientos,
        TipoHistorial.nutricion,
        TipoHistorial.desparasitacion,
        TipoHistorial.mantenimiento,
      ];

  @override
  List<TipoReproduccion> get reproduccion => [
        TipoReproduccion.empadre,
        TipoReproduccion.parto,
        TipoReproduccion.historial,
      ];

  @override
  bool get muestraEstadoReproductivo => false; // Opcional para equinos

  @override
  bool get requiereArete => false; // Los equinos no requieren arete

  @override
  bool get puedeSerCastrado => true;

  @override
  String get descripcion => 'Equino';
}

/// Helper para mapper de TipoAccionRapida a propiedades de UI
extension TipoAccionRapidaExt on TipoAccionRapida {
  String get nombre {
    switch (this) {
      case TipoAccionRapida.pesaje:
        return 'Pesaje';
      case TipoAccionRapida.mantenimiento:
        return 'Mantenimiento';
      case TipoAccionRapida.costo:
        return 'Costo';
      case TipoAccionRapida.foto:
        return 'Foto';
      case TipoAccionRapida.vacuna:
        return 'Vacuna';
      case TipoAccionRapida.tratamiento:
        return 'Tratamiento';
      case TipoAccionRapida.nutricion:
        return 'Nutrición';
    }
  }

  String get icono {
    switch (this) {
      case TipoAccionRapida.pesaje:
        return '⚖️';
      case TipoAccionRapida.mantenimiento:
        return '🔧';
      case TipoAccionRapida.costo:
        return '💰';
      case TipoAccionRapida.foto:
        return '📷';
      case TipoAccionRapida.vacuna:
        return '💉';
      case TipoAccionRapida.tratamiento:
        return '🩹';
      case TipoAccionRapida.nutricion:
        return '🍽️';
    }
  }
}

extension TipoHistorialExt on TipoHistorial {
  String get nombre {
    switch (this) {
      case TipoHistorial.vacunas:
        return 'Vacunas';
      case TipoHistorial.tratamientos:
        return 'Tratamientos';
      case TipoHistorial.nutricion:
        return 'Nutrición';
      case TipoHistorial.desparasitacion:
        return 'Desparasitación';
      case TipoHistorial.mantenimiento:
        return 'Mantenimiento';
    }
  }

  String get icono {
    switch (this) {
      case TipoHistorial.vacunas:
        return '💉';
      case TipoHistorial.tratamientos:
        return '🩹';
      case TipoHistorial.nutricion:
        return '🍽️';
      case TipoHistorial.desparasitacion:
        return '🪲';
      case TipoHistorial.mantenimiento:
        return '🔧';
    }
  }
}
