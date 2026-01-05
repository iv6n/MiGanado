import 'package:hive_flutter/hive_flutter.dart';
import 'package:miganado/models/index.dart';

/// Servicio de base de datos usando Hive
/// Compatible con Android y Web
class MiGanadoDatabase {
  static const String animalesBox = 'animales';
  static const String pesajesBox = 'pesajes';
  static const String ubicacionesBox = 'ubicaciones';
  static const String ganaderoBox = 'ganadero';
  static const String eventosMantenimientoBox = 'eventos_mantenimiento';

  late Box<Map> _animalesBox;
  late Box<Map> _pesajesBox;
  late Box<Map> _ubicacionesBox;
  late Box<Map> _ganaderoBox;
  late Box<Map> _eventosMantenimientoBox;

  /// Inicializa la base de datos
  Future<void> init() async {
    await Hive.initFlutter();

    _animalesBox = await Hive.openBox<Map>(animalesBox);
    _pesajesBox = await Hive.openBox<Map>(pesajesBox);
    _ubicacionesBox = await Hive.openBox<Map>(ubicacionesBox);
    _ganaderoBox = await Hive.openBox<Map>(ganaderoBox);
    _eventosMantenimientoBox = await Hive.openBox<Map>(eventosMantenimientoBox);
  }

  // ============ ANIMALES ============

  Future<List<Animal>> getAllAnimales() async {
    final List<Animal> animales = [];
    for (var value in _animalesBox.values) {
      animales.add(_mapToAnimal(value));
    }
    // Ordena por número de arete
    animales.sort((a, b) => a.numeroArete.compareTo(b.numeroArete));
    return animales;
  }

  Future<Animal?> getAnimalById(String id) async {
    final data = _animalesBox.get(id);
    return data != null ? _mapToAnimal(data) : null;
  }

  Future<Animal?> getAnimalByArete(String numeroArete) async {
    for (var value in _animalesBox.values) {
      if (value['numeroArete'] == numeroArete) {
        return _mapToAnimal(value);
      }
    }
    return null;
  }

  Future<void> insertAnimal(Animal animal) async {
    await _animalesBox.put(animal.id, _animalToMap(animal));
  }

  Future<void> updateAnimal(Animal animal) async {
    await _animalesBox.put(animal.id, _animalToMap(animal));
  }

  Future<void> deleteAnimal(String id) async {
    await _animalesBox.delete(id);
    // También elimina sus pesajes
    final pesajesToDelete = <String>[];
    for (int i = 0; i < _pesajesBox.length; i++) {
      final key = _pesajesBox.keyAt(i);
      final value = _pesajesBox.getAt(i) as Map<dynamic, dynamic>;
      if (value['animalId'] == id) {
        pesajesToDelete.add(key.toString());
      }
    }
    for (var key in pesajesToDelete) {
      await _pesajesBox.delete(key);
    }
  }

  Future<List<Animal>> getAnimalesByTipo(String tipo) async {
    final List<Animal> animales = [];
    for (var value in _animalesBox.values) {
      if (value['tipo'] == tipo) {
        animales.add(_mapToAnimal(value));
      }
    }
    animales.sort((a, b) => a.numeroArete.compareTo(b.numeroArete));
    return animales;
  }

  // ============ PESAJES ============

  Future<List<Pesaje>> getPesajesByAnimalId(String animalId) async {
    final List<Pesaje> pesajes = [];
    for (var value in _pesajesBox.values) {
      if (value['animalId'] == animalId) {
        pesajes.add(_mapToPesaje(value));
      }
    }
    // Ordena por fecha descendente
    pesajes.sort((a, b) => b.fecha.compareTo(a.fecha));
    return pesajes;
  }

  Future<Pesaje?> getUltimoPesaje(String animalId) async {
    final pesajes = await getPesajesByAnimalId(animalId);
    return pesajes.isNotEmpty ? pesajes.first : null;
  }

