// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evento_ganadero_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventoGanaderoEntityCollection on Isar {
  IsarCollection<EventoGanaderoEntity> get eventoGanaderoEntitys =>
      this.collection();
}

const EventoGanaderoEntitySchema = CollectionSchema(
  name: r'EventoGanaderoEntity',
  id: -2478645101671133283,
  properties: {
    r'animalId': PropertySchema(
      id: 0,
      name: r'animalId',
      type: IsarType.string,
    ),
    r'categoria': PropertySchema(
      id: 1,
      name: r'categoria',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntitycategoriaEnumValueMap,
    ),
    r'completadoATiempo': PropertySchema(
      id: 2,
      name: r'completadoATiempo',
      type: IsarType.bool,
    ),
    r'costoAsociado': PropertySchema(
      id: 3,
      name: r'costoAsociado',
      type: IsarType.double,
    ),
    r'datosEspecificosJson': PropertySchema(
      id: 4,
      name: r'datosEspecificosJson',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 5,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'descripcionCosto': PropertySchema(
      id: 6,
      name: r'descripcionCosto',
      type: IsarType.string,
    ),
    r'descripcionSeguimiento': PropertySchema(
      id: 7,
      name: r'descripcionSeguimiento',
      type: IsarType.string,
    ),
    r'diasHastaEvento': PropertySchema(
      id: 8,
      name: r'diasHastaEvento',
      type: IsarType.long,
    ),
    r'documentosAdjuntos': PropertySchema(
      id: 9,
      name: r'documentosAdjuntos',
      type: IsarType.stringList,
    ),
    r'duracionEstimadoMinutos': PropertySchema(
      id: 10,
      name: r'duracionEstimadoMinutos',
      type: IsarType.long,
    ),
    r'esAutomatico': PropertySchema(
      id: 11,
      name: r'esAutomatico',
      type: IsarType.bool,
    ),
    r'esRecurrente': PropertySchema(
      id: 12,
      name: r'esRecurrente',
      type: IsarType.bool,
    ),
    r'esUrgente': PropertySchema(
      id: 13,
      name: r'esUrgente',
      type: IsarType.bool,
    ),
    r'estaAtrasado': PropertySchema(
      id: 14,
      name: r'estaAtrasado',
      type: IsarType.bool,
    ),
    r'estado': PropertySchema(
      id: 15,
      name: r'estado',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntityestadoEnumValueMap,
    ),
    r'etiquetas': PropertySchema(
      id: 16,
      name: r'etiquetas',
      type: IsarType.stringList,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 17,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 18,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaEjecutada': PropertySchema(
      id: 19,
      name: r'fechaEjecutada',
      type: IsarType.dateTime,
    ),
    r'fechaProgramada': PropertySchema(
      id: 20,
      name: r'fechaProgramada',
      type: IsarType.dateTime,
    ),
    r'fechaSeguimiento': PropertySchema(
      id: 21,
      name: r'fechaSeguimiento',
      type: IsarType.dateTime,
    ),
    r'fechaSincronizacion': PropertySchema(
      id: 22,
      name: r'fechaSincronizacion',
      type: IsarType.dateTime,
    ),
    r'fechaVencimiento': PropertySchema(
      id: 23,
      name: r'fechaVencimiento',
      type: IsarType.dateTime,
    ),
    r'fotosEvidencia': PropertySchema(
      id: 24,
      name: r'fotosEvidencia',
      type: IsarType.stringList,
    ),
    r'loteId': PropertySchema(
      id: 25,
      name: r'loteId',
      type: IsarType.string,
    ),
    r'nombreTipoEvento': PropertySchema(
      id: 26,
      name: r'nombreTipoEvento',
      type: IsarType.string,
    ),
    r'observacionesPostEvent': PropertySchema(
      id: 27,
      name: r'observacionesPostEvent',
      type: IsarType.string,
    ),
    r'observacionesPrevia': PropertySchema(
      id: 28,
      name: r'observacionesPrevia',
      type: IsarType.string,
    ),
    r'patronRecurrencia': PropertySchema(
      id: 29,
      name: r'patronRecurrencia',
      type: IsarType.string,
    ),
    r'prioridad': PropertySchema(
      id: 30,
      name: r'prioridad',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntityprioridadEnumValueMap,
    ),
    r'registrosCambios': PropertySchema(
      id: 31,
      name: r'registrosCambios',
      type: IsarType.objectList,
      target: r'IsarRegistroCambio',
    ),
    r'requiereSeguimiento': PropertySchema(
      id: 32,
      name: r'requiereSeguimiento',
      type: IsarType.bool,
    ),
    r'responsable': PropertySchema(
      id: 33,
      name: r'responsable',
      type: IsarType.string,
    ),
    r'sincronizado': PropertySchema(
      id: 34,
      name: r'sincronizado',
      type: IsarType.bool,
    ),
    r'tipoAmbiental': PropertySchema(
      id: 35,
      name: r'tipoAmbiental',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntitytipoAmbientalEnumValueMap,
    ),
    r'tipoProductivo': PropertySchema(
      id: 36,
      name: r'tipoProductivo',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntitytipoProductivoEnumValueMap,
    ),
    r'tipoReproductivo': PropertySchema(
      id: 37,
      name: r'tipoReproductivo',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntitytipoReproductivoEnumValueMap,
    ),
    r'tipoSanitario': PropertySchema(
      id: 38,
      name: r'tipoSanitario',
      type: IsarType.byte,
      enumMap: _EventoGanaderoEntitytipoSanitarioEnumValueMap,
    ),
    r'titulo': PropertySchema(
      id: 39,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'ubicacionId': PropertySchema(
      id: 40,
      name: r'ubicacionId',
      type: IsarType.string,
    ),
    r'usuarioActualizacion': PropertySchema(
      id: 41,
      name: r'usuarioActualizacion',
      type: IsarType.string,
    ),
    r'usuarioCreacion': PropertySchema(
      id: 42,
      name: r'usuarioCreacion',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 43,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _eventoGanaderoEntityEstimateSize,
  serialize: _eventoGanaderoEntitySerialize,
  deserialize: _eventoGanaderoEntityDeserialize,
  deserializeProp: _eventoGanaderoEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'uuid': IndexSchema(
      id: 2134397340427724972,
      name: r'uuid',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'uuid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'IsarRegistroCambio': IsarRegistroCambioSchema},
  getId: _eventoGanaderoEntityGetId,
  getLinks: _eventoGanaderoEntityGetLinks,
  attach: _eventoGanaderoEntityAttach,
  version: '3.1.0+1',
);

int _eventoGanaderoEntityEstimateSize(
  EventoGanaderoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.animalId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.datosEspecificosJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descripcionCosto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descripcionSeguimiento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.documentosAdjuntos.length * 3;
  {
    for (var i = 0; i < object.documentosAdjuntos.length; i++) {
      final value = object.documentosAdjuntos[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.etiquetas.length * 3;
  {
    for (var i = 0; i < object.etiquetas.length; i++) {
      final value = object.etiquetas[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.fotosEvidencia.length * 3;
  {
    for (var i = 0; i < object.fotosEvidencia.length; i++) {
      final value = object.fotosEvidencia[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.loteId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.nombreTipoEvento.length * 3;
  {
    final value = object.observacionesPostEvent;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observacionesPrevia;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.patronRecurrencia;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.registrosCambios.length * 3;
  {
    final offsets = allOffsets[IsarRegistroCambio]!;
    for (var i = 0; i < object.registrosCambios.length; i++) {
      final value = object.registrosCambios[i];
      bytesCount +=
          IsarRegistroCambioSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.responsable;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.titulo.length * 3;
  {
    final value = object.ubicacionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuarioActualizacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuarioCreacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _eventoGanaderoEntitySerialize(
  EventoGanaderoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalId);
  writer.writeByte(offsets[1], object.categoria.index);
  writer.writeBool(offsets[2], object.completadoATiempo);
  writer.writeDouble(offsets[3], object.costoAsociado);
  writer.writeString(offsets[4], object.datosEspecificosJson);
  writer.writeString(offsets[5], object.descripcion);
  writer.writeString(offsets[6], object.descripcionCosto);
  writer.writeString(offsets[7], object.descripcionSeguimiento);
  writer.writeLong(offsets[8], object.diasHastaEvento);
  writer.writeStringList(offsets[9], object.documentosAdjuntos);
  writer.writeLong(offsets[10], object.duracionEstimadoMinutos);
  writer.writeBool(offsets[11], object.esAutomatico);
  writer.writeBool(offsets[12], object.esRecurrente);
  writer.writeBool(offsets[13], object.esUrgente);
  writer.writeBool(offsets[14], object.estaAtrasado);
  writer.writeByte(offsets[15], object.estado.index);
  writer.writeStringList(offsets[16], object.etiquetas);
  writer.writeDateTime(offsets[17], object.fechaActualizacion);
  writer.writeDateTime(offsets[18], object.fechaCreacion);
  writer.writeDateTime(offsets[19], object.fechaEjecutada);
  writer.writeDateTime(offsets[20], object.fechaProgramada);
  writer.writeDateTime(offsets[21], object.fechaSeguimiento);
  writer.writeDateTime(offsets[22], object.fechaSincronizacion);
  writer.writeDateTime(offsets[23], object.fechaVencimiento);
  writer.writeStringList(offsets[24], object.fotosEvidencia);
  writer.writeString(offsets[25], object.loteId);
  writer.writeString(offsets[26], object.nombreTipoEvento);
  writer.writeString(offsets[27], object.observacionesPostEvent);
  writer.writeString(offsets[28], object.observacionesPrevia);
  writer.writeString(offsets[29], object.patronRecurrencia);
  writer.writeByte(offsets[30], object.prioridad.index);
  writer.writeObjectList<IsarRegistroCambio>(
    offsets[31],
    allOffsets,
    IsarRegistroCambioSchema.serialize,
    object.registrosCambios,
  );
  writer.writeBool(offsets[32], object.requiereSeguimiento);
  writer.writeString(offsets[33], object.responsable);
  writer.writeBool(offsets[34], object.sincronizado);
  writer.writeByte(offsets[35], object.tipoAmbiental.index);
  writer.writeByte(offsets[36], object.tipoProductivo.index);
  writer.writeByte(offsets[37], object.tipoReproductivo.index);
  writer.writeByte(offsets[38], object.tipoSanitario.index);
  writer.writeString(offsets[39], object.titulo);
  writer.writeString(offsets[40], object.ubicacionId);
  writer.writeString(offsets[41], object.usuarioActualizacion);
  writer.writeString(offsets[42], object.usuarioCreacion);
  writer.writeString(offsets[43], object.uuid);
}

EventoGanaderoEntity _eventoGanaderoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventoGanaderoEntity(
    animalId: reader.readStringOrNull(offsets[0]),
    categoria: _EventoGanaderoEntitycategoriaValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        CategoriaEvento.sanitaria,
    costoAsociado: reader.readDoubleOrNull(offsets[3]),
    datosEspecificosJson: reader.readStringOrNull(offsets[4]),
    descripcion: reader.readStringOrNull(offsets[5]),
    descripcionCosto: reader.readStringOrNull(offsets[6]),
    descripcionSeguimiento: reader.readStringOrNull(offsets[7]),
    duracionEstimadoMinutos: reader.readLongOrNull(offsets[10]),
    esAutomatico: reader.readBoolOrNull(offsets[11]) ?? false,
    esRecurrente: reader.readBoolOrNull(offsets[12]) ?? false,
    estado: _EventoGanaderoEntityestadoValueEnumMap[
            reader.readByteOrNull(offsets[15])] ??
        EstadoEvento.pendiente,
    fechaActualizacion: reader.readDateTimeOrNull(offsets[17]),
    fechaCreacion: reader.readDateTimeOrNull(offsets[18]),
    fechaEjecutada: reader.readDateTimeOrNull(offsets[19]),
    fechaProgramada: reader.readDateTime(offsets[20]),
    fechaSeguimiento: reader.readDateTimeOrNull(offsets[21]),
    fechaSincronizacion: reader.readDateTimeOrNull(offsets[22]),
    fechaVencimiento: reader.readDateTimeOrNull(offsets[23]),
    loteId: reader.readStringOrNull(offsets[25]),
    observacionesPostEvent: reader.readStringOrNull(offsets[27]),
    observacionesPrevia: reader.readStringOrNull(offsets[28]),
    patronRecurrencia: reader.readStringOrNull(offsets[29]),
    prioridad: _EventoGanaderoEntityprioridadValueEnumMap[
            reader.readByteOrNull(offsets[30])] ??
        PrioridadEvento.baja,
    requiereSeguimiento: reader.readBoolOrNull(offsets[32]) ?? false,
    responsable: reader.readStringOrNull(offsets[33]),
    sincronizado: reader.readBoolOrNull(offsets[34]) ?? false,
    tipoAmbiental: _EventoGanaderoEntitytipoAmbientalValueEnumMap[
            reader.readByteOrNull(offsets[35])] ??
        EventoAmbiental.limpiezaInstalacion,
    tipoProductivo: _EventoGanaderoEntitytipoProductivoValueEnumMap[
            reader.readByteOrNull(offsets[36])] ??
        EventoProductivo.pesaje,
    tipoReproductivo: _EventoGanaderoEntitytipoReproductivoValueEnumMap[
            reader.readByteOrNull(offsets[37])] ??
        EventoReproductivo.inseminacionArtificial,
    tipoSanitario: _EventoGanaderoEntitytipoSanitarioValueEnumMap[
            reader.readByteOrNull(offsets[38])] ??
        EventoSanitario.vacunacion,
    titulo: reader.readString(offsets[39]),
    ubicacionId: reader.readStringOrNull(offsets[40]),
    usuarioActualizacion: reader.readStringOrNull(offsets[41]),
    usuarioCreacion: reader.readStringOrNull(offsets[42]),
    uuid: reader.readStringOrNull(offsets[43]),
  );
  object.id = id;
  return object;
}

P _eventoGanaderoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (_EventoGanaderoEntitycategoriaValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CategoriaEvento.sanitaria) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 12:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (_EventoGanaderoEntityestadoValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EstadoEvento.pendiente) as P;
    case 16:
      return (reader.readStringList(offset) ?? []) as P;
    case 17:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 18:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 19:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 20:
      return (reader.readDateTime(offset)) as P;
    case 21:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 22:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 23:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 24:
      return (reader.readStringList(offset) ?? []) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (_EventoGanaderoEntityprioridadValueEnumMap[
              reader.readByteOrNull(offset)] ??
          PrioridadEvento.baja) as P;
    case 31:
      return (reader.readObjectList<IsarRegistroCambio>(
            offset,
            IsarRegistroCambioSchema.deserialize,
            allOffsets,
            IsarRegistroCambio(),
          ) ??
          []) as P;
    case 32:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 35:
      return (_EventoGanaderoEntitytipoAmbientalValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EventoAmbiental.limpiezaInstalacion) as P;
    case 36:
      return (_EventoGanaderoEntitytipoProductivoValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EventoProductivo.pesaje) as P;
    case 37:
      return (_EventoGanaderoEntitytipoReproductivoValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EventoReproductivo.inseminacionArtificial) as P;
    case 38:
      return (_EventoGanaderoEntitytipoSanitarioValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EventoSanitario.vacunacion) as P;
    case 39:
      return (reader.readString(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readStringOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EventoGanaderoEntitycategoriaEnumValueMap = {
  'sanitaria': 0,
  'reproductiva': 1,
  'productiva': 2,
  'ambiental': 3,
};
const _EventoGanaderoEntitycategoriaValueEnumMap = {
  0: CategoriaEvento.sanitaria,
  1: CategoriaEvento.reproductiva,
  2: CategoriaEvento.productiva,
  3: CategoriaEvento.ambiental,
};
const _EventoGanaderoEntityestadoEnumValueMap = {
  'pendiente': 0,
  'realizado': 1,
  'vencido': 2,
  'cancelado': 3,
  'pospuesto': 4,
};
const _EventoGanaderoEntityestadoValueEnumMap = {
  0: EstadoEvento.pendiente,
  1: EstadoEvento.realizado,
  2: EstadoEvento.vencido,
  3: EstadoEvento.cancelado,
  4: EstadoEvento.pospuesto,
};
const _EventoGanaderoEntityprioridadEnumValueMap = {
  'baja': 0,
  'media': 1,
  'alta': 2,
  'critica': 3,
};
const _EventoGanaderoEntityprioridadValueEnumMap = {
  0: PrioridadEvento.baja,
  1: PrioridadEvento.media,
  2: PrioridadEvento.alta,
  3: PrioridadEvento.critica,
};
const _EventoGanaderoEntitytipoAmbientalEnumValueMap = {
  'limpiezaInstalacion': 0,
  'desinfeccion': 1,
  'mantenimientoInfraestructura': 2,
  'controlPlagas': 3,
  'preparacionPastizales': 4,
  'rotacionPotreros': 5,
  'reparacionCercas': 6,
  'abastecimientoAgua': 7,
  'controlContaminacion': 8,
  'otro': 9,
};
const _EventoGanaderoEntitytipoAmbientalValueEnumMap = {
  0: EventoAmbiental.limpiezaInstalacion,
  1: EventoAmbiental.desinfeccion,
  2: EventoAmbiental.mantenimientoInfraestructura,
  3: EventoAmbiental.controlPlagas,
  4: EventoAmbiental.preparacionPastizales,
  5: EventoAmbiental.rotacionPotreros,
  6: EventoAmbiental.reparacionCercas,
  7: EventoAmbiental.abastecimientoAgua,
  8: EventoAmbiental.controlContaminacion,
  9: EventoAmbiental.otro,
};
const _EventoGanaderoEntitytipoProductivoEnumValueMap = {
  'pesaje': 0,
  'ordeno': 1,
  'cambioAlimentacion': 2,
  'suplementacion': 3,
  'cortesCascos': 4,
  'esquila': 5,
  'controlProductivo': 6,
  'registroProduccion': 7,
  'cambioLote': 8,
  'otro': 9,
};
const _EventoGanaderoEntitytipoProductivoValueEnumMap = {
  0: EventoProductivo.pesaje,
  1: EventoProductivo.ordeno,
  2: EventoProductivo.cambioAlimentacion,
  3: EventoProductivo.suplementacion,
  4: EventoProductivo.cortesCascos,
  5: EventoProductivo.esquila,
  6: EventoProductivo.controlProductivo,
  7: EventoProductivo.registroProduccion,
  8: EventoProductivo.cambioLote,
  9: EventoProductivo.otro,
};
const _EventoGanaderoEntitytipoReproductivoEnumValueMap = {
  'inseminacionArtificial': 0,
  'montaNatural': 1,
  'deteccionCelo': 2,
  'ecografia': 3,
  'partoEsperado': 4,
  'partoRealizado': 5,
  'destete': 6,
  'revisionPostParto': 7,
  'controlPrenez': 8,
  'otro': 9,
};
const _EventoGanaderoEntitytipoReproductivoValueEnumMap = {
  0: EventoReproductivo.inseminacionArtificial,
  1: EventoReproductivo.montaNatural,
  2: EventoReproductivo.deteccionCelo,
  3: EventoReproductivo.ecografia,
  4: EventoReproductivo.partoEsperado,
  5: EventoReproductivo.partoRealizado,
  6: EventoReproductivo.destete,
  7: EventoReproductivo.revisionPostParto,
  8: EventoReproductivo.controlPrenez,
  9: EventoReproductivo.otro,
};
const _EventoGanaderoEntitytipoSanitarioEnumValueMap = {
  'vacunacion': 0,
  'desparasitacion': 1,
  'banioSanitario': 2,
  'vitaminizacion': 3,
  'revisionVeterinaria': 4,
  'tratamiento': 5,
  'curacion': 6,
  'inmunizacion': 7,
  'examenDiagnostico': 8,
  'otro': 9,
};
const _EventoGanaderoEntitytipoSanitarioValueEnumMap = {
  0: EventoSanitario.vacunacion,
  1: EventoSanitario.desparasitacion,
  2: EventoSanitario.banioSanitario,
  3: EventoSanitario.vitaminizacion,
  4: EventoSanitario.revisionVeterinaria,
  5: EventoSanitario.tratamiento,
  6: EventoSanitario.curacion,
  7: EventoSanitario.inmunizacion,
  8: EventoSanitario.examenDiagnostico,
  9: EventoSanitario.otro,
};

Id _eventoGanaderoEntityGetId(EventoGanaderoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eventoGanaderoEntityGetLinks(
    EventoGanaderoEntity object) {
  return [];
}

void _eventoGanaderoEntityAttach(
    IsarCollection<dynamic> col, Id id, EventoGanaderoEntity object) {
  object.id = id;
}

extension EventoGanaderoEntityByIndex on IsarCollection<EventoGanaderoEntity> {
  Future<EventoGanaderoEntity?> getByUuid(String? uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  EventoGanaderoEntity? getByUuidSync(String? uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String? uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String? uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<EventoGanaderoEntity?>> getAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<EventoGanaderoEntity?> getAllByUuidSync(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'uuid', values);
  }

  Future<int> deleteAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'uuid', values);
  }

  int deleteAllByUuidSync(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'uuid', values);
  }

  Future<Id> putByUuid(EventoGanaderoEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(EventoGanaderoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<EventoGanaderoEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<EventoGanaderoEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension EventoGanaderoEntityQueryWhereSort
    on QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QWhere> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EventoGanaderoEntityQueryWhere
    on QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QWhereClause> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [null],
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'uuid',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      uuidEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterWhereClause>
      uuidNotEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [],
              upper: [uuid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [uuid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [uuid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [],
              upper: [uuid],
              includeUpper: false,
            ));
      }
    });
  }
}

extension EventoGanaderoEntityQueryFilter on QueryBuilder<EventoGanaderoEntity,
    EventoGanaderoEntity, QFilterCondition> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'animalId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'animalId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'animalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      animalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      animalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> animalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> categoriaEqualTo(CategoriaEvento value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> categoriaGreaterThan(
    CategoriaEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> categoriaLessThan(
    CategoriaEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> categoriaBetween(
    CategoriaEvento lower,
    CategoriaEvento upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> completadoATiempoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completadoATiempo',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> completadoATiempoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completadoATiempo',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> completadoATiempoEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completadoATiempo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoAsociado',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoAsociado',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoAsociado',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoAsociado',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoAsociado',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> costoAsociadoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoAsociado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'datosEspecificosJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      datosEspecificosJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      datosEspecificosJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'datosEspecificosJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> datosEspecificosJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcionCosto',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcionCosto',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcionCosto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionCostoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcionCosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionCostoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcionCosto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionCosto',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionCostoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcionCosto',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcionSeguimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcionSeguimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcionSeguimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionSeguimientoContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcionSeguimiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      descripcionSeguimientoMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcionSeguimiento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionSeguimiento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> descripcionSeguimientoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcionSeguimiento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> diasHastaEventoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasHastaEvento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> diasHastaEventoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diasHastaEvento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> diasHastaEventoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diasHastaEvento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> diasHastaEventoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diasHastaEvento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentosAdjuntos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      documentosAdjuntosElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'documentosAdjuntos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      documentosAdjuntosElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'documentosAdjuntos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentosAdjuntos',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentosAdjuntos',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> documentosAdjuntosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentosAdjuntos',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duracionEstimadoMinutos',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duracionEstimadoMinutos',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duracionEstimadoMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duracionEstimadoMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duracionEstimadoMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> duracionEstimadoMinutosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duracionEstimadoMinutos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> esAutomaticoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esAutomatico',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> esRecurrenteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esRecurrente',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> esUrgenteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esUrgente',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> estaAtrasadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estaAtrasado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> estadoEqualTo(EstadoEvento value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> estadoGreaterThan(
    EstadoEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> estadoLessThan(
    EstadoEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> estadoBetween(
    EstadoEvento lower,
    EstadoEvento upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etiquetas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      etiquetasElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      etiquetasElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'etiquetas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> etiquetasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'etiquetas',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaActualizacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaActualizacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaCreacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaEjecutada',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaEjecutada',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaEjecutada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaEjecutada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaEjecutada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaEjecutadaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaEjecutada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaProgramadaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaProgramada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaProgramadaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaProgramada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaProgramadaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaProgramada',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaProgramadaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaProgramada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaSeguimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaSeguimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaSeguimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaSeguimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaSeguimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSeguimientoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaSeguimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaSincronizacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaSincronizacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaVencimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaVencimiento',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaVencimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaVencimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaVencimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fechaVencimientoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaVencimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fotosEvidencia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      fotosEvidenciaElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotosEvidencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      fotosEvidenciaElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fotosEvidencia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotosEvidencia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotosEvidencia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> fotosEvidenciaLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fotosEvidencia',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loteId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loteId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      loteIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      loteIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loteId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loteId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> loteIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loteId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreTipoEvento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      nombreTipoEventoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreTipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      nombreTipoEventoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreTipoEvento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreTipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> nombreTipoEventoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreTipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observacionesPostEvent',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observacionesPostEvent',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observacionesPostEvent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      observacionesPostEventContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observacionesPostEvent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      observacionesPostEventMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observacionesPostEvent',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesPostEvent',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPostEventIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observacionesPostEvent',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observacionesPrevia',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observacionesPrevia',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observacionesPrevia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      observacionesPreviaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observacionesPrevia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      observacionesPreviaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observacionesPrevia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesPrevia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> observacionesPreviaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observacionesPrevia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'patronRecurrencia',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'patronRecurrencia',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patronRecurrencia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      patronRecurrenciaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patronRecurrencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      patronRecurrenciaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patronRecurrencia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patronRecurrencia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> patronRecurrenciaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patronRecurrencia',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> prioridadEqualTo(PrioridadEvento value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> prioridadGreaterThan(
    PrioridadEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> prioridadLessThan(
    PrioridadEvento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> prioridadBetween(
    PrioridadEvento lower,
    PrioridadEvento upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prioridad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> registrosCambiosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'registrosCambios',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> requiereSeguimientoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requiereSeguimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'responsable',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      responsableContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      responsableMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'responsable',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> responsableIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> sincronizadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sincronizado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoAmbientalEqualTo(EventoAmbiental value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoAmbiental',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoAmbientalGreaterThan(
    EventoAmbiental value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoAmbiental',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoAmbientalLessThan(
    EventoAmbiental value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoAmbiental',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoAmbientalBetween(
    EventoAmbiental lower,
    EventoAmbiental upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoAmbiental',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoProductivoEqualTo(EventoProductivo value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoProductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoProductivoGreaterThan(
    EventoProductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoProductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoProductivoLessThan(
    EventoProductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoProductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoProductivoBetween(
    EventoProductivo lower,
    EventoProductivo upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoProductivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoReproductivoEqualTo(EventoReproductivo value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoReproductivoGreaterThan(
    EventoReproductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoReproductivoLessThan(
    EventoReproductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoReproductivoBetween(
    EventoReproductivo lower,
    EventoReproductivo upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoReproductivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoSanitarioEqualTo(EventoSanitario value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoSanitario',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoSanitarioGreaterThan(
    EventoSanitario value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoSanitario',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoSanitarioLessThan(
    EventoSanitario value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoSanitario',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tipoSanitarioBetween(
    EventoSanitario lower,
    EventoSanitario upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoSanitario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      tituloMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ubicacionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      ubicacionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      ubicacionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ubicacionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> ubicacionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioActualizacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      usuarioActualizacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      usuarioActualizacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioActualizacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioActualizacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      usuarioCreacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      usuarioCreacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioCreacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> usuarioCreacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
      QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension EventoGanaderoEntityQueryObject on QueryBuilder<EventoGanaderoEntity,
    EventoGanaderoEntity, QFilterCondition> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity,
          QAfterFilterCondition>
      registrosCambiosElement(FilterQuery<IsarRegistroCambio> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'registrosCambios');
    });
  }
}

extension EventoGanaderoEntityQueryLinks on QueryBuilder<EventoGanaderoEntity,
    EventoGanaderoEntity, QFilterCondition> {}

extension EventoGanaderoEntityQuerySortBy
    on QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QSortBy> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByAnimalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByAnimalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCompletadoATiempo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completadoATiempo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCompletadoATiempoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completadoATiempo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCostoAsociado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoAsociado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByCostoAsociadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoAsociado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcionCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionCosto', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcionCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionCosto', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcionSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDescripcionSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDiasHastaEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasHastaEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDiasHastaEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasHastaEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDuracionEstimadoMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionEstimadoMinutos', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByDuracionEstimadoMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionEstimadoMinutos', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsAutomatico() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAutomatico', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsAutomaticoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAutomatico', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsRecurrente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRecurrente', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsRecurrenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRecurrente', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsUrgente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esUrgente', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEsUrgenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esUrgente', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEstaAtrasado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaAtrasado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEstaAtrasadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaAtrasado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaEjecutada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEjecutada', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaEjecutadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEjecutada', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaProgramada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaProgramada', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaProgramadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaProgramada', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaVencimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVencimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByFechaVencimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVencimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByLoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loteId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByLoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loteId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByNombreTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreTipoEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByNombreTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreTipoEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByObservacionesPostEvent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPostEvent', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByObservacionesPostEventDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPostEvent', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByObservacionesPrevia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPrevia', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByObservacionesPreviaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPrevia', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByPatronRecurrencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patronRecurrencia', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByPatronRecurrenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patronRecurrencia', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByRequiereSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requiereSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByRequiereSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requiereSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoAmbiental() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAmbiental', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoAmbientalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAmbiental', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoProductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProductivo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoProductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProductivo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoReproductivo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoReproductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoReproductivo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoSanitario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoSanitario', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTipoSanitarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoSanitario', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EventoGanaderoEntityQuerySortThenBy
    on QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QSortThenBy> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByAnimalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByAnimalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCompletadoATiempo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completadoATiempo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCompletadoATiempoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completadoATiempo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCostoAsociado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoAsociado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByCostoAsociadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoAsociado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcionCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionCosto', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcionCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionCosto', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcionSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDescripcionSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDiasHastaEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasHastaEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDiasHastaEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasHastaEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDuracionEstimadoMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionEstimadoMinutos', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByDuracionEstimadoMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionEstimadoMinutos', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsAutomatico() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAutomatico', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsAutomaticoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAutomatico', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsRecurrente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRecurrente', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsRecurrenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRecurrente', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsUrgente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esUrgente', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEsUrgenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esUrgente', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEstaAtrasado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaAtrasado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEstaAtrasadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaAtrasado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaEjecutada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEjecutada', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaEjecutadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEjecutada', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaProgramada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaProgramada', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaProgramadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaProgramada', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaVencimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVencimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByFechaVencimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVencimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByLoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loteId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByLoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loteId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByNombreTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreTipoEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByNombreTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreTipoEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByObservacionesPostEvent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPostEvent', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByObservacionesPostEventDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPostEvent', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByObservacionesPrevia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPrevia', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByObservacionesPreviaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesPrevia', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByPatronRecurrencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patronRecurrencia', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByPatronRecurrenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patronRecurrencia', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByRequiereSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requiereSeguimiento', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByRequiereSeguimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requiereSeguimiento', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoAmbiental() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAmbiental', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoAmbientalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAmbiental', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoProductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProductivo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoProductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProductivo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoReproductivo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoReproductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoReproductivo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoSanitario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoSanitario', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTipoSanitarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoSanitario', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EventoGanaderoEntityQueryWhereDistinct
    on QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct> {
  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByAnimalId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoria');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByCompletadoATiempo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completadoATiempo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByCostoAsociado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoAsociado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDatosEspecificosJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datosEspecificosJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDescripcionCosto({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcionCosto',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDescripcionSeguimiento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcionSeguimiento',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDiasHastaEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diasHastaEvento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDocumentosAdjuntos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentosAdjuntos');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByDuracionEstimadoMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duracionEstimadoMinutos');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEsAutomatico() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esAutomatico');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEsRecurrente() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esRecurrente');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEsUrgente() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esUrgente');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEstaAtrasado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estaAtrasado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByEtiquetas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etiquetas');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaEjecutada() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaEjecutada');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaProgramada() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaProgramada');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaSeguimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaSincronizacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFechaVencimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaVencimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByFotosEvidencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotosEvidencia');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByLoteId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loteId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByNombreTipoEvento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreTipoEvento',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByObservacionesPostEvent({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observacionesPostEvent',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByObservacionesPrevia({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observacionesPrevia',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByPatronRecurrencia({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patronRecurrencia',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prioridad');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByRequiereSeguimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'requiereSeguimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByResponsable({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsable', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sincronizado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByTipoAmbiental() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoAmbiental');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByTipoProductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoProductivo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByTipoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoReproductivo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByTipoSanitario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoSanitario');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByTitulo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByUbicacionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ubicacionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByUsuarioActualizacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioActualizacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByUsuarioCreacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioCreacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoGanaderoEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension EventoGanaderoEntityQueryProperty on QueryBuilder<
    EventoGanaderoEntity, EventoGanaderoEntity, QQueryProperty> {
  QueryBuilder<EventoGanaderoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      animalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalId');
    });
  }

  QueryBuilder<EventoGanaderoEntity, CategoriaEvento, QQueryOperations>
      categoriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoria');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool?, QQueryOperations>
      completadoATiempoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completadoATiempo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, double?, QQueryOperations>
      costoAsociadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoAsociado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      datosEspecificosJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datosEspecificosJson');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      descripcionCostoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcionCosto');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      descripcionSeguimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcionSeguimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, int, QQueryOperations>
      diasHastaEventoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diasHastaEvento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, List<String>, QQueryOperations>
      documentosAdjuntosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentosAdjuntos');
    });
  }

  QueryBuilder<EventoGanaderoEntity, int?, QQueryOperations>
      duracionEstimadoMinutosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duracionEstimadoMinutos');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      esAutomaticoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esAutomatico');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      esRecurrenteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esRecurrente');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      esUrgenteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esUrgente');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      estaAtrasadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estaAtrasado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EstadoEvento, QQueryOperations>
      estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, List<String>, QQueryOperations>
      etiquetasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etiquetas');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaEjecutadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaEjecutada');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime, QQueryOperations>
      fechaProgramadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaProgramada');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaSeguimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaSeguimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaSincronizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaSincronizacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, DateTime?, QQueryOperations>
      fechaVencimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaVencimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, List<String>, QQueryOperations>
      fotosEvidenciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotosEvidencia');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      loteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loteId');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String, QQueryOperations>
      nombreTipoEventoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreTipoEvento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      observacionesPostEventProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observacionesPostEvent');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      observacionesPreviaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observacionesPrevia');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      patronRecurrenciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patronRecurrencia');
    });
  }

  QueryBuilder<EventoGanaderoEntity, PrioridadEvento, QQueryOperations>
      prioridadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prioridad');
    });
  }

  QueryBuilder<EventoGanaderoEntity, List<IsarRegistroCambio>, QQueryOperations>
      registrosCambiosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrosCambios');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      requiereSeguimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'requiereSeguimiento');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      responsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsable');
    });
  }

  QueryBuilder<EventoGanaderoEntity, bool, QQueryOperations>
      sincronizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sincronizado');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoAmbiental, QQueryOperations>
      tipoAmbientalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoAmbiental');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoProductivo, QQueryOperations>
      tipoProductivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoProductivo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoReproductivo, QQueryOperations>
      tipoReproductivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoReproductivo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, EventoSanitario, QQueryOperations>
      tipoSanitarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoSanitario');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String, QQueryOperations>
      tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      ubicacionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ubicacionId');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      usuarioActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioActualizacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations>
      usuarioCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioCreacion');
    });
  }

  QueryBuilder<EventoGanaderoEntity, String?, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarRegistroCambioSchema = Schema(
  name: r'IsarRegistroCambio',
  id: 5627431318691673514,
  properties: {
    r'campo': PropertySchema(
      id: 0,
      name: r'campo',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 1,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 2,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'valorAnterior': PropertySchema(
      id: 3,
      name: r'valorAnterior',
      type: IsarType.string,
    ),
    r'valorNuevo': PropertySchema(
      id: 4,
      name: r'valorNuevo',
      type: IsarType.string,
    )
  },
  estimateSize: _isarRegistroCambioEstimateSize,
  serialize: _isarRegistroCambioSerialize,
  deserialize: _isarRegistroCambioDeserialize,
  deserializeProp: _isarRegistroCambioDeserializeProp,
);

int _isarRegistroCambioEstimateSize(
  IsarRegistroCambio object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.campo.length * 3;
  {
    final value = object.descripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.valorAnterior.length * 3;
  bytesCount += 3 + object.valorNuevo.length * 3;
  return bytesCount;
}

void _isarRegistroCambioSerialize(
  IsarRegistroCambio object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.campo);
  writer.writeString(offsets[1], object.descripcion);
  writer.writeDateTime(offsets[2], object.fecha);
  writer.writeString(offsets[3], object.valorAnterior);
  writer.writeString(offsets[4], object.valorNuevo);
}

IsarRegistroCambio _isarRegistroCambioDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarRegistroCambio(
    campo: reader.readStringOrNull(offsets[0]) ?? '',
    descripcion: reader.readStringOrNull(offsets[1]),
    fecha: reader.readDateTimeOrNull(offsets[2]),
    valorAnterior: reader.readStringOrNull(offsets[3]) ?? '',
    valorNuevo: reader.readStringOrNull(offsets[4]) ?? '',
  );
  return object;
}

P _isarRegistroCambioDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarRegistroCambioQueryFilter
    on QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QFilterCondition> {
  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'campo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'campo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      campoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'campo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      fechaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorAnterior',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valorAnterior',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorAnterior',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorAnteriorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valorAnterior',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorNuevo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valorNuevo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorNuevo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QAfterFilterCondition>
      valorNuevoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valorNuevo',
        value: '',
      ));
    });
  }
}

extension IsarRegistroCambioQueryObject
    on QueryBuilder<IsarRegistroCambio, IsarRegistroCambio, QFilterCondition> {}
