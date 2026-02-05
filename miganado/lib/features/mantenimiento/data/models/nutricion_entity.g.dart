// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutricion_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNutricionEntityCollection on Isar {
  IsarCollection<NutricionEntity> get nutricionEntitys => this.collection();
}

const NutricionEntitySchema = CollectionSchema(
  name: r'NutricionEntity',
  id: -1393646530944084246,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'activo': PropertySchema(
      id: 1,
      name: r'activo',
      type: IsarType.bool,
    ),
    r'alimentoPrincipal': PropertySchema(
      id: 2,
      name: r'alimentoPrincipal',
      type: IsarType.string,
    ),
    r'animalUuid': PropertySchema(
      id: 3,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'cambiosObservados': PropertySchema(
      id: 4,
      name: r'cambiosObservados',
      type: IsarType.string,
    ),
    r'cantidadDiaria': PropertySchema(
      id: 5,
      name: r'cantidadDiaria',
      type: IsarType.string,
    ),
    r'costPerDay': PropertySchema(
      id: 6,
      name: r'costPerDay',
      type: IsarType.double,
    ),
    r'costoPorDia': PropertySchema(
      id: 7,
      name: r'costoPorDia',
      type: IsarType.double,
    ),
    r'costoTotal': PropertySchema(
      id: 8,
      name: r'costoTotal',
      type: IsarType.double,
    ),
    r'dailyAmount': PropertySchema(
      id: 9,
      name: r'dailyAmount',
      type: IsarType.string,
    ),
    r'endDate': PropertySchema(
      id: 10,
      name: r'endDate',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 11,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaFin': PropertySchema(
      id: 12,
      name: r'fechaFin',
      type: IsarType.dateTime,
    ),
    r'fechaInicio': PropertySchema(
      id: 13,
      name: r'fechaInicio',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 14,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'feedingType': PropertySchema(
      id: 15,
      name: r'feedingType',
      type: IsarType.string,
    ),
    r'mainFeed': PropertySchema(
      id: 16,
      name: r'mainFeed',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 17,
      name: r'observations',
      type: IsarType.string,
    ),
    r'observedChanges': PropertySchema(
      id: 18,
      name: r'observedChanges',
      type: IsarType.string,
    ),
    r'registeredBy': PropertySchema(
      id: 19,
      name: r'registeredBy',
      type: IsarType.string,
    ),
    r'registradoPor': PropertySchema(
      id: 20,
      name: r'registradoPor',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 21,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'startDate': PropertySchema(
      id: 22,
      name: r'startDate',
      type: IsarType.dateTime,
    ),
    r'suplementos': PropertySchema(
      id: 23,
      name: r'suplementos',
      type: IsarType.stringList,
    ),
    r'supplements': PropertySchema(
      id: 24,
      name: r'supplements',
      type: IsarType.stringList,
    ),
    r'tipoAlimentacion': PropertySchema(
      id: 25,
      name: r'tipoAlimentacion',
      type: IsarType.string,
    ),
    r'totalCost': PropertySchema(
      id: 26,
      name: r'totalCost',
      type: IsarType.double,
    ),
    r'updateDate': PropertySchema(
      id: 27,
      name: r'updateDate',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 28,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _nutricionEntityEstimateSize,
  serialize: _nutricionEntitySerialize,
  deserialize: _nutricionEntityDeserialize,
  deserializeProp: _nutricionEntityDeserializeProp,
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
  getId: _nutricionEntityGetId,
  getLinks: _nutricionEntityGetLinks,
  attach: _nutricionEntityAttach,
  version: '3.1.0+1',
);

int _nutricionEntityEstimateSize(
  NutricionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.alimentoPrincipal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.cambiosObservados;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cantidadDiaria;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dailyAmount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.feedingType.length * 3;
  {
    final value = object.mainFeed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observations;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observedChanges;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.registeredBy.length * 3;
  bytesCount += 3 + object.registradoPor.length * 3;
  bytesCount += 3 + object.suplementos.length * 3;
  {
    for (var i = 0; i < object.suplementos.length; i++) {
      final value = object.suplementos[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.supplements.length * 3;
  {
    for (var i = 0; i < object.supplements.length; i++) {
      final value = object.supplements[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.tipoAlimentacion.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _nutricionEntitySerialize(
  NutricionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeBool(offsets[1], object.activo);
  writer.writeString(offsets[2], object.alimentoPrincipal);
  writer.writeString(offsets[3], object.animalUuid);
  writer.writeString(offsets[4], object.cambiosObservados);
  writer.writeString(offsets[5], object.cantidadDiaria);
  writer.writeDouble(offsets[6], object.costPerDay);
  writer.writeDouble(offsets[7], object.costoPorDia);
  writer.writeDouble(offsets[8], object.costoTotal);
  writer.writeString(offsets[9], object.dailyAmount);
  writer.writeDateTime(offsets[10], object.endDate);
  writer.writeDateTime(offsets[11], object.fechaActualizacion);
  writer.writeDateTime(offsets[12], object.fechaFin);
  writer.writeDateTime(offsets[13], object.fechaInicio);
  writer.writeDateTime(offsets[14], object.fechaRegistro);
  writer.writeString(offsets[15], object.feedingType);
  writer.writeString(offsets[16], object.mainFeed);
  writer.writeString(offsets[17], object.observations);
  writer.writeString(offsets[18], object.observedChanges);
  writer.writeString(offsets[19], object.registeredBy);
  writer.writeString(offsets[20], object.registradoPor);
  writer.writeDateTime(offsets[21], object.registrationDate);
  writer.writeDateTime(offsets[22], object.startDate);
  writer.writeStringList(offsets[23], object.suplementos);
  writer.writeStringList(offsets[24], object.supplements);
  writer.writeString(offsets[25], object.tipoAlimentacion);
  writer.writeDouble(offsets[26], object.totalCost);
  writer.writeDateTime(offsets[27], object.updateDate);
  writer.writeString(offsets[28], object.uuid);
}

NutricionEntity _nutricionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NutricionEntity(
    alimentoPrincipal: reader.readStringOrNull(offsets[2]),
    animalUuid: reader.readString(offsets[3]),
    cambiosObservados: reader.readStringOrNull(offsets[4]),
    cantidadDiaria: reader.readStringOrNull(offsets[5]),
    costoPorDia: reader.readDoubleOrNull(offsets[7]),
    costoTotal: reader.readDoubleOrNull(offsets[8]),
    fechaFin: reader.readDateTimeOrNull(offsets[12]),
    fechaInicio: reader.readDateTime(offsets[13]),
    registradoPor: reader.readString(offsets[20]),
    suplementos: reader.readStringList(offsets[23]) ?? const [],
    tipoAlimentacion: reader.readString(offsets[25]),
  );
  object.active = reader.readBool(offsets[0]);
  object.costPerDay = reader.readDoubleOrNull(offsets[6]);
  object.dailyAmount = reader.readStringOrNull(offsets[9]);
  object.endDate = reader.readDateTimeOrNull(offsets[10]);
  object.feedingType = reader.readString(offsets[15]);
  object.id = id;
  object.mainFeed = reader.readStringOrNull(offsets[16]);
  object.observations = reader.readStringOrNull(offsets[17]);
  object.observedChanges = reader.readStringOrNull(offsets[18]);
  object.registeredBy = reader.readString(offsets[19]);
  object.registrationDate = reader.readDateTime(offsets[21]);
  object.startDate = reader.readDateTime(offsets[22]);
  object.supplements = reader.readStringList(offsets[24]) ?? [];
  object.totalCost = reader.readDoubleOrNull(offsets[26]);
  object.updateDate = reader.readDateTimeOrNull(offsets[27]);
  object.uuid = reader.readString(offsets[28]);
  return object;
}

P _nutricionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readDateTime(offset)) as P;
    case 22:
      return (reader.readDateTime(offset)) as P;
    case 23:
      return (reader.readStringList(offset) ?? const []) as P;
    case 24:
      return (reader.readStringList(offset) ?? []) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _nutricionEntityGetId(NutricionEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _nutricionEntityGetLinks(NutricionEntity object) {
  return [];
}

void _nutricionEntityAttach(
    IsarCollection<dynamic> col, Id id, NutricionEntity object) {
  object.id = id;
}

extension NutricionEntityByIndex on IsarCollection<NutricionEntity> {
  Future<NutricionEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  NutricionEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<NutricionEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<NutricionEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(NutricionEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(NutricionEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<NutricionEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<NutricionEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension NutricionEntityQueryWhereSort
    on QueryBuilder<NutricionEntity, NutricionEntity, QWhere> {
  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NutricionEntityQueryWhere
    on QueryBuilder<NutricionEntity, NutricionEntity, QWhereClause> {
  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause>
      animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterWhereClause>
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

extension NutricionEntityQueryFilter
    on QueryBuilder<NutricionEntity, NutricionEntity, QFilterCondition> {
  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      activeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      activoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activo',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alimentoPrincipal',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alimentoPrincipal',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alimentoPrincipal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alimentoPrincipal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alimentoPrincipal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alimentoPrincipal',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      alimentoPrincipalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alimentoPrincipal',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cambiosObservados',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cambiosObservados',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cambiosObservados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cambiosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cambiosObservados',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cambiosObservados',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cambiosObservadosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cambiosObservados',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cantidadDiaria',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cantidadDiaria',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantidadDiaria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cantidadDiaria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cantidadDiaria',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidadDiaria',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      cantidadDiariaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cantidadDiaria',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costPerDay',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costPerDay',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costPerDay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costPerDay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costPerDay',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costPerDayBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costPerDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoPorDia',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoPorDia',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoPorDia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoPorDia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoPorDia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoPorDiaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoPorDia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoTotal',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoTotal',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      costoTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyAmount',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyAmount',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dailyAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dailyAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      dailyAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dailyAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      endDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaFin',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaFin',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaFinBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaFin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaInicioEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaInicioGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaInicioLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaInicioBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaInicio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feedingType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feedingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feedingType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedingType',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      feedingTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feedingType',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainFeed',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainFeed',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainFeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainFeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainFeed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainFeed',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      mainFeedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainFeed',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observedChanges',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observedChanges',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observedChanges',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observedChanges',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observedChanges',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observedChanges',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      observedChangesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observedChanges',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registeredBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registeredBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registeredByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registradoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registradoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registradoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registradoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registradoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registrationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registrationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      registrationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      startDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      startDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      startDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      startDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suplementos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'suplementos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'suplementos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suplementos',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'suplementos',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      suplementosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suplementos',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supplements',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supplements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supplements',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplements',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supplements',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      supplementsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplements',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoAlimentacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoAlimentacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoAlimentacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoAlimentacion',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      tipoAlimentacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoAlimentacion',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCost',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCost',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      totalCostBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      updateDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
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

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension NutricionEntityQueryObject
    on QueryBuilder<NutricionEntity, NutricionEntity, QFilterCondition> {}

extension NutricionEntityQueryLinks
    on QueryBuilder<NutricionEntity, NutricionEntity, QFilterCondition> {}

extension NutricionEntityQuerySortBy
    on QueryBuilder<NutricionEntity, NutricionEntity, QSortBy> {
  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> sortByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByAlimentoPrincipal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alimentoPrincipal', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByAlimentoPrincipalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alimentoPrincipal', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCambiosObservados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cambiosObservados', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCambiosObservadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cambiosObservados', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCantidadDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadDiaria', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCantidadDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadDiaria', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerDay', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerDay', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostoPorDia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoPorDia', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostoPorDiaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoPorDia', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByCostoTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByDailyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAmount', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByDailyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAmount', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> sortByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFeedingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedingType', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByFeedingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedingType', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByMainFeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainFeed', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByMainFeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainFeed', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByObservedChanges() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedChanges', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByObservedChangesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedChanges', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByTipoAlimentacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAlimentacion', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByTipoAlimentacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAlimentacion', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByTotalCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension NutricionEntityQuerySortThenBy
    on QueryBuilder<NutricionEntity, NutricionEntity, QSortThenBy> {
  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByAlimentoPrincipal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alimentoPrincipal', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByAlimentoPrincipalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alimentoPrincipal', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCambiosObservados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cambiosObservados', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCambiosObservadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cambiosObservados', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCantidadDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadDiaria', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCantidadDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadDiaria', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerDay', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerDay', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostoPorDia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoPorDia', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostoPorDiaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoPorDia', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByCostoTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByDailyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAmount', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByDailyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAmount', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFeedingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedingType', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByFeedingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedingType', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByMainFeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainFeed', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByMainFeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainFeed', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByObservedChanges() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedChanges', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByObservedChangesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedChanges', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByTipoAlimentacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAlimentacion', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByTipoAlimentacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoAlimentacion', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByTotalCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension NutricionEntityQueryWhereDistinct
    on QueryBuilder<NutricionEntity, NutricionEntity, QDistinct> {
  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct> distinctByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activo');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByAlimentoPrincipal({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alimentoPrincipal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByCambiosObservados({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cambiosObservados',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByCantidadDiaria({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cantidadDiaria',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByCostPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costPerDay');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByCostoPorDia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoPorDia');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoTotal');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByDailyAmount({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyAmount', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDate');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaFin');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaInicio');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByFeedingType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feedingType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct> distinctByMainFeed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainFeed', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByObservedChanges({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observedChanges',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByRegisteredBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registeredBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByRegistradoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registradoPor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDate');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctBySuplementos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suplementos');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctBySupplements() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supplements');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByTipoAlimentacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoAlimentacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCost');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct>
      distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
    });
  }

  QueryBuilder<NutricionEntity, NutricionEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension NutricionEntityQueryProperty
    on QueryBuilder<NutricionEntity, NutricionEntity, QQueryProperty> {
  QueryBuilder<NutricionEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NutricionEntity, bool, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<NutricionEntity, bool, QQueryOperations> activoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activo');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      alimentoPrincipalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alimentoPrincipal');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations> animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      cambiosObservadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cambiosObservados');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      cantidadDiariaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantidadDiaria');
    });
  }

  QueryBuilder<NutricionEntity, double?, QQueryOperations>
      costPerDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costPerDay');
    });
  }

  QueryBuilder<NutricionEntity, double?, QQueryOperations>
      costoPorDiaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoPorDia');
    });
  }

  QueryBuilder<NutricionEntity, double?, QQueryOperations>
      costoTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoTotal');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      dailyAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyAmount');
    });
  }

  QueryBuilder<NutricionEntity, DateTime?, QQueryOperations> endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDate');
    });
  }

  QueryBuilder<NutricionEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<NutricionEntity, DateTime?, QQueryOperations>
      fechaFinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaFin');
    });
  }

  QueryBuilder<NutricionEntity, DateTime, QQueryOperations>
      fechaInicioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaInicio');
    });
  }

  QueryBuilder<NutricionEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations>
      feedingTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feedingType');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations> mainFeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainFeed');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<NutricionEntity, String?, QQueryOperations>
      observedChangesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observedChanges');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations>
      registeredByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registeredBy');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations>
      registradoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registradoPor');
    });
  }

  QueryBuilder<NutricionEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<NutricionEntity, DateTime, QQueryOperations>
      startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDate');
    });
  }

  QueryBuilder<NutricionEntity, List<String>, QQueryOperations>
      suplementosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suplementos');
    });
  }

  QueryBuilder<NutricionEntity, List<String>, QQueryOperations>
      supplementsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supplements');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations>
      tipoAlimentacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoAlimentacion');
    });
  }

  QueryBuilder<NutricionEntity, double?, QQueryOperations> totalCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCost');
    });
  }

  QueryBuilder<NutricionEntity, DateTime?, QQueryOperations>
      updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
    });
  }

  QueryBuilder<NutricionEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