  Future<Pesaje?> getPesoInicial(String animalId) async {
    final pesajes = await getPesajesByAnimalId(animalId);
    return pesajes.isNotEmpty ? pesajes.last : null;
  }

  Future<void> insertPesaje(Pesaje pesaje) async {
    await _pesajesBox.put(pesaje.id, _pesajeToMap(pesaje));
  }

  Future<void> updatePesaje(Pesaje pesaje) async {
    await _pesajesBox.put(pesaje.id, _pesajeToMap(pesaje));
  }

  Future<void> deletePesaje(String id) async {
    await _pesajesBox.delete(id);
  }

  Future<List<Pesaje>> getPesajesByFechaRange(
    String animalId,
    DateTime inicio,
    DateTime fin,
  ) async {
    final List<Pesaje> pesajes = [];
    for (var value in _pesajesBox.values) {
      if (value['animalId'] == animalId) {
        final pesaje = _mapToPesaje(value);
        if (pesaje.fecha.isAfter(inicio) && pesaje.fecha.isBefore(fin)) {
          pesajes.add(pesaje);
        }
      }
    }
    pesajes.sort((a, b) => b.fecha.compareTo(a.fecha));
    return pesajes;
  }

  // ============ UTILIDADES ============

  /// Convierte Animal a Map para Hive
  Map<String, dynamic> _animalToMap(Animal animal) {
    return {
      'id': animal.id,
      'numeroArete': animal.numeroArete,
      'nombrePersonalizado': animal.nombrePersonalizado,
      'tipo': animal.tipo.toString().split('.').last,
      'sexo': animal.sexo.toString().split('.').last,
      'raza': animal.raza,
      'fechaNacimiento': animal.fechaNacimiento?.toIso8601String(),
      'notas': animal.notas,
      'precioCompra': animal.precioCompra,
      'precioVenta': animal.precioVenta,
      'costosExtra': animal.costosExtra,
      'ubicacionId': animal.ubicacionId,
      'vacunado': animal.vacunado,
      'fechaUltimaVacuna': animal.fechaUltimaVacuna?.toIso8601String(),
      'tipoVacuna': animal.tipoVacuna,
      'desparasitado': animal.desparasitado,
      'fechaUltimoDesparasitante':
          animal.fechaUltimoDesparasitante?.toIso8601String(),
      'tipoDesparasitante': animal.tipoDesparasitante,
      'tieneVitaminas': animal.tieneVitaminas,
      'fechaVitaminas': animal.fechaVitaminas?.toIso8601String(),
      'tieneOtrosTratamientos': animal.tieneOtrosTratamientos,
      'fechaOtrosTratamientos':
          animal.fechaOtrosTratamientos?.toIso8601String(),
      'descripcionOtrosTratamientos': animal.descripcionOtrosTratamientos,
      'estadoReproductivo':
          animal.estadoReproductivo.toString().split('.').last,
      'madreId': animal.madreId,
      'fotoPath': animal.fotoPath,
      'fechaRegistro': animal.fechaRegistro.toIso8601String(),
      'ultimaActualizacion': animal.ultimaActualizacion.toIso8601String(),
    };
  }

