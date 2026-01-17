import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'evento_mantenimiento_entity.g.dart';

/// Tipos de eventos de mantenimiento
enum TipoEventoMantenimiento {
  vacunacion,
  desparasitacion,
  vitaminas,
  control_veterinario,
  limpieza_corrales,
  alimentacion_especial,
  otro,
}

/// Entidad de Evento de Mantenimiento para Isar
@collection
class EventoMantenimientoEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID del evento para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Tipo de evento
  @enumerated
  late TipoEventoMantenimiento tipo;

  /// Descripción del evento
  late String descripcion;

  /// Fecha del evento
  @Index()
  late DateTime fecha;

  /// Fecha del próximo evento (para seguimiento)
  DateTime? proximaFecha;
  DateTime? proximaDosis;

  /// Observaciones/Notas
  String? notas;
  String? observaciones;

  /// Responsable/Veterinario
  String? responsable;
  String? veterinario;
  String? medicamento;
  String? dosisAplicada;
  String? rutaAplicacion;

  /// Costo asociado
  double? costo;

  /// Fecha de creación
  late DateTime fechaCreacion;

  /// Fecha de última actualización
  late DateTime fechaActualizacion;

  /// Sincronizado con servidor
  bool sincronizado = false;

  /// ID remoto (para sincronización)
  String? idRemoto;

  /// Campos de auditoría
  DateTime? fechaSincronizacion;
  String? hashContenido;

  EventoMantenimientoEntity({
    required this.animalUuid,
    required this.tipo,
    required this.descripcion,
    required this.fecha,
    this.proximaFecha,
    this.proximaDosis,
    this.notas,
    this.observaciones,
    this.responsable,
    this.veterinario,
    this.medicamento,
    this.dosisAplicada,
    this.rutaAplicacion,
    this.costo,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();
  }

  /// Crear una copia del evento
  EventoMantenimientoEntity copyWith({
    String? uuid,
    String? animalUuid,
    TipoEventoMantenimiento? tipo,
    String? descripcion,
    DateTime? fecha,
    DateTime? proximaFecha,
    DateTime? proximaDosis,
    String? notas,
    String? observaciones,
    String? responsable,
    String? veterinario,
    String? medicamento,
    String? dosisAplicada,
    String? rutaAplicacion,
    double? costo,
    bool? sincronizado,
    String? idRemoto,
  }) {
    return EventoMantenimientoEntity(
      animalUuid: animalUuid ?? this.animalUuid,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      fecha: fecha ?? this.fecha,
      proximaFecha: proximaFecha ?? this.proximaFecha,
      proximaDosis: proximaDosis ?? this.proximaDosis,
      notas: notas ?? this.notas,
      observaciones: observaciones ?? this.observaciones,
      responsable: responsable ?? this.responsable,
      veterinario: veterinario ?? this.veterinario,
      medicamento: medicamento ?? this.medicamento,
      dosisAplicada: dosisAplicada ?? this.dosisAplicada,
      rutaAplicacion: rutaAplicacion ?? this.rutaAplicacion,
      costo: costo ?? this.costo,
    )
      ..id = this.id
      ..uuid = uuid ?? this.uuid
      ..fechaCreacion = this.fechaCreacion
      ..fechaActualizacion = DateTime.now()
      ..sincronizado = sincronizado ?? this.sincronizado
      ..idRemoto = idRemoto ?? this.idRemoto
      ..fechaSincronizacion = this.fechaSincronizacion
      ..hashContenido = this.hashContenido;
  }
}
