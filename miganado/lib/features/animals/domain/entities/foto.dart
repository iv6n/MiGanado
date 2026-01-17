class Foto {
  final String uuid;
  final String animalUuid;
  final String rutaLocal;
  final DateTime fechaCaptura;
  final String? descripcion;
  final String? tituloFoto;
  final String registradoPor;
  final DateTime fechaRegistro;
  final DateTime? fechaActualizacion;

  Foto({
    required this.uuid,
    required this.animalUuid,
    required this.rutaLocal,
    required this.fechaCaptura,
    this.descripcion,
    this.tituloFoto,
    required this.registradoPor,
    required this.fechaRegistro,
    this.fechaActualizacion,
  });

  factory Foto.fromEntity(dynamic entity) {
    return Foto(
      uuid: entity.uuid,
      animalUuid: entity.animalUuid,
      rutaLocal: entity.rutaLocal,
      fechaCaptura: entity.fechaCaptura,
      descripcion: entity.descripcion,
      tituloFoto: entity.tituloFoto,
      registradoPor: entity.registradoPor,
      fechaRegistro: entity.fechaRegistro,
      fechaActualizacion: entity.fechaActualizacion,
    );
  }

  dynamic toEntity() {
    // Será implementado cuando se importe FotoEntity
    return {
      'uuid': uuid,
      'animalUuid': animalUuid,
      'rutaLocal': rutaLocal,
      'fechaCaptura': fechaCaptura,
      'descripcion': descripcion,
      'tituloFoto': tituloFoto,
      'registradoPor': registradoPor,
      'fechaRegistro': fechaRegistro,
      'fechaActualizacion': fechaActualizacion,
    };
  }

  Foto copyWith({
    String? uuid,
    String? animalUuid,
    String? rutaLocal,
    DateTime? fechaCaptura,
    String? descripcion,
    String? tituloFoto,
    String? registradoPor,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
  }) {
    return Foto(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      rutaLocal: rutaLocal ?? this.rutaLocal,
      fechaCaptura: fechaCaptura ?? this.fechaCaptura,
      descripcion: descripcion ?? this.descripcion,
      tituloFoto: tituloFoto ?? this.tituloFoto,
      registradoPor: registradoPor ?? this.registradoPor,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }
}