  /// Convierte Map a Animal desde Hive
  Animal _mapToAnimal(Map<dynamic, dynamic> map) {
    final costosExtra = <String, double>{};
    if (map['costosExtra'] != null && map['costosExtra'] is Map) {
      map['costosExtra'].forEach((key, value) {
        costosExtra[key.toString()] = (value as num).toDouble();
      });
    }

    return Animal(
      id: map['id'],
      numeroArete: map['numeroArete'],
      nombrePersonalizado: map['nombrePersonalizado'],
      tipo: TipoGanado.values.firstWhere(
        (e) => e.toString().split('.').last == map['tipo'],
      ),
      sexo: Sexo.values.firstWhere(
        (e) => e.toString().split('.').last == map['sexo'],
      ),
      raza: map['raza'],
      fechaNacimiento: map['fechaNacimiento'] != null
          ? DateTime.parse(map['fechaNacimiento'])
          : null,
      notas: map['notas'] ?? '',
      precioCompra: map['precioCompra'] is num
          ? (map['precioCompra'] as num).toDouble()
          : null,
      precioVenta: map['precioVenta'] is num
          ? (map['precioVenta'] as num).toDouble()
          : null,
      costosExtra: costosExtra,
      ubicacionId: map['ubicacionId'],
      vacunado: map['vacunado'] ?? false,
      fechaUltimaVacuna: map['fechaUltimaVacuna'] != null
          ? DateTime.parse(map['fechaUltimaVacuna'])
          : null,
      tipoVacuna: map['tipoVacuna'],
      desparasitado: map['desparasitado'] ?? false,
      fechaUltimoDesparasitante: map['fechaUltimoDesparasitante'] != null
          ? DateTime.parse(map['fechaUltimoDesparasitante'])
          : null,
      tipoDesparasitante: map['tipoDesparasitante'],
      tieneVitaminas: map['tieneVitaminas'] ?? false,
      fechaVitaminas: map['fechaVitaminas'] != null
          ? DateTime.parse(map['fechaVitaminas'])
          : null,
      tieneOtrosTratamientos: map['tieneOtrosTratamientos'] ?? false,
      fechaOtrosTratamientos: map['fechaOtrosTratamientos'] != null
          ? DateTime.parse(map['fechaOtrosTratamientos'])
          : null,
      descripcionOtrosTratamientos: map['descripcionOtrosTratamientos'],
      estadoReproductivo: EstadoReproductivo.values.firstWhere(
        (e) =>
            e.toString().split('.').last ==
            (map['estadoReproductivo'] ?? 'no_definido'),
        orElse: () => EstadoReproductivo.no_definido,
      ),
      madreId: map['madreId'],
      fotoPath: map['fotoPath'],
      fechaRegistro: map['fechaRegistro'] != null
          ? DateTime.parse(map['fechaRegistro'])
          : DateTime.now(),
      ultimaActualizacion: map['ultimaActualizacion'] != null
          ? DateTime.parse(map['ultimaActualizacion'])
          : DateTime.now(),
    );
  }

  /// Convierte Pesaje a Map para Hive
  Map<String, dynamic> _pesajeToMap(Pesaje pesaje) {
    return {
      'id': pesaje.id,
      'animalId': pesaje.animalId,
      'pesoKg': pesaje.pesoKg,
      'fecha': pesaje.fecha.toIso8601String(),
      'notas': pesaje.notas,
    };
  }

  /// Convierte Map a Pesaje desde Hive
  Pesaje _mapToPesaje(Map<dynamic, dynamic> map) {
    return Pesaje(
      id: map['id'],
      animalId: map['animalId'],
      pesoKg: (map['pesoKg'] as num).toDouble(),
      fecha: DateTime.parse(map['fecha']),
      notas: map['notas'],
    );
  }

  // ============ UBICACIONES ============

  Future<List<Ubicacion>> getAllUbicaciones() async {
    final List<Ubicacion> ubicaciones = [];
    for (var value in _ubicacionesBox.values) {
      ubicaciones.add(_mapToUbicacion(value));
    }
    ubicaciones.sort((a, b) => a.nombre.compareTo(b.nombre));
    return ubicaciones;
  }

  Future<Ubicacion?> getUbicacionById(String id) async {
    final data = _ubicacionesBox.get(id);
    return data != null ? _mapToUbicacion(data) : null;
  }

  Future<void> insertUbicacion(Ubicacion ubicacion) async {
    await _ubicacionesBox.put(ubicacion.id, _ubicacionToMap(ubicacion));
  }

  Future<void> updateUbicacion(Ubicacion ubicacion) async {
    await _ubicacionesBox.put(ubicacion.id, _ubicacionToMap(ubicacion));
  }

