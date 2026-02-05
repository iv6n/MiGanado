// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lote_ganadero_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLivestockLotEntityCollection on Isar {
  IsarCollection<LivestockLotEntity> get livestockLotEntitys =>
      this.collection();
}

const LivestockLotEntitySchema = CollectionSchema(
  name: r'LivestockLotEntity',
  id: 1579785046679767272,
  properties: {
    r'activo': PropertySchema(
      id: 0,
      name: r'activo',
      type: IsarType.bool,
    ),
    r'animalCount': PropertySchema(
      id: 1,
      name: r'animalCount',
      type: IsarType.long,
    ),
    r'animalIds': PropertySchema(
      id: 2,
      name: r'animalIds',
      type: IsarType.stringList,
    ),
    r'averageAgeMonths': PropertySchema(
      id: 3,
      name: r'averageAgeMonths',
      type: IsarType.long,
    ),
    r'datosEspecificosJson': PropertySchema(
      id: 4,
      name: r'datosEspecificosJson',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 5,
      name: r'description',
      type: IsarType.string,
    ),
    r'estaActivo': PropertySchema(
      id: 6,
      name: r'estaActivo',
      type: IsarType.bool,
    ),
    r'etiquetas': PropertySchema(
      id: 7,
      name: r'etiquetas',
      type: IsarType.stringList,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 8,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaCierre': PropertySchema(
      id: 9,
      name: r'fechaCierre',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 10,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 11,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'historicoCambios': PropertySchema(
      id: 12,
      name: r'historicoCambios',
      type: IsarType.objectList,
      target: r'IsarCambioLote',
    ),
    r'name': PropertySchema(
      id: 13,
      name: r'name',
      type: IsarType.string,
    ),
    r'nombreEspecie': PropertySchema(
      id: 14,
      name: r'nombreEspecie',
      type: IsarType.string,
    ),
    r'nombreProduccion': PropertySchema(
      id: 15,
      name: r'nombreProduccion',
      type: IsarType.string,
    ),
    r'notas': PropertySchema(
      id: 16,
      name: r'notas',
      type: IsarType.string,
    ),
    r'objetivo': PropertySchema(
      id: 17,
      name: r'objetivo',
      type: IsarType.string,
    ),
    r'pesoMaximo': PropertySchema(
      id: 18,
      name: r'pesoMaximo',
      type: IsarType.double,
    ),
    r'pesoMinimo': PropertySchema(
      id: 19,
      name: r'pesoMinimo',
      type: IsarType.double,
    ),
    r'pesoPromedio': PropertySchema(
      id: 20,
      name: r'pesoPromedio',
      type: IsarType.double,
    ),
    r'predominantBreed': PropertySchema(
      id: 21,
      name: r'predominantBreed',
      type: IsarType.string,
    ),
    r'produccionDiaria': PropertySchema(
      id: 22,
      name: r'produccionDiaria',
      type: IsarType.double,
    ),
    r'productionType': PropertySchema(
      id: 23,
      name: r'productionType',
      type: IsarType.byte,
      enumMap: _LivestockLotEntityproductionTypeEnumValueMap,
    ),
    r'responsable': PropertySchema(
      id: 24,
      name: r'responsable',
      type: IsarType.string,
    ),
    r'species': PropertySchema(
      id: 25,
      name: r'species',
      type: IsarType.byte,
      enumMap: _LivestockLotEntityspeciesEnumValueMap,
    ),
    r'ubicacionId': PropertySchema(
      id: 26,
      name: r'ubicacionId',
      type: IsarType.string,
    ),
    r'unidadProduccion': PropertySchema(
      id: 27,
      name: r'unidadProduccion',
      type: IsarType.string,
    ),
    r'usuarioActualizacion': PropertySchema(
      id: 28,
      name: r'usuarioActualizacion',
      type: IsarType.string,
    ),
    r'usuarioCreacion': PropertySchema(
      id: 29,
      name: r'usuarioCreacion',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 30,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _livestockLotEntityEstimateSize,
  serialize: _livestockLotEntitySerialize,
  deserialize: _livestockLotEntityDeserialize,
  deserializeProp: _livestockLotEntityDeserializeProp,
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
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'IsarCambioLote': IsarCambioLoteSchema},
  getId: _livestockLotEntityGetId,
  getLinks: _livestockLotEntityGetLinks,
  attach: _livestockLotEntityAttach,
  version: '3.1.0+1',
);

int _livestockLotEntityEstimateSize(
  LivestockLotEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalIds.length * 3;
  {
    for (var i = 0; i < object.animalIds.length; i++) {
      final value = object.animalIds[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.datosEspecificosJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.etiquetas.length * 3;
  {
    for (var i = 0; i < object.etiquetas.length; i++) {
      final value = object.etiquetas[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.historicoCambios.length * 3;
  {
    final offsets = allOffsets[IsarCambioLote]!;
    for (var i = 0; i < object.historicoCambios.length; i++) {
      final value = object.historicoCambios[i];
      bytesCount +=
          IsarCambioLoteSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.nombreEspecie.length * 3;
  bytesCount += 3 + object.nombreProduccion.length * 3;
  {
    final value = object.notas;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objetivo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.predominantBreed;
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
    final value = object.ubicacionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.unidadProduccion;
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

void _livestockLotEntitySerialize(
  LivestockLotEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.activo);
  writer.writeLong(offsets[1], object.animalCount);
  writer.writeStringList(offsets[2], object.animalIds);
  writer.writeLong(offsets[3], object.averageAgeMonths);
  writer.writeString(offsets[4], object.datosEspecificosJson);
  writer.writeString(offsets[5], object.description);
  writer.writeBool(offsets[6], object.estaActivo);
  writer.writeStringList(offsets[7], object.etiquetas);
  writer.writeDateTime(offsets[8], object.fechaActualizacion);
  writer.writeDateTime(offsets[9], object.fechaCierre);
  writer.writeDateTime(offsets[10], object.fechaCreacion);
  writer.writeDateTime(offsets[11], object.fechaRegistro);
  writer.writeObjectList<IsarCambioLote>(
    offsets[12],
    allOffsets,
    IsarCambioLoteSchema.serialize,
    object.historicoCambios,
  );
  writer.writeString(offsets[13], object.name);
  writer.writeString(offsets[14], object.nombreEspecie);
  writer.writeString(offsets[15], object.nombreProduccion);
  writer.writeString(offsets[16], object.notas);
  writer.writeString(offsets[17], object.objetivo);
  writer.writeDouble(offsets[18], object.pesoMaximo);
  writer.writeDouble(offsets[19], object.pesoMinimo);
  writer.writeDouble(offsets[20], object.pesoPromedio);
  writer.writeString(offsets[21], object.predominantBreed);
  writer.writeDouble(offsets[22], object.produccionDiaria);
  writer.writeByte(offsets[23], object.productionType.index);
  writer.writeString(offsets[24], object.responsable);
  writer.writeByte(offsets[25], object.species.index);
  writer.writeString(offsets[26], object.ubicacionId);
  writer.writeString(offsets[27], object.unidadProduccion);
  writer.writeString(offsets[28], object.usuarioActualizacion);
  writer.writeString(offsets[29], object.usuarioCreacion);
  writer.writeString(offsets[30], object.uuid);
}

LivestockLotEntity _livestockLotEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LivestockLotEntity();
  object.activo = reader.readBool(offsets[0]);
  object.animalCount = reader.readLong(offsets[1]);
  object.averageAgeMonths = reader.readLongOrNull(offsets[3]);
  object.datosEspecificosJson = reader.readStringOrNull(offsets[4]);
  object.description = reader.readStringOrNull(offsets[5]);
  object.fechaActualizacion = reader.readDateTimeOrNull(offsets[8]);
  object.fechaCierre = reader.readDateTimeOrNull(offsets[9]);
  object.fechaCreacion = reader.readDateTimeOrNull(offsets[10]);
  object.fechaRegistro = reader.readDateTimeOrNull(offsets[11]);
  object.id = id;
  object.name = reader.readString(offsets[13]);
  object.notas = reader.readStringOrNull(offsets[16]);
  object.objetivo = reader.readStringOrNull(offsets[17]);
  object.pesoMaximo = reader.readDoubleOrNull(offsets[18]);
  object.pesoMinimo = reader.readDoubleOrNull(offsets[19]);
  object.pesoPromedio = reader.readDoubleOrNull(offsets[20]);
  object.predominantBreed = reader.readStringOrNull(offsets[21]);
  object.produccionDiaria = reader.readDoubleOrNull(offsets[22]);
  object.productionType = _LivestockLotEntityproductionTypeValueEnumMap[
          reader.readByteOrNull(offsets[23])] ??
      ProductionType.meat;
  object.responsable = reader.readStringOrNull(offsets[24]);
  object.species = _LivestockLotEntityspeciesValueEnumMap[
          reader.readByteOrNull(offsets[25])] ??
      LotSpecies.cattle;
  object.ubicacionId = reader.readStringOrNull(offsets[26]);
  object.unidadProduccion = reader.readStringOrNull(offsets[27]);
  object.usuarioActualizacion = reader.readStringOrNull(offsets[28]);
  object.usuarioCreacion = reader.readStringOrNull(offsets[29]);
  object.uuid = reader.readStringOrNull(offsets[30]);
  return object;
}

P _livestockLotEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readObjectList<IsarCambioLote>(
            offset,
            IsarCambioLoteSchema.deserialize,
            allOffsets,
            IsarCambioLote(),
          ) ??
          []) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (_LivestockLotEntityproductionTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ProductionType.meat) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (_LivestockLotEntityspeciesValueEnumMap[
              reader.readByteOrNull(offset)] ??
          LotSpecies.cattle) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _LivestockLotEntityproductionTypeEnumValueMap = {
  'meat': 0,
  'milk': 1,
  'dual': 2,
  'breeding': 3,
  'fattening': 4,
  'raising': 5,
};
const _LivestockLotEntityproductionTypeValueEnumMap = {
  0: ProductionType.meat,
  1: ProductionType.milk,
  2: ProductionType.dual,
  3: ProductionType.breeding,
  4: ProductionType.fattening,
  5: ProductionType.raising,
};
const _LivestockLotEntityspeciesEnumValueMap = {
  'cattle': 0,
  'equine': 1,
  'ovine': 2,
  'caprine': 3,
};
const _LivestockLotEntityspeciesValueEnumMap = {
  0: LotSpecies.cattle,
  1: LotSpecies.equine,
  2: LotSpecies.ovine,
  3: LotSpecies.caprine,
};

Id _livestockLotEntityGetId(LivestockLotEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _livestockLotEntityGetLinks(
    LivestockLotEntity object) {
  return [];
}

void _livestockLotEntityAttach(
    IsarCollection<dynamic> col, Id id, LivestockLotEntity object) {
  object.id = id;
}

extension LivestockLotEntityByIndex on IsarCollection<LivestockLotEntity> {
  Future<LivestockLotEntity?> getByUuid(String? uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  LivestockLotEntity? getByUuidSync(String? uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String? uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String? uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<LivestockLotEntity?>> getAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<LivestockLotEntity?> getAllByUuidSync(List<String?> uuidValues) {
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

  Future<Id> putByUuid(LivestockLotEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(LivestockLotEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<LivestockLotEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<LivestockLotEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension LivestockLotEntityQueryWhereSort
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QWhere> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LivestockLotEntityQueryWhere
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QWhereClause> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [null],
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      uuidEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LivestockLotEntityQueryFilter
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QFilterCondition> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      activoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activo',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'animalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'animalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'animalCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'animalIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalIds',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalIds',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      animalIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'animalIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'averageAgeMonths',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'averageAgeMonths',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'averageAgeMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'averageAgeMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'averageAgeMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      averageAgeMonthsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'averageAgeMonths',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'datosEspecificosJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      estaActivoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estaActivo',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'etiquetas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasLengthEqualTo(int length) {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasIsEmpty() {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasIsNotEmpty() {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasLengthLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasLengthGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      etiquetasLengthBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCierre',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCierre',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCierre',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCierre',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCierre',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCierreBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCierre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaCreacionBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaRegistro',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaRegistro',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroGreaterThan(
    DateTime? value, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroLessThan(
    DateTime? value, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      fechaRegistroBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historicoCambios',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreEspecie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreEspecie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEspecie',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreEspecieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEspecie',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreProduccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreProduccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      nombreProduccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      notasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objetivo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objetivo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objetivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objetivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetivo',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      objetivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objetivo',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoMaximo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoMaximo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesoMaximo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesoMaximo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesoMaximo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMaximoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesoMaximo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoMinimo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoMinimo',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesoMinimo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesoMinimo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesoMinimo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoMinimoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesoMinimo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoPromedio',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoPromedio',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesoPromedio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesoPromedio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesoPromedio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      pesoPromedioBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesoPromedio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'predominantBreed',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'predominantBreed',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'predominantBreed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'predominantBreed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'predominantBreed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'predominantBreed',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      predominantBreedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'predominantBreed',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'produccionDiaria',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'produccionDiaria',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'produccionDiaria',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'produccionDiaria',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'produccionDiaria',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      produccionDiariaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'produccionDiaria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      productionTypeEqualTo(ProductionType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productionType',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      productionTypeGreaterThan(
    ProductionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productionType',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      productionTypeLessThan(
    ProductionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productionType',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      productionTypeBetween(
    ProductionType lower,
    ProductionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'responsable',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      responsableIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      speciesEqualTo(LotSpecies value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'species',
        value: value,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      speciesGreaterThan(
    LotSpecies value, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      speciesLessThan(
    LotSpecies value, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      speciesBetween(
    LotSpecies lower,
    LotSpecies upper, {
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ubicacionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      ubicacionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unidadProduccion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unidadProduccion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unidadProduccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unidadProduccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unidadProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      unidadProduccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unidadProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioActualizacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioActualizacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionStartsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionEndsWith(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioCreacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      usuarioCreacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidEqualTo(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidGreaterThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidLessThan(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidBetween(
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
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

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension LivestockLotEntityQueryObject
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QFilterCondition> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterFilterCondition>
      historicoCambiosElement(FilterQuery<IsarCambioLote> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'historicoCambios');
    });
  }
}

extension LivestockLotEntityQueryLinks
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QFilterCondition> {}

extension LivestockLotEntityQuerySortBy
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QSortBy> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByAnimalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalCount', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByAnimalCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalCount', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByAverageAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAgeMonths', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByAverageAgeMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAgeMonths', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByEstaActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaCierreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNombreEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNombreEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNombreProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNombreProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByObjetivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByObjetivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoMaximoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoMinimoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPesoPromedioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPredominantBreed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'predominantBreed', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByPredominantBreedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'predominantBreed', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByProduccionDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByProductionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionType', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByProductionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionType', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortBySpeciesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUnidadProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUnidadProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension LivestockLotEntityQuerySortThenBy
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QSortThenBy> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByAnimalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalCount', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByAnimalCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalCount', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByAverageAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAgeMonths', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByAverageAgeMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAgeMonths', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByEstaActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaCierreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNombreEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNombreEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNombreProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNombreProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByObjetivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByObjetivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoMaximoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoMinimoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPesoPromedioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPredominantBreed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'predominantBreed', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByPredominantBreedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'predominantBreed', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByProduccionDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByProductionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionType', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByProductionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionType', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenBySpeciesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'species', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUnidadProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUnidadProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension LivestockLotEntityQueryWhereDistinct
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct> {
  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activo');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByAnimalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalCount');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByAnimalIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalIds');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByAverageAgeMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'averageAgeMonths');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByDatosEspecificosJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datosEspecificosJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estaActivo');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByEtiquetas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etiquetas');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCierre');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByNombreEspecie({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEspecie',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByNombreProduccion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreProduccion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByNotas({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notas', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByObjetivo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objetivo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoMaximo');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoMinimo');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoPromedio');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByPredominantBreed({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'predominantBreed',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'produccionDiaria');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByProductionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productionType');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByResponsable({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsable', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'species');
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByUbicacionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ubicacionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByUnidadProduccion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unidadProduccion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByUsuarioActualizacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioActualizacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByUsuarioCreacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioCreacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LivestockLotEntity, LivestockLotEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension LivestockLotEntityQueryProperty
    on QueryBuilder<LivestockLotEntity, LivestockLotEntity, QQueryProperty> {
  QueryBuilder<LivestockLotEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LivestockLotEntity, bool, QQueryOperations> activoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activo');
    });
  }

  QueryBuilder<LivestockLotEntity, int, QQueryOperations>
      animalCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalCount');
    });
  }

  QueryBuilder<LivestockLotEntity, List<String>, QQueryOperations>
      animalIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalIds');
    });
  }

  QueryBuilder<LivestockLotEntity, int?, QQueryOperations>
      averageAgeMonthsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'averageAgeMonths');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      datosEspecificosJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datosEspecificosJson');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<LivestockLotEntity, bool, QQueryOperations>
      estaActivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estaActivo');
    });
  }

  QueryBuilder<LivestockLotEntity, List<String>, QQueryOperations>
      etiquetasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etiquetas');
    });
  }

  QueryBuilder<LivestockLotEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<LivestockLotEntity, DateTime?, QQueryOperations>
      fechaCierreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCierre');
    });
  }

  QueryBuilder<LivestockLotEntity, DateTime?, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<LivestockLotEntity, DateTime?, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<LivestockLotEntity, List<IsarCambioLote>, QQueryOperations>
      historicoCambiosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'historicoCambios');
    });
  }

  QueryBuilder<LivestockLotEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LivestockLotEntity, String, QQueryOperations>
      nombreEspecieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEspecie');
    });
  }

  QueryBuilder<LivestockLotEntity, String, QQueryOperations>
      nombreProduccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreProduccion');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations> notasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notas');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      objetivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objetivo');
    });
  }

  QueryBuilder<LivestockLotEntity, double?, QQueryOperations>
      pesoMaximoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoMaximo');
    });
  }

  QueryBuilder<LivestockLotEntity, double?, QQueryOperations>
      pesoMinimoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoMinimo');
    });
  }

  QueryBuilder<LivestockLotEntity, double?, QQueryOperations>
      pesoPromedioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoPromedio');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      predominantBreedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'predominantBreed');
    });
  }

  QueryBuilder<LivestockLotEntity, double?, QQueryOperations>
      produccionDiariaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'produccionDiaria');
    });
  }

  QueryBuilder<LivestockLotEntity, ProductionType, QQueryOperations>
      productionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productionType');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      responsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsable');
    });
  }

  QueryBuilder<LivestockLotEntity, LotSpecies, QQueryOperations>
      speciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'species');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      ubicacionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ubicacionId');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      unidadProduccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unidadProduccion');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      usuarioActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioActualizacion');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations>
      usuarioCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioCreacion');
    });
  }

  QueryBuilder<LivestockLotEntity, String?, QQueryOperations> uuidProperty() {
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

const IsarCambioLoteSchema = Schema(
  name: r'IsarCambioLote',
  id: -2718728358883701674,
  properties: {
    r'concepto': PropertySchema(
      id: 0,
      name: r'concepto',
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
    r'motivo': PropertySchema(
      id: 3,
      name: r'motivo',
      type: IsarType.string,
    )
  },
  estimateSize: _isarCambioLoteEstimateSize,
  serialize: _isarCambioLoteSerialize,
  deserialize: _isarCambioLoteDeserialize,
  deserializeProp: _isarCambioLoteDeserializeProp,
);

int _isarCambioLoteEstimateSize(
  IsarCambioLote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.concepto.length * 3;
  bytesCount += 3 + object.descripcion.length * 3;
  {
    final value = object.motivo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarCambioLoteSerialize(
  IsarCambioLote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.concepto);
  writer.writeString(offsets[1], object.descripcion);
  writer.writeDateTime(offsets[2], object.fecha);
  writer.writeString(offsets[3], object.motivo);
}

IsarCambioLote _isarCambioLoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarCambioLote(
    concepto: reader.readStringOrNull(offsets[0]) ?? '',
    descripcion: reader.readStringOrNull(offsets[1]) ?? '',
    fecha: reader.readDateTimeOrNull(offsets[2]),
    motivo: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _isarCambioLoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarCambioLoteQueryFilter
    on QueryBuilder<IsarCambioLote, IsarCambioLote, QFilterCondition> {
  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'concepto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'concepto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concepto',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      conceptoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'concepto',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionEqualTo(
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionGreaterThan(
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionLessThan(
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionBetween(
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      fechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      fechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      fechaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
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

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'motivo',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'motivo',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motivo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCambioLote, IsarCambioLote, QAfterFilterCondition>
      motivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motivo',
        value: '',
      ));
    });
  }
}

extension IsarCambioLoteQueryObject
    on QueryBuilder<IsarCambioLote, IsarCambioLote, QFilterCondition> {}
