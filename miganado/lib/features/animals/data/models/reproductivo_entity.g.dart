// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reproductivo_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReproductivEntityCollection on Isar {
  IsarCollection<ReproductivEntity> get reproductivEntitys => this.collection();
}

const ReproductivEntitySchema = CollectionSchema(
  name: r'ReproductivEntity',
  id: 2304355568806951129,
  properties: {
    r'animalUuid': PropertySchema(
      id: 0,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'estado': PropertySchema(
      id: 1,
      name: r'estado',
      type: IsarType.string,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 2,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaEmpadreActual': PropertySchema(
      id: 3,
      name: r'fechaEmpadreActual',
      type: IsarType.dateTime,
    ),
    r'fechaPartoEstimada': PropertySchema(
      id: 4,
      name: r'fechaPartoEstimada',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 5,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'fechaUltimoEstro': PropertySchema(
      id: 6,
      name: r'fechaUltimoEstro',
      type: IsarType.dateTime,
    ),
    r'observaciones': PropertySchema(
      id: 7,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'observacionesEmpadre': PropertySchema(
      id: 8,
      name: r'observacionesEmpadre',
      type: IsarType.string,
    ),
    r'primerParto': PropertySchema(
      id: 9,
      name: r'primerParto',
      type: IsarType.dateTime,
    ),
    r'registradoPor': PropertySchema(
      id: 10,
      name: r'registradoPor',
      type: IsarType.string,
    ),
    r'sementalUuid': PropertySchema(
      id: 11,
      name: r'sementalUuid',
      type: IsarType.string,
    ),
    r'totalCrias': PropertySchema(
      id: 12,
      name: r'totalCrias',
      type: IsarType.long,
    ),
    r'totalPartos': PropertySchema(
      id: 13,
      name: r'totalPartos',
      type: IsarType.long,
    ),
    r'ultimoParto': PropertySchema(
      id: 14,
      name: r'ultimoParto',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 15,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _reproductivEntityEstimateSize,
  serialize: _reproductivEntitySerialize,
  deserialize: _reproductivEntityDeserialize,
  deserializeProp: _reproductivEntityDeserializeProp,
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
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _reproductivEntityGetId,
  getLinks: _reproductivEntityGetLinks,
  attach: _reproductivEntityAttach,
  version: '3.1.0+1',
);

int _reproductivEntityEstimateSize(
  ReproductivEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalUuid.length * 3;
  bytesCount += 3 + object.estado.length * 3;
  {
    final value = object.observaciones;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observacionesEmpadre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.registradoPor.length * 3;
  {
    final value = object.sementalUuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _reproductivEntitySerialize(
  ReproductivEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalUuid);
  writer.writeString(offsets[1], object.estado);
  writer.writeDateTime(offsets[2], object.fechaActualizacion);
  writer.writeDateTime(offsets[3], object.fechaEmpadreActual);
  writer.writeDateTime(offsets[4], object.fechaPartoEstimada);
  writer.writeDateTime(offsets[5], object.fechaRegistro);
  writer.writeDateTime(offsets[6], object.fechaUltimoEstro);
  writer.writeString(offsets[7], object.observaciones);
  writer.writeString(offsets[8], object.observacionesEmpadre);
  writer.writeDateTime(offsets[9], object.primerParto);
  writer.writeString(offsets[10], object.registradoPor);
  writer.writeString(offsets[11], object.sementalUuid);
  writer.writeLong(offsets[12], object.totalCrias);
  writer.writeLong(offsets[13], object.totalPartos);
  writer.writeDateTime(offsets[14], object.ultimoParto);
  writer.writeString(offsets[15], object.uuid);
}

ReproductivEntity _reproductivEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReproductivEntity(
    animalUuid: reader.readString(offsets[0]),
    estado: reader.readString(offsets[1]),
    fechaEmpadreActual: reader.readDateTimeOrNull(offsets[3]),
    fechaPartoEstimada: reader.readDateTimeOrNull(offsets[4]),
    fechaUltimoEstro: reader.readDateTimeOrNull(offsets[6]),
    observaciones: reader.readStringOrNull(offsets[7]),
    observacionesEmpadre: reader.readStringOrNull(offsets[8]),
    registradoPor: reader.readString(offsets[10]),
    sementalUuid: reader.readStringOrNull(offsets[11]),
  );
  object.fechaActualizacion = reader.readDateTimeOrNull(offsets[2]);
  object.fechaRegistro = reader.readDateTime(offsets[5]);
  object.id = id;
  object.primerParto = reader.readDateTimeOrNull(offsets[9]);
  object.totalCrias = reader.readLong(offsets[12]);
  object.totalPartos = reader.readLong(offsets[13]);
  object.ultimoParto = reader.readDateTimeOrNull(offsets[14]);
  object.uuid = reader.readString(offsets[15]);
  return object;
}

P _reproductivEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reproductivEntityGetId(ReproductivEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _reproductivEntityGetLinks(
    ReproductivEntity object) {
  return [];
}

void _reproductivEntityAttach(
    IsarCollection<dynamic> col, Id id, ReproductivEntity object) {
  object.id = id;
}

extension ReproductivEntityByIndex on IsarCollection<ReproductivEntity> {
  Future<ReproductivEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  ReproductivEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<ReproductivEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<ReproductivEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(ReproductivEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(ReproductivEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<ReproductivEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<ReproductivEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension ReproductivEntityQueryWhereSort
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QWhere> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReproductivEntityQueryWhere
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QWhereClause> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      uuidNotEqualTo(String uuid) {
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterWhereClause>
      animalUuidNotEqualTo(String animalUuid) {
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
}

extension ReproductivEntityQueryFilter
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QFilterCondition> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidEqualTo(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidGreaterThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidLessThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidBetween(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidStartsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidEndsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'estado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      estadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionGreaterThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionLessThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaActualizacionBetween(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaEmpadreActual',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaEmpadreActual',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaEmpadreActual',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaEmpadreActual',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaEmpadreActual',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaEmpadreActualBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaEmpadreActual',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaPartoEstimada',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaPartoEstimada',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaPartoEstimada',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaPartoEstimada',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaPartoEstimada',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaPartoEstimadaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaPartoEstimada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaRegistroGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaRegistroLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaRegistroBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaRegistro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaUltimoEstro',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaUltimoEstro',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaUltimoEstro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaUltimoEstro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaUltimoEstro',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      fechaUltimoEstroBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaUltimoEstro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idLessThan(
    Id? value, {
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEqualTo(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesGreaterThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesLessThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesBetween(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesStartsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEndsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observaciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observacionesEmpadre',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observacionesEmpadre',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observacionesEmpadre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observacionesEmpadre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observacionesEmpadre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionesEmpadre',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      observacionesEmpadreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observacionesEmpadre',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primerParto',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primerParto',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primerParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primerParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primerParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      primerPartoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primerParto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registradoPor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registradoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      registradoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sementalUuid',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sementalUuid',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sementalUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sementalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sementalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sementalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      sementalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sementalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalCriasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCrias',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalCriasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCrias',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalCriasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCrias',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalCriasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCrias',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalPartosEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPartos',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalPartosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPartos',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalPartosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPartos',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      totalPartosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPartos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultimoParto',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultimoParto',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimoParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimoParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimoParto',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      ultimoPartoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimoParto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidEqualTo(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidGreaterThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidLessThan(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidBetween(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidStartsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidEndsWith(
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

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension ReproductivEntityQueryObject
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QFilterCondition> {}

extension ReproductivEntityQueryLinks
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QFilterCondition> {}

extension ReproductivEntityQuerySortBy
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QSortBy> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaEmpadreActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEmpadreActual', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaEmpadreActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEmpadreActual', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaPartoEstimada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaPartoEstimada', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaPartoEstimadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaPartoEstimada', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaUltimoEstro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoEstro', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByFechaUltimoEstroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoEstro', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByObservacionesEmpadre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesEmpadre', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByObservacionesEmpadreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesEmpadre', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByPrimerParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primerParto', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByPrimerPartoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primerParto', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortBySementalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sementalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortBySementalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sementalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByTotalCrias() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCrias', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByTotalCriasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCrias', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByTotalPartos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartos', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByTotalPartosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartos', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByUltimoParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoParto', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByUltimoPartoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoParto', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension ReproductivEntityQuerySortThenBy
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QSortThenBy> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaEmpadreActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEmpadreActual', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaEmpadreActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEmpadreActual', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaPartoEstimada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaPartoEstimada', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaPartoEstimadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaPartoEstimada', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaUltimoEstro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoEstro', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByFechaUltimoEstroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoEstro', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByObservacionesEmpadre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesEmpadre', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByObservacionesEmpadreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionesEmpadre', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByPrimerParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primerParto', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByPrimerPartoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primerParto', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenBySementalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sementalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenBySementalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sementalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByTotalCrias() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCrias', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByTotalCriasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCrias', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByTotalPartos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartos', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByTotalPartosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartos', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByUltimoParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoParto', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByUltimoPartoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoParto', Sort.desc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension ReproductivEntityQueryWhereDistinct
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct> {
  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByEstado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByFechaEmpadreActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaEmpadreActual');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByFechaPartoEstimada() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaPartoEstimada');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByFechaUltimoEstro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaUltimoEstro');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByObservaciones({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByObservacionesEmpadre({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observacionesEmpadre',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByPrimerParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primerParto');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByRegistradoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registradoPor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctBySementalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sementalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByTotalCrias() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCrias');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByTotalPartos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPartos');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct>
      distinctByUltimoParto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimoParto');
    });
  }

  QueryBuilder<ReproductivEntity, ReproductivEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension ReproductivEntityQueryProperty
    on QueryBuilder<ReproductivEntity, ReproductivEntity, QQueryProperty> {
  QueryBuilder<ReproductivEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReproductivEntity, String, QQueryOperations>
      animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<ReproductivEntity, String, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      fechaEmpadreActualProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaEmpadreActual');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      fechaPartoEstimadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaPartoEstimada');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      fechaUltimoEstroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaUltimoEstro');
    });
  }

  QueryBuilder<ReproductivEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<ReproductivEntity, String?, QQueryOperations>
      observacionesEmpadreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observacionesEmpadre');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      primerPartoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primerParto');
    });
  }

  QueryBuilder<ReproductivEntity, String, QQueryOperations>
      registradoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registradoPor');
    });
  }

  QueryBuilder<ReproductivEntity, String?, QQueryOperations>
      sementalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sementalUuid');
    });
  }

  QueryBuilder<ReproductivEntity, int, QQueryOperations> totalCriasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCrias');
    });
  }

  QueryBuilder<ReproductivEntity, int, QQueryOperations> totalPartosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPartos');
    });
  }

  QueryBuilder<ReproductivEntity, DateTime?, QQueryOperations>
      ultimoPartoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimoParto');
    });
  }

  QueryBuilder<ReproductivEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