  Future<void> deleteUbicacion(String id) async {
    // Actualiza animales que tenían esta ubicación
    for (int i = 0; i < _animalesBox.length; i++) {
      final key = _animalesBox.keyAt(i);
      final value = _animalesBox.getAt(i) as Map<dynamic, dynamic>;
      if (value['ubicacionId'] == id) {
        value['ubicacionId'] = null;
        await _animalesBox.put(key, value);
      }
    }
    await _ubicacionesBox.delete(id);
  }

  // ============ GANADERO ============

  Future<Ganadero?> getGanadero() async {
    if (_ganaderoBox.isEmpty) {
      return null;
    }
    final data = _ganaderoBox.getAt(0);
    return data != null ? _mapToGanadero(data) : null;
  }

  Future<void> saveGanadero(Ganadero ganadero) async {
    if (_ganaderoBox.isEmpty) {
      await _ganaderoBox.add(_ganaderoToMap(ganadero));
    } else {
      await _ganaderoBox.putAt(0, _ganaderoToMap(ganadero));
    }
  }

  /// Convierte Ubicacion a Map para Hive
  Map<String, dynamic> _ubicacionToMap(Ubicacion ubicacion) {
    return {
      'id': ubicacion.id,
      'nombre': ubicacion.nombre,
      'descripcion': ubicacion.descripcion,
      'tipo': ubicacion.tipo,
      'fechaRegistro': ubicacion.fechaRegistro.toIso8601String(),
      'ultimaActualizacion': ubicacion.ultimaActualizacion.toIso8601String(),
    };
  }

  /// Convierte Map a Ubicacion desde Hive
  Ubicacion _mapToUbicacion(Map<dynamic, dynamic> map) {
    return Ubicacion(
      id: map['id'],
      nombre: map['nombre'],
      descripcion: map['descripcion'],
      tipo: map['tipo'] ?? 'otro',
      fotoPath: map['fotoPath'],
      fechaRegistro: map['fechaRegistro'] != null
          ? DateTime.parse(map['fechaRegistro'])
          : DateTime.now(),
      ultimaActualizacion: map['ultimaActualizacion'] != null
          ? DateTime.parse(map['ultimaActualizacion'])
          : DateTime.now(),
    );
  }

  /// Convierte Ganadero a Map para Hive
  Map<String, dynamic> _ganaderoToMap(Ganadero ganadero) {
    return {
      'id': ganadero.id,
      'nombre': ganadero.nombre,
      'marcaHerrado': ganadero.marcaHerrado,
      'senalOreja': ganadero.senalOreja,
      'upp': ganadero.upp,
      'telefono': ganadero.telefono,
      'direccion': ganadero.direccion,
      'notas': ganadero.notas,
      'fechaRegistro': ganadero.fechaRegistro.toIso8601String(),
      'ultimaActualizacion': ganadero.ultimaActualizacion.toIso8601String(),
    };
  }

  /// Convierte Map a Ganadero desde Hive
  Ganadero _mapToGanadero(Map<dynamic, dynamic> map) {
    return Ganadero(
      id: map['id'],
      nombre: map['nombre'],
      marcaHerrado: map['marcaHerrado'],
      senalOreja: map['senalOreja'],
      upp: map['upp'],
      telefono: map['telefono'],
      direccion: map['direccion'],
      notas: map['notas'],
      fechaRegistro: DateTime.parse(map['fechaRegistro']),
      ultimaActualizacion: DateTime.parse(map['ultimaActualizacion']),
    );
  }

  /// Limpia la base de datos (para testing)
  Future<void> clearDatabase() async {
    await _animalesBox.clear();
    await _pesajesBox.clear();
    await _ubicacionesBox.clear();
    await _ganaderoBox.clear();
  }

  /// Cierra la base de datos
  Future<void> close() async {
    await Hive.close();
  }
}
