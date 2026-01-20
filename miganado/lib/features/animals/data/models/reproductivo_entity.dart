import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'reproductivo_entity.g.dart';

@collection
class ReproductivEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Estado reproductivo
  late String
      estado; // "Virgen", "Gestante", "Lactante", "En pausa", "Descartada"
  late DateTime? fechaUltimoEstro;

  // Empadres / Servicios
  @ignore
  late List<EmpadreData> empadres;

  // Partos
  @ignore
  late List<PartoData> partos;

  // Información de preñez actual (si aplica)
  DateTime? fechaEmpadreActual;
  DateTime? fechaPartoEstimada;
  String? sementalUuid; // UUID del semental usado
  String? observacionesEmpadre;

  // Historial reproductivo
  int totalPartos = 0;
  int totalCrias = 0;
  DateTime? primerParto;
  DateTime? ultimoParto;

  // Notas
  String? observaciones;

  // Auditoría
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;
  late String registradoPor;

  ReproductivEntity({
    required this.animalUuid,
    required this.estado,
    required this.registradoPor,
    this.fechaUltimoEstro,
    this.empadres = const [],
    this.partos = const [],
    this.fechaEmpadreActual,
    this.fechaPartoEstimada,
    this.sementalUuid,
    this.observacionesEmpadre,
    this.observaciones,
  }) {
    uuid = const Uuid().v4();
    fechaRegistro = DateTime.now();
    fechaActualizacion = DateTime.now();
    _actualizarEstadisticas();
  }

  void _actualizarEstadisticas() {
    totalPartos = partos.length;
    totalCrias = partos.fold(0, (sum, parto) => sum + (parto.numeroCrias ?? 0));
    primerParto = partos.isNotEmpty
        ? partos.map((p) => p.fecha).reduce((a, b) => a.isBefore(b) ? a : b)
        : null;
    ultimoParto = partos.isNotEmpty
        ? partos.map((p) => p.fecha).reduce((a, b) => a.isAfter(b) ? a : b)
        : null;
  }

  ReproductivEntity copyWith({
    String? estado,
    DateTime? fechaUltimoEstro,
    List<EmpadreData>? empadres,
    List<PartoData>? partos,
    DateTime? fechaEmpadreActual,
    DateTime? fechaPartoEstimada,
    String? sementalUuid,
    String? observacionesEmpadre,
    String? observaciones,
  }) {
    return ReproductivEntity(
      animalUuid: animalUuid,
      estado: estado ?? this.estado,
      registradoPor: registradoPor,
      fechaUltimoEstro: fechaUltimoEstro ?? this.fechaUltimoEstro,
      empadres: empadres ?? this.empadres,
      partos: partos ?? this.partos,
      fechaEmpadreActual: fechaEmpadreActual ?? this.fechaEmpadreActual,
      fechaPartoEstimada: fechaPartoEstimada ?? this.fechaPartoEstimada,
      sementalUuid: sementalUuid ?? this.sementalUuid,
      observacionesEmpadre: observacionesEmpadre ?? this.observacionesEmpadre,
      observaciones: observaciones ?? this.observaciones,
    )
      ..id = this.id
      ..uuid = uuid
      ..fechaRegistro = this.fechaRegistro
      ..fechaActualizacion = DateTime.now()
      ..totalPartos = this.totalPartos
      ..totalCrias = this.totalCrias
      ..primerParto = this.primerParto
      ..ultimoParto = this.ultimoParto;
  }
}

/// Datos de empadre
class EmpadreData {
  final DateTime fecha;
  final String sementalUuid;
  final String? metodo; // "Natural", "Inseminación"
  final String? resultado; // "Positivo", "Negativo"
  final String? observaciones;

  EmpadreData({
    required this.fecha,
    required this.sementalUuid,
    this.metodo,
    this.resultado,
    this.observaciones,
  });
}

/// Datos de parto
class PartoData {
  final DateTime fecha;
  final int? numeroCrias;
  final String? tipoParto; // "Simple", "Gemelar", "Triple"
  final List<String>? sexoCrias; // ["M", "H"] - Macho, Hembra
  final String? resultado; // "Exitoso", "Complicado", "Con perdida"
  final String? complicaciones;
  final String? observaciones;

  PartoData({
    required this.fecha,
    this.numeroCrias,
    this.tipoParto,
    this.sexoCrias,
    this.resultado,
    this.complicaciones,
    this.observaciones,
  });
}
