import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'ganadero_entity.g.dart';

/// Entidad de Ganadero (Farmer) para Isar
@collection
class GanaderoEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID del ganadero para sincronización
  @Index(unique: true)
  late String uuid;

  /// Nombre del ganadero
  late String name;

  /// Teléfono
  String? phone;

  /// Email
  @Index(unique: true)
  String? email;

  /// Ubicación
  String? location;

  /// Notas adicionales
  String? notes;

  /// Número de animales en el hato
  int? animalCount;

  /// Tipo de producción (lechero, carne, etc)
  String? productionType;

  /// Fecha de creación
  late DateTime creationDate;

  /// Fecha de última actualización
  late DateTime updateDate;

  /// Sincronizado con servidor
  bool synced = false;

  /// ID remoto (para sincronización)
  String? remoteId;

  /// Campos de auditoría
  DateTime? syncDate;
  String? contentHash;

  /// Constructor
  GanaderoEntity({
    required String nombre,
    String? telefono,
    String? correo,
    String? ubicacion,
    String? notas,
    int? cantidadAnimales,
    String? tipoProduccion,
  }) {
    name = nombre;
    phone = telefono;
    email = correo;
    location = ubicacion;
    notes = notas;
    animalCount = cantidadAnimales;
    productionType = tipoProduccion;

    uuid = const Uuid().v4();
    creationDate = DateTime.now();
    updateDate = DateTime.now();
  }

  /// Factory constructor para crear GanaderoEntity con parámetros en español
  factory GanaderoEntity.fromSpanish({
    required String nombre,
    String? telefono,
    String? correo,
    String? ubicacion,
    String? notas,
    int? cantidadAnimales,
    String? tipoProduccion,
  }) {
    return GanaderoEntity(
      nombre: nombre,
      telefono: telefono,
      correo: correo,
      ubicacion: ubicacion,
      notas: notas,
      cantidadAnimales: cantidadAnimales,
      tipoProduccion: tipoProduccion,
    );
  }

  /// Crear una copia del ganadero
  GanaderoEntity copyWith({
    String? nombre,
    String? telefono,
    String? correo,
    String? ubicacion,
    String? notas,
    int? cantidadAnimales,
    String? tipoProduccion,
    bool? synced,
    String? remoteId,
  }) {
    return GanaderoEntity(
      nombre: nombre ?? this.name,
      telefono: telefono ?? this.phone,
      correo: correo ?? this.email,
      ubicacion: ubicacion ?? this.location,
      notas: notas ?? this.notes,
      cantidadAnimales: cantidadAnimales ?? this.animalCount,
      tipoProduccion: tipoProduccion ?? this.productionType,
    )
      ..id = id
      ..uuid = uuid
      ..creationDate = creationDate
      ..updateDate = DateTime.now()
      ..synced = synced ?? this.synced
      ..remoteId = remoteId ?? this.remoteId
      ..syncDate = syncDate
      ..contentHash = contentHash;
  }

  /// ============ SPANISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias para compatibilidad con UI en español: nombre
  String get nombre => name;

  /// Alias para compatibilidad con UI en español: telefono
  String? get telefono => phone;

  /// Alias para compatibilidad con UI en español: correo
  String? get correo => email;

  /// Alias para compatibilidad con UI en español: ubicacion
  String? get ubicacion => location;

  /// Alias para compatibilidad con UI en español: notas
  String? get notas => notes;

  /// Alias para compatibilidad con UI en español: cantidadAnimales
  int? get cantidadAnimales => animalCount;

  /// Alias para compatibilidad con UI en español: tipoProduccion
  String? get tipoProduccion => productionType;

  /// Alias para compatibilidad con UI en español: fechaCreacion
  DateTime get fechaCreacion => creationDate;

  /// Alias para compatibilidad con UI en español: fechaActualizacion
  DateTime get fechaActualizacion => updateDate;
}
