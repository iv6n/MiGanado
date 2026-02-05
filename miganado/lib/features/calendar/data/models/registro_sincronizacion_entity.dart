import 'package:isar/isar.dart';

part 'registro_sincronizacion_entity.g.dart';

/// Entidad para auditar y registrar cambios en datos
/// Permite trazabilidad completa de quién, qué, cuándo y por qué cambió
@collection
class RegistroSincronizacionEntity {
  /// Identificador único auto-incrementado
  Id id = Isar.autoIncrement;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// Tipo de entidad que cambió (ej: EventoGanaderoEntity, AnimalEntity)
  @Index()
  late String entidadTipo;

  /// UUID de la entidad específica
  @Index()
  late String entidadUuid;

  /// Acción realizada
  @enumerated
  late TipoAccion accion;

  /// Campo que cambió (null si es creación/eliminación de toda la entidad)
  String? campo;

  /// Valor anterior (null si es creación)
  String? valorAnterior;

  /// Valor nuevo (null si es eliminación)
  String? valorNuevo;

  /// Usuario que realizó el cambio
  late String usuario;

  /// Fecha del cambio
  @Index()
  late DateTime fechaRegistro;

  /// Razón del cambio (opcional, ej: "Reprogramado por cambio de ubicación")
  String? razon;

  /// Metadatos adicionales (JSON)
  String? metadataJson;

  /// Si fue sincronizado con servidor
  bool sincronizado = false;

  /// Fecha de sincronización
  DateTime? fechaSincronizacion;

  /// Constructor
  RegistroSincronizacionEntity({
    required this.uuid,
    required this.entidadTipo,
    required this.entidadUuid,
    required this.accion,
    this.campo,
    this.valorAnterior,
    this.valorNuevo,
    required this.usuario,
    required this.fechaRegistro,
    this.razon,
    this.metadataJson,
    this.sincronizado = false,
  });

  /// Crear copia con cambios
  RegistroSincronizacionEntity copyWith({
    String? uuid,
    String? entidadTipo,
    String? entidadUuid,
    TipoAccion? accion,
    String? campo,
    String? valorAnterior,
    String? valorNuevo,
    String? usuario,
    DateTime? fechaRegistro,
    String? razon,
    String? metadataJson,
    bool? sincronizado,
    DateTime? fechaSincronizacion,
  }) {
    return RegistroSincronizacionEntity(
      uuid: uuid ?? this.uuid,
      entidadTipo: entidadTipo ?? this.entidadTipo,
      entidadUuid: entidadUuid ?? this.entidadUuid,
      accion: accion ?? this.accion,
      campo: campo ?? this.campo,
      valorAnterior: valorAnterior ?? this.valorAnterior,
      valorNuevo: valorNuevo ?? this.valorNuevo,
      usuario: usuario ?? this.usuario,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      razon: razon ?? this.razon,
      metadataJson: metadataJson ?? this.metadataJson,
      sincronizado: sincronizado ?? this.sincronizado,
    )
      ..id = id
      ..fechaSincronizacion = fechaSincronizacion ?? this.fechaSincronizacion;
  }

  /// Obtener descripción legible de la acción
  String obtenerDescripcion() {
    switch (accion) {
      case TipoAccion.creado:
        return 'Creado: $entidadTipo';
      case TipoAccion.actualizado:
        return 'Actualizado: $entidadTipo ($campo)';
      case TipoAccion.eliminado:
        return 'Eliminado: $entidadTipo';
      case TipoAccion.sincronizado:
        return 'Sincronizado: $entidadTipo';
      case TipoAccion.generado_automatico:
        return 'Generado automáticamente: $entidadTipo';
      case TipoAccion.migrado:
        return 'Migrado: $entidadTipo';
    }
  }
}

/// Tipos de acciones auditadas
enum TipoAccion {
  /// Entidad creada
  creado,

  /// Campo actualizado
  actualizado,

  /// Entidad eliminada
  eliminado,

  /// Sincronizado con servidor
  sincronizado,

  /// Generado automáticamente por sistema
  generado_automatico,

  /// Migrado desde otra entidad
  migrado,
}
