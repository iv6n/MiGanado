// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reproductive_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReproductiveEntityCollection on Isar {
  IsarCollection<ReproductiveEntity> get reproductiveEntitys =>
      this.collection();
}

const ReproductiveEntitySchema = CollectionSchema(
  name: r'ReproductiveEntity',
  id: 5893137532483089381,
  properties: {
    r'animalUuid': PropertySchema(
      id: 0,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'currentMatingDate': PropertySchema(
      id: 1,
      name: r'currentMatingDate',
      type: IsarType.dateTime,
    ),
    r'estimatedBirthDate': PropertySchema(
      id: 2,
      name: r'estimatedBirthDate',
      type: IsarType.dateTime,
    ),
    r'firstBirth': PropertySchema(
      id: 3,
      name: r'firstBirth',
      type: IsarType.dateTime,
    ),
    r'lastBirth': PropertySchema(
      id: 4,
      name: r'lastBirth',
      type: IsarType.dateTime,
    ),
    r'lastEstrusDate': PropertySchema(
      id: 5,
      name: r'lastEstrusDate',
      type: IsarType.dateTime,
    ),
    r'lastUpdateDate': PropertySchema(
      id: 6,
      name: r'lastUpdateDate',
      type: IsarType.dateTime,
    ),
    r'matingObservations': PropertySchema(
      id: 7,
      name: r'matingObservations',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 8,
      name: r'observations',
      type: IsarType.string,
    ),
    r'registeredBy': PropertySchema(
      id: 9,
      name: r'registeredBy',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 10,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'sireUuid': PropertySchema(
      id: 11,
      name: r'sireUuid',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 12,
      name: r'status',
      type: IsarType.string,
    ),
    r'totalBirths': PropertySchema(
      id: 13,
      name: r'totalBirths',
      type: IsarType.long,
    ),
    r'totalOffspring': PropertySchema(
      id: 14,
      name: r'totalOffspring',
      type: IsarType.long,
    ),
    r'uuid': PropertySchema(
      id: 15,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _reproductiveEntityEstimateSize,
  serialize: _reproductiveEntitySerialize,
  deserialize: _reproductiveEntityDeserialize,
  deserializeProp: _reproductiveEntityDeserializeProp,
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
  getId: _reproductiveEntityGetId,
  getLinks: _reproductiveEntityGetLinks,
  attach: _reproductiveEntityAttach,
  version: '3.1.0+1',
);

int _reproductiveEntityEstimateSize(
  ReproductiveEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.matingObservations;
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
  bytesCount += 3 + object.registeredBy.length * 3;
  {
    final value = object.sireUuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _reproductiveEntitySerialize(
  ReproductiveEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalUuid);
  writer.writeDateTime(offsets[1], object.currentMatingDate);
  writer.writeDateTime(offsets[2], object.estimatedBirthDate);
  writer.writeDateTime(offsets[3], object.firstBirth);
  writer.writeDateTime(offsets[4], object.lastBirth);
  writer.writeDateTime(offsets[5], object.lastEstrusDate);
  writer.writeDateTime(offsets[6], object.lastUpdateDate);
  writer.writeString(offsets[7], object.matingObservations);
  writer.writeString(offsets[8], object.observations);
  writer.writeString(offsets[9], object.registeredBy);
  writer.writeDateTime(offsets[10], object.registrationDate);
  writer.writeString(offsets[11], object.sireUuid);
  writer.writeString(offsets[12], object.status);
  writer.writeLong(offsets[13], object.totalBirths);
  writer.writeLong(offsets[14], object.totalOffspring);
  writer.writeString(offsets[15], object.uuid);
}

ReproductiveEntity _reproductiveEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReproductiveEntity(
    animalUuid: reader.readString(offsets[0]),
    currentMatingDate: reader.readDateTimeOrNull(offsets[1]),
    estimatedBirthDate: reader.readDateTimeOrNull(offsets[2]),
    lastEstrusDate: reader.readDateTimeOrNull(offsets[5]),
    matingObservations: reader.readStringOrNull(offsets[7]),
    observations: reader.readStringOrNull(offsets[8]),
    registeredBy: reader.readString(offsets[9]),
    sireUuid: reader.readStringOrNull(offsets[11]),
    status: reader.readString(offsets[12]),
  );
  object.firstBirth = reader.readDateTimeOrNull(offsets[3]);
  object.id = id;
  object.lastBirth = reader.readDateTimeOrNull(offsets[4]);
  object.lastUpdateDate = reader.readDateTimeOrNull(offsets[6]);
  object.registrationDate = reader.readDateTime(offsets[10]);
  object.totalBirths = reader.readLong(offsets[13]);
  object.totalOffspring = reader.readLong(offsets[14]);
  object.uuid = reader.readString(offsets[15]);
  return object;
}

P _reproductiveEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDateTime(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _reproductiveEntityGetId(ReproductiveEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _reproductiveEntityGetLinks(
    ReproductiveEntity object) {
  return [];
}

void _reproductiveEntityAttach(
    IsarCollection<dynamic> col, Id id, ReproductiveEntity object) {
  object.id = id;
}

extension ReproductiveEntityByIndex on IsarCollection<ReproductiveEntity> {
  Future<ReproductiveEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  ReproductiveEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<ReproductiveEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<ReproductiveEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(ReproductiveEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(ReproductiveEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<ReproductiveEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<ReproductiveEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension ReproductiveEntityQueryWhereSort
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QWhere> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReproductiveEntityQueryWhere
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QWhereClause> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
      uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
      animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterWhereClause>
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

extension ReproductiveEntityQueryFilter
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QFilterCondition> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentMatingDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentMatingDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentMatingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentMatingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentMatingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      currentMatingDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentMatingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estimatedBirthDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estimatedBirthDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estimatedBirthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estimatedBirthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estimatedBirthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      estimatedBirthDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estimatedBirthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstBirth',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstBirth',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      firstBirthBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastBirth',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastBirth',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastBirthBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastEstrusDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastEstrusDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastEstrusDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastEstrusDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastEstrusDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastEstrusDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastEstrusDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUpdateDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUpdateDate',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      lastUpdateDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdateDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'matingObservations',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'matingObservations',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matingObservations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'matingObservations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'matingObservations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matingObservations',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      matingObservationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'matingObservations',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      registeredByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      registeredByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registeredBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      registeredByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      registeredByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sireUuid',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sireUuid',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sireUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sireUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sireUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sireUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      sireUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sireUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalBirthsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalBirths',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalBirthsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalBirths',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalBirthsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalBirths',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalBirthsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalBirths',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalOffspringEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalOffspring',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalOffspringGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalOffspring',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalOffspringLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalOffspring',
        value: value,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      totalOffspringBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalOffspring',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
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

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension ReproductiveEntityQueryObject
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QFilterCondition> {}

extension ReproductiveEntityQueryLinks
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QFilterCondition> {}

extension ReproductiveEntityQuerySortBy
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QSortBy> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByCurrentMatingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentMatingDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByCurrentMatingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentMatingDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByEstimatedBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedBirthDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByEstimatedBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedBirthDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByFirstBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstBirth', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByFirstBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstBirth', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastBirth', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastBirth', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastEstrusDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEstrusDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastEstrusDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEstrusDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByLastUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByMatingObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matingObservations', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByMatingObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matingObservations', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortBySireUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sireUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortBySireUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sireUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByTotalBirths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBirths', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByTotalBirthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBirths', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByTotalOffspring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOffspring', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByTotalOffspringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOffspring', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension ReproductiveEntityQuerySortThenBy
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QSortThenBy> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByCurrentMatingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentMatingDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByCurrentMatingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentMatingDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByEstimatedBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedBirthDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByEstimatedBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedBirthDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByFirstBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstBirth', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByFirstBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstBirth', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastBirth', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastBirth', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastEstrusDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEstrusDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastEstrusDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEstrusDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByLastUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByMatingObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matingObservations', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByMatingObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matingObservations', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenBySireUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sireUuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenBySireUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sireUuid', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByTotalBirths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBirths', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByTotalBirthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBirths', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByTotalOffspring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOffspring', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByTotalOffspringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOffspring', Sort.desc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension ReproductiveEntityQueryWhereDistinct
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct> {
  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByCurrentMatingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentMatingDate');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByEstimatedBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estimatedBirthDate');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByFirstBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstBirth');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByLastBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastBirth');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByLastEstrusDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastEstrusDate');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdateDate');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByMatingObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'matingObservations',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByRegisteredBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registeredBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctBySireUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sireUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByTotalBirths() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalBirths');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByTotalOffspring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalOffspring');
    });
  }

  QueryBuilder<ReproductiveEntity, ReproductiveEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension ReproductiveEntityQueryProperty
    on QueryBuilder<ReproductiveEntity, ReproductiveEntity, QQueryProperty> {
  QueryBuilder<ReproductiveEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReproductiveEntity, String, QQueryOperations>
      animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      currentMatingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentMatingDate');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      estimatedBirthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estimatedBirthDate');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      firstBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstBirth');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      lastBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastBirth');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      lastEstrusDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastEstrusDate');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime?, QQueryOperations>
      lastUpdateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdateDate');
    });
  }

  QueryBuilder<ReproductiveEntity, String?, QQueryOperations>
      matingObservationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'matingObservations');
    });
  }

  QueryBuilder<ReproductiveEntity, String?, QQueryOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<ReproductiveEntity, String, QQueryOperations>
      registeredByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registeredBy');
    });
  }

  QueryBuilder<ReproductiveEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<ReproductiveEntity, String?, QQueryOperations>
      sireUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sireUuid');
    });
  }

  QueryBuilder<ReproductiveEntity, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ReproductiveEntity, int, QQueryOperations>
      totalBirthsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalBirths');
    });
  }

  QueryBuilder<ReproductiveEntity, int, QQueryOperations>
      totalOffspringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalOffspring');
    });
  }

  QueryBuilder<ReproductiveEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
