// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evento_mantenimiento_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventoMantenimientoEntityCollection on Isar {
  IsarCollection<EventoMantenimientoEntity> get eventoMantenimientoEntitys =>
      this.collection();
}

const EventoMantenimientoEntitySchema = CollectionSchema(
  name: r'EventoMantenimientoEntity',
  id: 285376540716250921,
  properties: {
    r'animalUuid': PropertySchema(
      id: 0,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'costo': PropertySchema(
      id: 1,
      name: r'costo',
      type: IsarType.double,
    ),
    r'descripcion': PropertySchema(
      id: 2,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'dosisAplicada': PropertySchema(
      id: 3,
      name: r'dosisAplicada',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 4,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 5,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 6,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaSincronizacion': PropertySchema(
      id: 7,
      name: r'fechaSincronizacion',
      type: IsarType.dateTime,
    ),
    r'hashContenido': PropertySchema(
      id: 8,
      name: r'hashContenido',
      type: IsarType.string,
    ),
    r'idRemoto': PropertySchema(
      id: 9,
      name: r'idRemoto',
      type: IsarType.string,
    ),
    r'medicamento': PropertySchema(
      id: 10,
      name: r'medicamento',
      type: IsarType.string,
    ),
    r'notas': PropertySchema(
      id: 11,
      name: r'notas',
      type: IsarType.string,
    ),
    r'observaciones': PropertySchema(
      id: 12,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'proximaDosis': PropertySchema(
      id: 13,
      name: r'proximaDosis',
      type: IsarType.dateTime,
    ),
    r'proximaFecha': PropertySchema(
      id: 14,
      name: r'proximaFecha',
      type: IsarType.dateTime,
    ),
    r'responsable': PropertySchema(
      id: 15,
      name: r'responsable',
      type: IsarType.string,
    ),
    r'rutaAplicacion': PropertySchema(
      id: 16,
      name: r'rutaAplicacion',
      type: IsarType.string,
    ),
    r'sincronizado': PropertySchema(
      id: 17,
      name: r'sincronizado',
      type: IsarType.bool,
    ),
    r'tipo': PropertySchema(
      id: 18,
      name: r'tipo',
      type: IsarType.byte,
      enumMap: _EventoMantenimientoEntitytipoEnumValueMap,
    ),
    r'uuid': PropertySchema(
      id: 19,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'veterinario': PropertySchema(
      id: 20,
      name: r'veterinario',
      type: IsarType.string,
    )
  },
  estimateSize: _eventoMantenimientoEntityEstimateSize,
  serialize: _eventoMantenimientoEntitySerialize,
  deserialize: _eventoMantenimientoEntityDeserialize,
  deserializeProp: _eventoMantenimientoEntityDeserializeProp,
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
    ),
    r'animalUuid': IndexSchema(
      id: 3546875230825122358,
      name: r'animalUuid',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'animalUuid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fecha': IndexSchema(
      id: -5395179286312083551,
      name: r'fecha',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fecha',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _eventoMantenimientoEntityGetId,
  getLinks: _eventoMantenimientoEntityGetLinks,
  attach: _eventoMantenimientoEntityAttach,
  version: '3.1.0+1',
);

int _eventoMantenimientoEntityEstimateSize(
  EventoMantenimientoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalUuid.length * 3;
  bytesCount += 3 + object.descripcion.length * 3;
  {
    final value = object.dosisAplicada;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.hashContenido;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idRemoto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.medicamento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notas;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observaciones;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.responsable;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rutaAplicacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  {
    final value = object.veterinario;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _eventoMantenimientoEntitySerialize(
  EventoMantenimientoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalUuid);
  writer.writeDouble(offsets[1], object.costo);
  writer.writeString(offsets[2], object.descripcion);
  writer.writeString(offsets[3], object.dosisAplicada);
  writer.writeDateTime(offsets[4], object.fecha);
  writer.writeDateTime(offsets[5], object.fechaActualizacion);
  writer.writeDateTime(offsets[6], object.fechaCreacion);
  writer.writeDateTime(offsets[7], object.fechaSincronizacion);
  writer.writeString(offsets[8], object.hashContenido);
  writer.writeString(offsets[9], object.idRemoto);
  writer.writeString(offsets[10], object.medicamento);
  writer.writeString(offsets[11], object.notas);
  writer.writeString(offsets[12], object.observaciones);
  writer.writeDateTime(offsets[13], object.proximaDosis);
  writer.writeDateTime(offsets[14], object.proximaFecha);
  writer.writeString(offsets[15], object.responsable);
  writer.writeString(offsets[16], object.rutaAplicacion);
  writer.writeBool(offsets[17], object.sincronizado);
  writer.writeByte(offsets[18], object.tipo.index);
  writer.writeString(offsets[19], object.uuid);
  writer.writeString(offsets[20], object.veterinario);
}

EventoMantenimientoEntity _eventoMantenimientoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventoMantenimientoEntity(
    animalUuid: reader.readString(offsets[0]),
    costo: reader.readDoubleOrNull(offsets[1]),
    descripcion: reader.readString(offsets[2]),
    dosisAplicada: reader.readStringOrNull(offsets[3]),
    fecha: reader.readDateTime(offsets[4]),
    medicamento: reader.readStringOrNull(offsets[10]),
    notas: reader.readStringOrNull(offsets[11]),
    observaciones: reader.readStringOrNull(offsets[12]),
    proximaDosis: reader.readDateTimeOrNull(offsets[13]),
    proximaFecha: reader.readDateTimeOrNull(offsets[14]),
    responsable: reader.readStringOrNull(offsets[15]),
    rutaAplicacion: reader.readStringOrNull(offsets[16]),
    tipo: _EventoMantenimientoEntitytipoValueEnumMap[
            reader.readByteOrNull(offsets[18])] ??
        TipoEventoMantenimiento.vacunacion,
    veterinario: reader.readStringOrNull(offsets[20]),
  );
  object.fechaActualizacion = reader.readDateTime(offsets[5]);
  object.fechaCreacion = reader.readDateTime(offsets[6]);
  object.fechaSincronizacion = reader.readDateTimeOrNull(offsets[7]);
  object.hashContenido = reader.readStringOrNull(offsets[8]);
  object.id = id;
  object.idRemoto = reader.readStringOrNull(offsets[9]);
  object.sincronizado = reader.readBool(offsets[17]);
  object.uuid = reader.readString(offsets[19]);
  return object;
}

P _eventoMantenimientoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readBool(offset)) as P;
    case 18:
      return (_EventoMantenimientoEntitytipoValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TipoEventoMantenimiento.vacunacion) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EventoMantenimientoEntitytipoEnumValueMap = {
  'vacunacion': 0,
  'desparasitacion': 1,
  'vitaminas': 2,
  'control_veterinario': 3,
  'limpieza_corrales': 4,
  'alimentacion_especial': 5,
  'otro': 6,
};
const _EventoMantenimientoEntitytipoValueEnumMap = {
  0: TipoEventoMantenimiento.vacunacion,
  1: TipoEventoMantenimiento.desparasitacion,
  2: TipoEventoMantenimiento.vitaminas,
  3: TipoEventoMantenimiento.control_veterinario,
  4: TipoEventoMantenimiento.limpieza_corrales,
  5: TipoEventoMantenimiento.alimentacion_especial,
  6: TipoEventoMantenimiento.otro,
};

Id _eventoMantenimientoEntityGetId(EventoMantenimientoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eventoMantenimientoEntityGetLinks(
    EventoMantenimientoEntity object) {
  return [];
}

void _eventoMantenimientoEntityAttach(
    IsarCollection<dynamic> col, Id id, EventoMantenimientoEntity object) {
  object.id = id;
}

extension EventoMantenimientoEntityByIndex
    on IsarCollection<EventoMantenimientoEntity> {
  Future<EventoMantenimientoEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  EventoMantenimientoEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<EventoMantenimientoEntity?>> getAllByUuid(
      List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<EventoMantenimientoEntity?> getAllByUuidSync(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'uuid', values);
  }

  Future<int> deleteAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'uuid', values);
  }

  int deleteAllByUuidSync(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'uuid', values);
  }

  Future<Id> putByUuid(EventoMantenimientoEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(EventoMantenimientoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<EventoMantenimientoEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<EventoMantenimientoEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension EventoMantenimientoEntityQueryWhereSort on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QWhere> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhere> anyFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fecha'),
      );
    });
  }
}

extension EventoMantenimientoEntityQueryWhere on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QWhereClause> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> idBetween(
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> uuidNotEqualTo(String uuid) {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> animalUuidNotEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'animalUuid',
              lower: [],
              upper: [animalUuid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'animalUuid',
              lower: [animalUuid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'animalUuid',
              lower: [animalUuid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'animalUuid',
              lower: [],
              upper: [animalUuid],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> fechaEqualTo(DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fecha',
        value: [fecha],
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> fechaNotEqualTo(DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> fechaGreaterThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [fecha],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> fechaLessThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [],
        upper: [fecha],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterWhereClause> fechaBetween(
    DateTime lowerFecha,
    DateTime upperFecha, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [lowerFecha],
        includeLower: includeLower,
        upper: [upperFecha],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventoMantenimientoEntityQueryFilter on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QFilterCondition> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'animalUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> costoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionEqualTo(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionGreaterThan(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionLessThan(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionBetween(
    String lower,
    String upper, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dosisAplicada',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dosisAplicada',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dosisAplicada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      dosisAplicadaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dosisAplicada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      dosisAplicadaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dosisAplicada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosisAplicada',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> dosisAplicadaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dosisAplicada',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaGreaterThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaLessThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaActualizacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaActualizacionGreaterThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaActualizacionLessThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaActualizacionBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaCreacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaCreacionGreaterThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaCreacionLessThan(
    DateTime value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaSincronizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaSincronizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> fechaSincronizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashContenido',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashContenido',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashContenido',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      hashContenidoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      hashContenidoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hashContenido',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashContenido',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> hashContenidoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hashContenido',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idRemoto',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idRemoto',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idRemoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      idRemotoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      idRemotoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idRemoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idRemoto',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> idRemotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idRemoto',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medicamento',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medicamento',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicamento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      medicamentoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      medicamentoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medicamento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicamento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> medicamentoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medicamento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      notasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      notasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> notasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observaciones',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      observacionesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      observacionesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observaciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'proximaDosis',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'proximaDosis',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proximaDosis',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proximaDosis',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proximaDosis',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaDosisBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proximaDosis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'proximaFecha',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'proximaFecha',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proximaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proximaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proximaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> proximaFechaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proximaFecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> responsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> responsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> responsableIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> responsableIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rutaAplicacion',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rutaAplicacion',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rutaAplicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      rutaAplicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rutaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      rutaAplicacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rutaAplicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaAplicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> rutaAplicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rutaAplicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> sincronizadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sincronizado',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> tipoEqualTo(TipoEventoMantenimiento value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> tipoGreaterThan(
    TipoEventoMantenimiento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> tipoLessThan(
    TipoEventoMantenimiento value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> tipoBetween(
    TipoEventoMantenimiento lower,
    TipoEventoMantenimiento upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidEqualTo(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidGreaterThan(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidLessThan(
    String value, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidBetween(
    String lower,
    String upper, {
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
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

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'veterinario',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'veterinario',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'veterinario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      veterinarioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'veterinario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
          QAfterFilterCondition>
      veterinarioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'veterinario',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'veterinario',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterFilterCondition> veterinarioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'veterinario',
        value: '',
      ));
    });
  }
}

extension EventoMantenimientoEntityQueryObject on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QFilterCondition> {}

extension EventoMantenimientoEntityQueryLinks on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QFilterCondition> {}

extension EventoMantenimientoEntityQuerySortBy on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QSortBy> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByDosisAplicada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosisAplicada', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByDosisAplicadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosisAplicada', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByHashContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByHashContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByIdRemoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByIdRemotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByMedicamento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByMedicamentoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByProximaDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaDosis', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByProximaDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaDosis', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByProximaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByRutaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByRutaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaAplicacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByVeterinario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinario', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> sortByVeterinarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinario', Sort.desc);
    });
  }
}

extension EventoMantenimientoEntityQuerySortThenBy on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QSortThenBy> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByDosisAplicada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosisAplicada', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByDosisAplicadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosisAplicada', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByHashContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByHashContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByIdRemoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByIdRemotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByMedicamento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByMedicamentoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByProximaDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaDosis', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByProximaDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaDosis', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByProximaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByRutaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByRutaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaAplicacion', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByVeterinario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinario', Sort.asc);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity,
      QAfterSortBy> thenByVeterinarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinario', Sort.desc);
    });
  }
}

extension EventoMantenimientoEntityQueryWhereDistinct on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct> {
  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costo');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByDosisAplicada({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dosisAplicada',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaSincronizacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByHashContenido({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashContenido',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByIdRemoto({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idRemoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByMedicamento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicamento', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByNotas({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notas', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByObservaciones({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByProximaDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proximaDosis');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proximaFecha');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByResponsable({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsable', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByRutaAplicacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rutaAplicacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sincronizado');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoMantenimientoEntity, EventoMantenimientoEntity, QDistinct>
      distinctByVeterinario({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'veterinario', caseSensitive: caseSensitive);
    });
  }
}

extension EventoMantenimientoEntityQueryProperty on QueryBuilder<
    EventoMantenimientoEntity, EventoMantenimientoEntity, QQueryProperty> {
  QueryBuilder<EventoMantenimientoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String, QQueryOperations>
      animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, double?, QQueryOperations>
      costoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costo');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String, QQueryOperations>
      descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      dosisAplicadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosisAplicada');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime, QQueryOperations>
      fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime?, QQueryOperations>
      fechaSincronizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaSincronizacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      hashContenidoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashContenido');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      idRemotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idRemoto');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      medicamentoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicamento');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      notasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notas');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime?, QQueryOperations>
      proximaDosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proximaDosis');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, DateTime?, QQueryOperations>
      proximaFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proximaFecha');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      responsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsable');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      rutaAplicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rutaAplicacion');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, bool, QQueryOperations>
      sincronizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sincronizado');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, TipoEventoMantenimiento,
      QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String, QQueryOperations>
      uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<EventoMantenimientoEntity, String?, QQueryOperations>
      veterinarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'veterinario');
    });
  }
}
