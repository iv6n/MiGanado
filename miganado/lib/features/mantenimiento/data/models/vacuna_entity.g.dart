// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacuna_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVacunaEntityCollection on Isar {
  IsarCollection<VacunaEntity> get vacunaEntitys => this.collection();
}

const VacunaEntitySchema = CollectionSchema(
  name: r'VacunaEntity',
  id: -2584441087656783655,
  properties: {
    r'administrationRoute': PropertySchema(
      id: 0,
      name: r'administrationRoute',
      type: IsarType.string,
    ),
    r'adverseReactions': PropertySchema(
      id: 1,
      name: r'adverseReactions',
      type: IsarType.string,
    ),
    r'animalUuid': PropertySchema(
      id: 2,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'aplicadoPor': PropertySchema(
      id: 3,
      name: r'aplicadoPor',
      type: IsarType.string,
    ),
    r'appliedBy': PropertySchema(
      id: 4,
      name: r'appliedBy',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 5,
      name: r'cost',
      type: IsarType.double,
    ),
    r'costo': PropertySchema(
      id: 6,
      name: r'costo',
      type: IsarType.double,
    ),
    r'date': PropertySchema(
      id: 7,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'diasIntervalo': PropertySchema(
      id: 8,
      name: r'diasIntervalo',
      type: IsarType.long,
    ),
    r'disease': PropertySchema(
      id: 9,
      name: r'disease',
      type: IsarType.string,
    ),
    r'dose': PropertySchema(
      id: 10,
      name: r'dose',
      type: IsarType.string,
    ),
    r'dosis': PropertySchema(
      id: 11,
      name: r'dosis',
      type: IsarType.string,
    ),
    r'enfermedad': PropertySchema(
      id: 12,
      name: r'enfermedad',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 13,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 14,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 15,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'intervalDays': PropertySchema(
      id: 16,
      name: r'intervalDays',
      type: IsarType.long,
    ),
    r'lot': PropertySchema(
      id: 17,
      name: r'lot',
      type: IsarType.string,
    ),
    r'lote': PropertySchema(
      id: 18,
      name: r'lote',
      type: IsarType.string,
    ),
    r'nextDate': PropertySchema(
      id: 19,
      name: r'nextDate',
      type: IsarType.dateTime,
    ),
    r'observaciones': PropertySchema(
      id: 20,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 21,
      name: r'observations',
      type: IsarType.string,
    ),
    r'product': PropertySchema(
      id: 22,
      name: r'product',
      type: IsarType.string,
    ),
    r'producto': PropertySchema(
      id: 23,
      name: r'producto',
      type: IsarType.string,
    ),
    r'proximaFecha': PropertySchema(
      id: 24,
      name: r'proximaFecha',
      type: IsarType.dateTime,
    ),
    r'reaccionesAdversas': PropertySchema(
      id: 25,
      name: r'reaccionesAdversas',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 26,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'tipo': PropertySchema(
      id: 27,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 28,
      name: r'type',
      type: IsarType.string,
    ),
    r'updateDate': PropertySchema(
      id: 29,
      name: r'updateDate',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 30,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'viaAplicacion': PropertySchema(
      id: 31,
      name: r'viaAplicacion',
      type: IsarType.string,
    )
  },
  estimateSize: _vacunaEntityEstimateSize,
  serialize: _vacunaEntitySerialize,
  deserialize: _vacunaEntityDeserialize,
  deserializeProp: _vacunaEntityDeserializeProp,
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
  getId: _vacunaEntityGetId,
  getLinks: _vacunaEntityGetLinks,
  attach: _vacunaEntityAttach,
  version: '3.1.0+1',
);

int _vacunaEntityEstimateSize(
  VacunaEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.administrationRoute;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.adverseReactions;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.aplicadoPor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.appliedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.disease.length * 3;
  {
    final value = object.dose;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dosis;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.enfermedad.length * 3;
  {
    final value = object.lot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lote;
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
    final value = object.observations;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.product;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.producto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reaccionesAdversas;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.type.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  {
    final value = object.viaAplicacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _vacunaEntitySerialize(
  VacunaEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.administrationRoute);
  writer.writeString(offsets[1], object.adverseReactions);
  writer.writeString(offsets[2], object.animalUuid);
  writer.writeString(offsets[3], object.aplicadoPor);
  writer.writeString(offsets[4], object.appliedBy);
  writer.writeDouble(offsets[5], object.cost);
  writer.writeDouble(offsets[6], object.costo);
  writer.writeDateTime(offsets[7], object.date);
  writer.writeLong(offsets[8], object.diasIntervalo);
  writer.writeString(offsets[9], object.disease);
  writer.writeString(offsets[10], object.dose);
  writer.writeString(offsets[11], object.dosis);
  writer.writeString(offsets[12], object.enfermedad);
  writer.writeDateTime(offsets[13], object.fecha);
  writer.writeDateTime(offsets[14], object.fechaActualizacion);
  writer.writeDateTime(offsets[15], object.fechaRegistro);
  writer.writeLong(offsets[16], object.intervalDays);
  writer.writeString(offsets[17], object.lot);
  writer.writeString(offsets[18], object.lote);
  writer.writeDateTime(offsets[19], object.nextDate);
  writer.writeString(offsets[20], object.observaciones);
  writer.writeString(offsets[21], object.observations);
  writer.writeString(offsets[22], object.product);
  writer.writeString(offsets[23], object.producto);
  writer.writeDateTime(offsets[24], object.proximaFecha);
  writer.writeString(offsets[25], object.reaccionesAdversas);
  writer.writeDateTime(offsets[26], object.registrationDate);
  writer.writeString(offsets[27], object.tipo);
  writer.writeString(offsets[28], object.type);
  writer.writeDateTime(offsets[29], object.updateDate);
  writer.writeString(offsets[30], object.uuid);
  writer.writeString(offsets[31], object.viaAplicacion);
}

VacunaEntity _vacunaEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VacunaEntity();
  object.administrationRoute = reader.readStringOrNull(offsets[0]);
  object.adverseReactions = reader.readStringOrNull(offsets[1]);
  object.animalUuid = reader.readString(offsets[2]);
  object.appliedBy = reader.readStringOrNull(offsets[4]);
  object.cost = reader.readDoubleOrNull(offsets[5]);
  object.date = reader.readDateTime(offsets[7]);
  object.disease = reader.readString(offsets[9]);
  object.dose = reader.readStringOrNull(offsets[10]);
  object.id = id;
  object.intervalDays = reader.readLong(offsets[16]);
  object.lot = reader.readStringOrNull(offsets[17]);
  object.nextDate = reader.readDateTimeOrNull(offsets[19]);
  object.observations = reader.readStringOrNull(offsets[21]);
  object.product = reader.readStringOrNull(offsets[22]);
  object.registrationDate = reader.readDateTime(offsets[26]);
  object.type = reader.readString(offsets[28]);
  object.updateDate = reader.readDateTimeOrNull(offsets[29]);
  object.uuid = reader.readString(offsets[30]);
  return object;
}

P _vacunaEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readDateTime(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _vacunaEntityGetId(VacunaEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _vacunaEntityGetLinks(VacunaEntity object) {
  return [];
}

void _vacunaEntityAttach(
    IsarCollection<dynamic> col, Id id, VacunaEntity object) {
  object.id = id;
}

extension VacunaEntityByIndex on IsarCollection<VacunaEntity> {
  Future<VacunaEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  VacunaEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<VacunaEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<VacunaEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(VacunaEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(VacunaEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<VacunaEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<VacunaEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension VacunaEntityQueryWhereSort
    on QueryBuilder<VacunaEntity, VacunaEntity, QWhere> {
  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VacunaEntityQueryWhere
    on QueryBuilder<VacunaEntity, VacunaEntity, QWhereClause> {
  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> uuidNotEqualTo(
      String uuid) {
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause> animalUuidEqualTo(
      String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterWhereClause>
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

extension VacunaEntityQueryFilter
    on QueryBuilder<VacunaEntity, VacunaEntity, QFilterCondition> {
  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'administrationRoute',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'administrationRoute',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'administrationRoute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'administrationRoute',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      administrationRouteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'adverseReactions',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'adverseReactions',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adverseReactions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adverseReactions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adverseReactions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adverseReactions',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      adverseReactionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adverseReactions',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aplicadoPor',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aplicadoPor',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aplicadoPor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aplicadoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aplicadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      aplicadoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aplicadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appliedBy',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appliedBy',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appliedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appliedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appliedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      appliedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appliedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      costIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      costGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      costoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      costoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costoEqualTo(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      costoGreaterThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costoLessThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> costoBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diasIntervaloEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasIntervalo',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diasIntervaloGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diasIntervalo',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diasIntervaloLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diasIntervalo',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diasIntervaloBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diasIntervalo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'disease',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'disease',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disease',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      diseaseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'disease',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dose',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      doseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dose',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      doseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dose',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      doseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> doseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dose',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      doseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dose',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      doseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dose',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dosis',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dosis',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dosis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> dosisMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dosis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      dosisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enfermedad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enfermedad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enfermedad',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enfermedad',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      enfermedadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enfermedad',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> fechaEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      fechaGreaterThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> fechaLessThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> fechaBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      intervalDaysEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      intervalDaysGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      intervalDaysLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      intervalDaysBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intervalDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      lotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      lotGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> lotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lot',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      lotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lot',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      loteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      loteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lote',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      loteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> loteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lote',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      loteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      loteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextDate',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextDate',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      nextDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observaciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'product',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'product',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'product',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'product',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'product',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'producto',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'producto',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'producto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'producto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      productoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'proximaFecha',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'proximaFecha',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proximaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaGreaterThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaLessThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      proximaFechaBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reaccionesAdversas',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reaccionesAdversas',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reaccionesAdversas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reaccionesAdversas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reaccionesAdversas',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      reaccionesAdversasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reaccionesAdversas',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      tipoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> tipoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      updateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidEqualTo(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidLessThan(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidBetween(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidEndsWith(
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

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition> uuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'viaAplicacion',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'viaAplicacion',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viaAplicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'viaAplicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterFilterCondition>
      viaAplicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }
}

extension VacunaEntityQueryObject
    on QueryBuilder<VacunaEntity, VacunaEntity, QFilterCondition> {}

extension VacunaEntityQueryLinks
    on QueryBuilder<VacunaEntity, VacunaEntity, QFilterCondition> {}

extension VacunaEntityQuerySortBy
    on QueryBuilder<VacunaEntity, VacunaEntity, QSortBy> {
  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAdverseReactions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adverseReactions', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAdverseReactionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adverseReactions', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByAplicadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByAplicadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByAppliedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByAppliedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByDiasIntervaloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDisease() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDiseaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByEnfermedad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enfermedad', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByEnfermedadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enfermedad', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByIntervalDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByNextDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByNextDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByProducto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByProductoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByProximaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByReaccionesAdversas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByReaccionesAdversasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> sortByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      sortByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension VacunaEntityQuerySortThenBy
    on QueryBuilder<VacunaEntity, VacunaEntity, QSortThenBy> {
  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAdverseReactions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adverseReactions', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAdverseReactionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adverseReactions', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByAplicadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByAplicadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByAppliedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByAppliedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByDiasIntervaloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDisease() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDiseaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByEnfermedad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enfermedad', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByEnfermedadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enfermedad', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByIntervalDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByNextDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByNextDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByProducto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByProductoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByProximaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaFecha', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByReaccionesAdversas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByReaccionesAdversasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy> thenByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QAfterSortBy>
      thenByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension VacunaEntityQueryWhereDistinct
    on QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> {
  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByAdministrationRoute({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'administrationRoute',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByAdverseReactions({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adverseReactions',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByAnimalUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByAplicadoPor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aplicadoPor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByAppliedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appliedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costo');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diasIntervalo');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByDisease(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'disease', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByDose(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dose', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByDosis(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dosis', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByEnfermedad(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enfermedad', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intervalDays');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByLot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lot', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByLote(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lote', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByNextDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextDate');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByObservaciones(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByObservations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByProduct(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'product', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByProducto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'producto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByProximaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proximaFecha');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByReaccionesAdversas({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reaccionesAdversas',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VacunaEntity, VacunaEntity, QDistinct> distinctByViaAplicacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viaAplicacion',
          caseSensitive: caseSensitive);
    });
  }
}

extension VacunaEntityQueryProperty
    on QueryBuilder<VacunaEntity, VacunaEntity, QQueryProperty> {
  QueryBuilder<VacunaEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations>
      administrationRouteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'administrationRoute');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations>
      adverseReactionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adverseReactions');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> aplicadoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aplicadoPor');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> appliedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appliedBy');
    });
  }

  QueryBuilder<VacunaEntity, double?, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<VacunaEntity, double?, QQueryOperations> costoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costo');
    });
  }

  QueryBuilder<VacunaEntity, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<VacunaEntity, int, QQueryOperations> diasIntervaloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diasIntervalo');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> diseaseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'disease');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> doseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dose');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> dosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosis');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> enfermedadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enfermedad');
    });
  }

  QueryBuilder<VacunaEntity, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<VacunaEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<VacunaEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<VacunaEntity, int, QQueryOperations> intervalDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intervalDays');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> lotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lot');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> loteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lote');
    });
  }

  QueryBuilder<VacunaEntity, DateTime?, QQueryOperations> nextDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextDate');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> productProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'product');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations> productoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'producto');
    });
  }

  QueryBuilder<VacunaEntity, DateTime?, QQueryOperations>
      proximaFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proximaFecha');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations>
      reaccionesAdversasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reaccionesAdversas');
    });
  }

  QueryBuilder<VacunaEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<VacunaEntity, DateTime?, QQueryOperations> updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
    });
  }

  QueryBuilder<VacunaEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<VacunaEntity, String?, QQueryOperations>
      viaAplicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viaAplicacion');
    });
  }
}
