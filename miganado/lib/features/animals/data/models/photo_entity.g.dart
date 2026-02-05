// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPhotoEntityCollection on Isar {
  IsarCollection<PhotoEntity> get photoEntitys => this.collection();
}

const PhotoEntitySchema = CollectionSchema(
  name: r'PhotoEntity',
  id: 8245672414119462092,
  properties: {
    r'animalUuid': PropertySchema(
      id: 0,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'captureDate': PropertySchema(
      id: 1,
      name: r'captureDate',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'localPath': PropertySchema(
      id: 3,
      name: r'localPath',
      type: IsarType.string,
    ),
    r'photoTitle': PropertySchema(
      id: 4,
      name: r'photoTitle',
      type: IsarType.string,
    ),
    r'recordedBy': PropertySchema(
      id: 5,
      name: r'recordedBy',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 6,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'updateDate': PropertySchema(
      id: 7,
      name: r'updateDate',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 8,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _photoEntityEstimateSize,
  serialize: _photoEntitySerialize,
  deserialize: _photoEntityDeserialize,
  deserializeProp: _photoEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'uuid': IndexSchema(
      id: 2134397340427724972,
      name: r'uuid',
      unique: false,
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
    r'captureDate': IndexSchema(
      id: -5565181042078011263,
      name: r'captureDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'captureDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _photoEntityGetId,
  getLinks: _photoEntityGetLinks,
  attach: _photoEntityAttach,
  version: '3.1.0+1',
);

int _photoEntityEstimateSize(
  PhotoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.localPath.length * 3;
  {
    final value = object.photoTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.recordedBy.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _photoEntitySerialize(
  PhotoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalUuid);
  writer.writeDateTime(offsets[1], object.captureDate);
  writer.writeString(offsets[2], object.description);
  writer.writeString(offsets[3], object.localPath);
  writer.writeString(offsets[4], object.photoTitle);
  writer.writeString(offsets[5], object.recordedBy);
  writer.writeDateTime(offsets[6], object.registrationDate);
  writer.writeDateTime(offsets[7], object.updateDate);
  writer.writeString(offsets[8], object.uuid);
}

PhotoEntity _photoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PhotoEntity(
    animalUuid: reader.readString(offsets[0]),
    captureDate: reader.readDateTime(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    localPath: reader.readString(offsets[3]),
    photoTitle: reader.readStringOrNull(offsets[4]),
    recordedBy: reader.readString(offsets[5]),
    registrationDate: reader.readDateTime(offsets[6]),
    updateDate: reader.readDateTimeOrNull(offsets[7]),
    uuid: reader.readString(offsets[8]),
  );
  object.id = id;
  return object;
}

P _photoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _photoEntityGetId(PhotoEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _photoEntityGetLinks(PhotoEntity object) {
  return [];
}

void _photoEntityAttach(
    IsarCollection<dynamic> col, Id id, PhotoEntity object) {
  object.id = id;
}

extension PhotoEntityQueryWhereSort
    on QueryBuilder<PhotoEntity, PhotoEntity, QWhere> {
  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhere> anyCaptureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'captureDate'),
      );
    });
  }
}

extension PhotoEntityQueryWhere
    on QueryBuilder<PhotoEntity, PhotoEntity, QWhereClause> {
  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> uuidNotEqualTo(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> animalUuidEqualTo(
      String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> captureDateEqualTo(
      DateTime captureDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'captureDate',
        value: [captureDate],
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause>
      captureDateNotEqualTo(DateTime captureDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'captureDate',
              lower: [],
              upper: [captureDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'captureDate',
              lower: [captureDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'captureDate',
              lower: [captureDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'captureDate',
              lower: [],
              upper: [captureDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause>
      captureDateGreaterThan(
    DateTime captureDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'captureDate',
        lower: [captureDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> captureDateLessThan(
    DateTime captureDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'captureDate',
        lower: [],
        upper: [captureDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterWhereClause> captureDateBetween(
    DateTime lowerCaptureDate,
    DateTime upperCaptureDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'captureDate',
        lower: [lowerCaptureDate],
        includeLower: includeLower,
        upper: [upperCaptureDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PhotoEntityQueryFilter
    on QueryBuilder<PhotoEntity, PhotoEntity, QFilterCondition> {
  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      captureDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'captureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      captureDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'captureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      captureDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'captureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      captureDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'captureDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localPath',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      localPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localPath',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoTitle',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoTitle',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      photoTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recordedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recordedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recordedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      recordedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recordedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      updateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidEqualTo(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidGreaterThan(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidLessThan(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidBetween(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidStartsWith(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidEndsWith(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidContains(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidMatches(
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

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension PhotoEntityQueryObject
    on QueryBuilder<PhotoEntity, PhotoEntity, QFilterCondition> {}

extension PhotoEntityQueryLinks
    on QueryBuilder<PhotoEntity, PhotoEntity, QFilterCondition> {}

extension PhotoEntityQuerySortBy
    on QueryBuilder<PhotoEntity, PhotoEntity, QSortBy> {
  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByCaptureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'captureDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByCaptureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'captureDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByPhotoTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoTitle', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByPhotoTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoTitle', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByRecordedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedBy', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByRecordedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedBy', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension PhotoEntityQuerySortThenBy
    on QueryBuilder<PhotoEntity, PhotoEntity, QSortThenBy> {
  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByCaptureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'captureDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByCaptureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'captureDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByPhotoTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoTitle', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByPhotoTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoTitle', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByRecordedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedBy', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByRecordedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordedBy', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension PhotoEntityQueryWhereDistinct
    on QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> {
  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByAnimalUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByCaptureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'captureDate');
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByLocalPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByPhotoTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByRecordedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
    });
  }

  QueryBuilder<PhotoEntity, PhotoEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension PhotoEntityQueryProperty
    on QueryBuilder<PhotoEntity, PhotoEntity, QQueryProperty> {
  QueryBuilder<PhotoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PhotoEntity, String, QQueryOperations> animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<PhotoEntity, DateTime, QQueryOperations> captureDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'captureDate');
    });
  }

  QueryBuilder<PhotoEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<PhotoEntity, String, QQueryOperations> localPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localPath');
    });
  }

  QueryBuilder<PhotoEntity, String?, QQueryOperations> photoTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoTitle');
    });
  }

  QueryBuilder<PhotoEntity, String, QQueryOperations> recordedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordedBy');
    });
  }

  QueryBuilder<PhotoEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<PhotoEntity, DateTime?, QQueryOperations> updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
    });
  }

  QueryBuilder<PhotoEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
