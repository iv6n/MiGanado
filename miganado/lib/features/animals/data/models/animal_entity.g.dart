// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAnimalEntityCollection on Isar {
  IsarCollection<AnimalEntity> get animalEntitys => this.collection();
}

const AnimalEntitySchema = CollectionSchema(
  name: r'AnimalEntity',
  id: 2638646966126597338,
  properties: {
    r'ageMonths': PropertySchema(
      id: 0,
      name: r'ageMonths',
      type: IsarType.long,
    ),
    r'birthDate': PropertySchema(
      id: 1,
      name: r'birthDate',
      type: IsarType.dateTime,
    ),
    r'breed': PropertySchema(
      id: 2,
      name: r'breed',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 3,
      name: r'category',
      type: IsarType.byte,
      enumMap: _AnimalEntitycategoryEnumValueMap,
    ),
    r'contentHash': PropertySchema(
      id: 4,
      name: r'contentHash',
      type: IsarType.string,
    ),
    r'creationDate': PropertySchema(
      id: 5,
      name: r'creationDate',
      type: IsarType.dateTime,
    ),
    r'currentWeight': PropertySchema(
      id: 6,
      name: r'currentWeight',
      type: IsarType.double,
    ),
    r'customName': PropertySchema(
      id: 7,
      name: r'customName',
      type: IsarType.string,
    ),
    r'dewormed': PropertySchema(
      id: 8,
      name: r'dewormed',
      type: IsarType.bool,
    ),
    r'dewormerType': PropertySchema(
      id: 9,
      name: r'dewormerType',
      type: IsarType.string,
    ),
    r'earTagNumber': PropertySchema(
      id: 10,
      name: r'earTagNumber',
      type: IsarType.string,
    ),
    r'hasVitamins': PropertySchema(
      id: 11,
      name: r'hasVitamins',
      type: IsarType.bool,
    ),
    r'isCastrated': PropertySchema(
      id: 12,
      name: r'isCastrated',
      type: IsarType.bool,
    ),
    r'lastDewormingDate': PropertySchema(
      id: 13,
      name: r'lastDewormingDate',
      type: IsarType.dateTime,
    ),
    r'lastUpdateDate': PropertySchema(
      id: 14,
      name: r'lastUpdateDate',
      type: IsarType.dateTime,
    ),
    r'lastVaccinationDate': PropertySchema(
      id: 15,
      name: r'lastVaccinationDate',
      type: IsarType.dateTime,
    ),
    r'lastVitaminDate': PropertySchema(
      id: 16,
      name: r'lastVitaminDate',
      type: IsarType.dateTime,
    ),
    r'lastWeighingDate': PropertySchema(
      id: 17,
      name: r'lastWeighingDate',
      type: IsarType.dateTime,
    ),
    r'lifeStage': PropertySchema(
      id: 18,
      name: r'lifeStage',
      type: IsarType.byte,
      enumMap: _AnimalEntitylifeStageEnumValueMap,
    ),
    r'location': PropertySchema(
      id: 19,
      name: r'location',
      type: IsarType.string,
    ),
    r'notes': PropertySchema(
      id: 20,
      name: r'notes',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 21,
      name: r'observations',
      type: IsarType.string,
    ),
    r'purchasePrice': PropertySchema(
      id: 22,
      name: r'purchasePrice',
      type: IsarType.double,
    ),
    r'remoteId': PropertySchema(
      id: 23,
      name: r'remoteId',
      type: IsarType.string,
    ),
    r'reproductiveStatus': PropertySchema(
      id: 24,
      name: r'reproductiveStatus',
      type: IsarType.byte,
      enumMap: _AnimalEntityreproductiveStatusEnumValueMap,
    ),
    r'salePrice': PropertySchema(
      id: 25,
      name: r'salePrice',
      type: IsarType.double,
    ),
    r'sex': PropertySchema(
      id: 26,
      name: r'sex',
      type: IsarType.byte,
      enumMap: _AnimalEntitysexEnumValueMap,
    ),
    r'species': PropertySchema(
      id: 27,
      name: r'species',
      type: IsarType.byte,
      enumMap: _AnimalEntityspeciesEnumValueMap,
    ),
    r'syncDate': PropertySchema(
      id: 28,
      name: r'syncDate',
      type: IsarType.dateTime,
    ),
    r'synced': PropertySchema(
      id: 29,
      name: r'synced',
      type: IsarType.bool,
    ),
    r'underObservation': PropertySchema(
      id: 30,
      name: r'underObservation',
      type: IsarType.bool,
    ),
    r'uuid': PropertySchema(
      id: 31,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'vaccinated': PropertySchema(
      id: 32,
      name: r'vaccinated',
      type: IsarType.bool,
    ),
    r'vaccineType': PropertySchema(
      id: 33,
      name: r'vaccineType',
      type: IsarType.string,
    )
  },
  estimateSize: _animalEntityEstimateSize,
  serialize: _animalEntitySerialize,
  deserialize: _animalEntityDeserialize,
  deserializeProp: _animalEntityDeserializeProp,
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
    r'earTagNumber': IndexSchema(
      id: 1933371050748435691,
      name: r'earTagNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'earTagNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _animalEntityGetId,
  getLinks: _animalEntityGetLinks,
  attach: _animalEntityAttach,
  version: '3.1.0+1',
);

int _animalEntityEstimateSize(
  AnimalEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.breed.length * 3;
  {
    final value = object.contentHash;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dewormerType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.earTagNumber.length * 3;
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notes;
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
    final value = object.remoteId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  {
    final value = object.vaccineType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _animalEntitySerialize(
  AnimalEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ageMonths);
  writer.writeDateTime(offsets[1], object.birthDate);
  writer.writeString(offsets[2], object.breed);
  writer.writeByte(offsets[3], object.category.index);
  writer.writeString(offsets[4], object.contentHash);
  writer.writeDateTime(offsets[5], object.creationDate);
  writer.writeDouble(offsets[6], object.currentWeight);
  writer.writeString(offsets[7], object.customName);
  writer.writeBool(offsets[8], object.dewormed);
  writer.writeString(offsets[9], object.dewormerType);
  writer.writeString(offsets[10], object.earTagNumber);
  writer.writeBool(offsets[11], object.hasVitamins);
  writer.writeBool(offsets[12], object.isCastrated);
  writer.writeDateTime(offsets[13], object.lastDewormingDate);
  writer.writeDateTime(offsets[14], object.lastUpdateDate);
  writer.writeDateTime(offsets[15], object.lastVaccinationDate);
  writer.writeDateTime(offsets[16], object.lastVitaminDate);
  writer.writeDateTime(offsets[17], object.lastWeighingDate);
  writer.writeByte(offsets[18], object.lifeStage.index);
  writer.writeString(offsets[19], object.location);
  writer.writeString(offsets[20], object.notes);
  writer.writeString(offsets[21], object.observations);
  writer.writeDouble(offsets[22], object.purchasePrice);
  writer.writeString(offsets[23], object.remoteId);
  writer.writeByte(offsets[24], object.reproductiveStatus.index);
  writer.writeDouble(offsets[25], object.salePrice);
  writer.writeByte(offsets[26], object.sex.index);
  writer.writeByte(offsets[27], object.species.index);
  writer.writeDateTime(offsets[28], object.syncDate);
  writer.writeBool(offsets[29], object.synced);
  writer.writeBool(offsets[30], object.underObservation);
  writer.writeString(offsets[31], object.uuid);
  writer.writeBool(offsets[32], object.vaccinated);
  writer.writeString(offsets[33], object.vaccineType);
}

AnimalEntity _animalEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnimalEntity(
    ageMonths: reader.readLong(offsets[0]),
    birthDate: reader.readDateTime(offsets[1]),
    breed: reader.readString(offsets[2]),
    category:
        _AnimalEntitycategoryValueEnumMap[reader.readByteOrNull(offsets[3])] ??
            Category.cow,
    customName: reader.readStringOrNull(offsets[7]),
    dewormed: reader.readBoolOrNull(offsets[8]) ?? false,
    dewormerType: reader.readStringOrNull(offsets[9]),
    earTagNumber: reader.readString(offsets[10]),
    hasVitamins: reader.readBoolOrNull(offsets[11]) ?? false,
    isCastrated: reader.readBoolOrNull(offsets[12]) ?? false,
    lastDewormingDate: reader.readDateTimeOrNull(offsets[13]),
    lastVaccinationDate: reader.readDateTimeOrNull(offsets[15]),
    lastVitaminDate: reader.readDateTimeOrNull(offsets[16]),
    location: reader.readStringOrNull(offsets[19]),
    notes: reader.readStringOrNull(offsets[20]),
    purchasePrice: reader.readDoubleOrNull(offsets[22]),
    reproductiveStatus: _AnimalEntityreproductiveStatusValueEnumMap[
            reader.readByteOrNull(offsets[24])] ??
        ReproductiveStatus.undefined,
    salePrice: reader.readDoubleOrNull(offsets[25]),
    sex: _AnimalEntitysexValueEnumMap[reader.readByteOrNull(offsets[26])] ??
        Sex.male,
    species:
        _AnimalEntityspeciesValueEnumMap[reader.readByteOrNull(offsets[27])] ??
            Species.cattle,
    vaccinated: reader.readBoolOrNull(offsets[32]) ?? false,
    vaccineType: reader.readStringOrNull(offsets[33]),
  );
  object.contentHash = reader.readStringOrNull(offsets[4]);
  object.creationDate = reader.readDateTime(offsets[5]);
  object.currentWeight = reader.readDoubleOrNull(offsets[6]);
  object.id = id;
  object.lastUpdateDate = reader.readDateTime(offsets[14]);
  object.lastWeighingDate = reader.readDateTimeOrNull(offsets[17]);
  object.lifeStage =
      _AnimalEntitylifeStageValueEnumMap[reader.readByteOrNull(offsets[18])] ??
          LifeStage.calf;
  object.observations = reader.readStringOrNull(offsets[21]);
  object.remoteId = reader.readStringOrNull(offsets[23]);
  object.syncDate = reader.readDateTimeOrNull(offsets[28]);
  object.synced = reader.readBool(offsets[29]);
  object.underObservation = reader.readBool(offsets[30]);
  object.uuid = reader.readString(offsets[31]);
  return object;
}

P _animalEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (_AnimalEntitycategoryValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Category.cow) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 12:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 18:
      return (_AnimalEntitylifeStageValueEnumMap[
              reader.readByteOrNull(offset)] ??
          LifeStage.calf) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (_AnimalEntityreproductiveStatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ReproductiveStatus.undefined) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (_AnimalEntitysexValueEnumMap[reader.readByteOrNull(offset)] ??
          Sex.male) as P;
    case 27:
      return (_AnimalEntityspeciesValueEnumMap[reader.readByteOrNull(offset)] ??
          Species.cattle) as P;
    case 28:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 29:
      return (reader.readBool(offset)) as P;
    case 30:
      return (reader.readBool(offset)) as P;
    case 31:
      return (reader.readString(offset)) as P;
    case 32:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AnimalEntitycategoryEnumValueMap = {
  'cow': 0,
  'bull': 1,
  'horse': 2,
  'mare': 3,
  'donkey': 4,
  'jenny': 5,
  'donkeyFemale': 6,
  'mule': 7,
};
const _AnimalEntitycategoryValueEnumMap = {
  0: Category.cow,
  1: Category.bull,
  2: Category.horse,
  3: Category.mare,
  4: Category.donkey,
  5: Category.jenny,
  6: Category.donkeyFemale,
  7: Category.mule,
};
const _AnimalEntitylifeStageEnumValueMap = {
  'calf': 0,
  'calfMale': 1,
  'calfFemale': 2,
  'heifer': 3,
  'youngBull': 4,
  'steer': 5,
  'cow': 6,
  'bull': 7,
  'colt': 8,
  'filly': 9,
  'horse': 10,
  'mare': 11,
  'donkey': 12,
  'donkeyFemale': 13,
  'mule': 14,
};
const _AnimalEntitylifeStageValueEnumMap = {
  0: LifeStage.calf,
  1: LifeStage.calfMale,
  2: LifeStage.calfFemale,
  3: LifeStage.heifer,
  4: LifeStage.youngBull,
  5: LifeStage.steer,
  6: LifeStage.cow,
  7: LifeStage.bull,
  8: LifeStage.colt,
  9: LifeStage.filly,
  10: LifeStage.horse,
  11: LifeStage.mare,
  12: LifeStage.donkey,
  13: LifeStage.donkeyFemale,
  14: LifeStage.mule,
};
const _AnimalEntityreproductiveStatusEnumValueMap = {
  'virgin': 0,
  'pregnant': 1,
  'lactating': 2,
  'empty': 3,
  'blocked': 4,
  'undefined': 5,
};
const _AnimalEntityreproductiveStatusValueEnumMap = {
  0: ReproductiveStatus.virgin,
  1: ReproductiveStatus.pregnant,
  2: ReproductiveStatus.lactating,
  3: ReproductiveStatus.empty,
  4: ReproductiveStatus.blocked,
  5: ReproductiveStatus.undefined,
};
const _AnimalEntitysexEnumValueMap = {
  'male': 0,
  'female': 1,
};
const _AnimalEntitysexValueEnumMap = {
  0: Sex.male,
  1: Sex.female,
};
const _AnimalEntityspeciesEnumValueMap = {
  'cattle': 0,
  'equine': 1,
};
const _AnimalEntityspeciesValueEnumMap = {
  0: Species.cattle,
  1: Species.equine,
};

Id _animalEntityGetId(AnimalEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _animalEntityGetLinks(AnimalEntity object) {
  return [];
}

void _animalEntityAttach(
    IsarCollection<dynamic> col, Id id, AnimalEntity object) {
  object.id = id;
}

extension AnimalEntityByIndex on IsarCollection<AnimalEntity> {
  Future<AnimalEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  AnimalEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<AnimalEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<AnimalEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(AnimalEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(AnimalEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<AnimalEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<AnimalEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension AnimalEntityQueryWhereSort
    on QueryBuilder<AnimalEntity, AnimalEntity, QWhere> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AnimalEntityQueryWhere
    on QueryBuilder<AnimalEntity, AnimalEntity, QWhereClause> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause> uuidNotEqualTo(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause>
      earTagNumberEqualTo(String earTagNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'earTagNumber',
        value: [earTagNumber],
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause>
      earTagNumberNotEqualTo(String earTagNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'earTagNumber',
              lower: [],
              upper: [earTagNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'earTagNumber',
              lower: [earTagNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'earTagNumber',
              lower: [earTagNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'earTagNumber',
              lower: [],
              upper: [earTagNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension AnimalEntityQueryFilter
    on QueryBuilder<AnimalEntity, AnimalEntity, QFilterCondition> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ageMonthsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ageMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ageMonthsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ageMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ageMonthsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ageMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ageMonthsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ageMonths',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      birthDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      birthDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      birthDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      birthDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      breedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'breed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      breedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'breed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> breedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'breed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      breedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breed',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      breedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'breed',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoryEqualTo(Category value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoryGreaterThan(
    Category value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoryLessThan(
    Category value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoryBetween(
    Category lower,
    Category upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contentHash',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contentHash',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contentHash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contentHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contentHash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentHash',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      contentHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contentHash',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      creationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      creationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      creationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      creationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentWeight',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentWeight',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentWeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      currentWeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customName',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customName',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customName',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      customNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customName',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dewormed',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dewormerType',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dewormerType',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dewormerType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dewormerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dewormerType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dewormerType',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      dewormerTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dewormerType',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'earTagNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'earTagNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'earTagNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'earTagNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      earTagNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'earTagNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hasVitaminsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasVitamins',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      isCastratedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCastrated',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDewormingDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDewormingDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDewormingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastDewormingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastDewormingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastDewormingDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastDewormingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastUpdateDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastUpdateDateGreaterThan(
    DateTime value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastUpdateDateLessThan(
    DateTime value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastUpdateDateBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastVaccinationDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastVaccinationDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastVaccinationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastVaccinationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastVaccinationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVaccinationDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastVaccinationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastVitaminDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastVitaminDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastVitaminDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastVitaminDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastVitaminDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastVitaminDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastVitaminDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastWeighingDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastWeighingDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastWeighingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastWeighingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastWeighingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lastWeighingDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastWeighingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lifeStageEqualTo(LifeStage value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lifeStage',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lifeStageGreaterThan(
    LifeStage value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lifeStage',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lifeStageLessThan(
    LifeStage value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lifeStage',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      lifeStageBetween(
    LifeStage lower,
    LifeStage upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lifeStage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'purchasePrice',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'purchasePrice',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchasePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      purchasePriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchasePrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remoteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remoteId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remoteId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteId',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      remoteIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remoteId',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      reproductiveStatusEqualTo(ReproductiveStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reproductiveStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      reproductiveStatusGreaterThan(
    ReproductiveStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reproductiveStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      reproductiveStatusLessThan(
    ReproductiveStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reproductiveStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      reproductiveStatusBetween(
    ReproductiveStatus lower,
    ReproductiveStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reproductiveStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'salePrice',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'salePrice',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      salePriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salePrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexEqualTo(
      Sex value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      sexGreaterThan(
    Sex value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexLessThan(
    Sex value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexBetween(
    Sex lower,
    Sex upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      speciesEqualTo(Species value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'species',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      speciesGreaterThan(
    Species value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'species',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      speciesLessThan(
    Species value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'species',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      speciesBetween(
    Species lower,
    Species upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'species',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'syncDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'syncDate',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      syncDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> syncedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'synced',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      underObservationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'underObservation',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidEqualTo(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidLessThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidBetween(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidEndsWith(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidContains(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> uuidMatches(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccinatedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vaccinated',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vaccineType',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vaccineType',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vaccineType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vaccineType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vaccineType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vaccineType',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      vaccineTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vaccineType',
        value: '',
      ));
    });
  }
}

extension AnimalEntityQueryObject
    on QueryBuilder<AnimalEntity, AnimalEntity, QFilterCondition> {}

extension AnimalEntityQueryLinks
    on QueryBuilder<AnimalEntity, AnimalEntity, QFilterCondition> {}

extension AnimalEntityQuerySortBy
    on QueryBuilder<AnimalEntity, AnimalEntity, QSortBy> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageMonths', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByAgeMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageMonths', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByBreed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breed', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByBreedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breed', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByContentHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentHash', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByContentHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentHash', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCurrentWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCurrentWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCustomName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customName', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCustomNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customName', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByDewormed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormed', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByDewormedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormed', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByDewormerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormerType', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByDewormerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormerType', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEarTagNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'earTagNumber', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEarTagNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'earTagNumber', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByHasVitamins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasVitamins', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByHasVitaminsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasVitamins', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByIsCastrated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCastrated', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByIsCastratedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCastrated', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastDewormingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDewormingDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastDewormingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDewormingDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastVaccinationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVaccinationDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastVaccinationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVaccinationDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastVitaminDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVitaminDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastVitaminDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVitaminDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastWeighingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastWeighingDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByLastWeighingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastWeighingDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByLifeStage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifeStage', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByLifeStageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifeStage', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByPurchasePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByReproductiveStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reproductiveStatus', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByReproductiveStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reproductiveStatus', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySalePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySpeciesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySyncDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySyncDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByUnderObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'underObservation', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByUnderObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'underObservation', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByVaccinated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccinated', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByVaccinatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccinated', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByVaccineType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccineType', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByVaccineTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccineType', Sort.desc);
    });
  }
}

extension AnimalEntityQuerySortThenBy
    on QueryBuilder<AnimalEntity, AnimalEntity, QSortThenBy> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageMonths', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByAgeMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ageMonths', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByBreed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breed', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByBreedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breed', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByContentHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentHash', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByContentHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentHash', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCurrentWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCurrentWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCustomName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customName', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCustomNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customName', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByDewormed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormed', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByDewormedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormed', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByDewormerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormerType', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByDewormerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dewormerType', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEarTagNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'earTagNumber', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEarTagNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'earTagNumber', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByHasVitamins() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasVitamins', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByHasVitaminsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasVitamins', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByIsCastrated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCastrated', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByIsCastratedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCastrated', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastDewormingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDewormingDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastDewormingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDewormingDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastVaccinationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVaccinationDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastVaccinationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVaccinationDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastVitaminDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVitaminDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastVitaminDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVitaminDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastWeighingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastWeighingDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByLastWeighingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastWeighingDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByLifeStage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifeStage', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByLifeStageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lifeStage', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByPurchasePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasePrice', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByReproductiveStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reproductiveStatus', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByReproductiveStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reproductiveStatus', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySalePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salePrice', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySpeciesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySyncDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncDate', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySyncDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncDate', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByUnderObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'underObservation', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByUnderObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'underObservation', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByVaccinated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccinated', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByVaccinatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccinated', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByVaccineType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccineType', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByVaccineTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vaccineType', Sort.desc);
    });
  }
}

extension AnimalEntityQueryWhereDistinct
    on QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> {
  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ageMonths');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByBreed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breed', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByContentHash(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contentHash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creationDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByCurrentWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentWeight');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByCustomName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByDewormed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dewormed');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByDewormerType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dewormerType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEarTagNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'earTagNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByHasVitamins() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasVitamins');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByIsCastrated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCastrated');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByLastDewormingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDewormingDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByLastUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdateDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByLastVaccinationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastVaccinationDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByLastVitaminDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastVitaminDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByLastWeighingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastWeighingDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByLifeStage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lifeStage');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByObservations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByPurchasePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchasePrice');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByRemoteId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remoteId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByReproductiveStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reproductiveStatus');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySalePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salePrice');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sex');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'species');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySyncDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncDate');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'synced');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByUnderObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'underObservation');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByVaccinated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vaccinated');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByVaccineType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vaccineType', caseSensitive: caseSensitive);
    });
  }
}

extension AnimalEntityQueryProperty
    on QueryBuilder<AnimalEntity, AnimalEntity, QQueryProperty> {
  QueryBuilder<AnimalEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AnimalEntity, int, QQueryOperations> ageMonthsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ageMonths');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations> birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> breedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breed');
    });
  }

  QueryBuilder<AnimalEntity, Category, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> contentHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contentHash');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations>
      creationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creationDate');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations>
      currentWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentWeight');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> customNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customName');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> dewormedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dewormed');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> dewormerTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dewormerType');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> earTagNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'earTagNumber');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> hasVitaminsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasVitamins');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> isCastratedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCastrated');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      lastDewormingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDewormingDate');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations>
      lastUpdateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdateDate');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      lastVaccinationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastVaccinationDate');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      lastVitaminDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastVitaminDate');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      lastWeighingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastWeighingDate');
    });
  }

  QueryBuilder<AnimalEntity, LifeStage, QQueryOperations> lifeStageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lifeStage');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations>
      purchasePriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchasePrice');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remoteId');
    });
  }

  QueryBuilder<AnimalEntity, ReproductiveStatus, QQueryOperations>
      reproductiveStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reproductiveStatus');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations> salePriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salePrice');
    });
  }

  QueryBuilder<AnimalEntity, Sex, QQueryOperations> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sex');
    });
  }

  QueryBuilder<AnimalEntity, Species, QQueryOperations> speciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'species');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations> syncDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncDate');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> syncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'synced');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations>
      underObservationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'underObservation');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> vaccinatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vaccinated');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> vaccineTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vaccineType');
    });
  }
}
