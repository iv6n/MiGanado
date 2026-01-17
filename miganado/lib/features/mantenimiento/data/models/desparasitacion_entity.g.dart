// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desparasitacion_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDesparasitacionEntityCollection on Isar {
  IsarCollection<DesparasitacionEntity> get desparasitacionEntitys =>
      this.collection();
}

const DesparasitacionEntitySchema = CollectionSchema(
  name: r'DesparasitacionEntity',
  id: 5676594511864002091,
  properties: {
    r'animalUuid': PropertySchema(
      id: 0,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'aplicadoPor': PropertySchema(
      id: 1,
      name: r'aplicadoPor',
      type: IsarType.string,
    ),
    r'costo': PropertySchema(
      id: 2,
      name: r'costo',
      type: IsarType.double,
    ),
    r'diasIntervalo': PropertySchema(
      id: 3,
      name: r'diasIntervalo',
      type: IsarType.long,
    ),
    r'dosis': PropertySchema(
      id: 4,
      name: r'dosis',
      type: IsarType.string,
    ),
    r'efectosObservados': PropertySchema(
      id: 5,
      name: r'efectosObservados',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 6,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 7,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 8,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'lote': PropertySchema(
      id: 9,
      name: r'lote',
      type: IsarType.string,
    ),
    r'marca': PropertySchema(
      id: 10,
      name: r'marca',
      type: IsarType.string,
    ),
    r'observaciones': PropertySchema(
      id: 11,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'producto': PropertySchema(
      id: 12,
      name: r'producto',
      type: IsarType.string,
    ),
    r'proximaAplicacion': PropertySchema(
      id: 13,
      name: r'proximaAplicacion',
      type: IsarType.dateTime,
    ),
    r'registradoPor': PropertySchema(
      id: 14,
      name: r'registradoPor',
      type: IsarType.string,
    ),
    r'tipo': PropertySchema(
      id: 15,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 16,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'viaAplicacion': PropertySchema(
      id: 17,
      name: r'viaAplicacion',
      type: IsarType.string,
    )
  },
  estimateSize: _desparasitacionEntityEstimateSize,
  serialize: _desparasitacionEntitySerialize,
  deserialize: _desparasitacionEntityDeserialize,
  deserializeProp: _desparasitacionEntityDeserializeProp,
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
  getId: _desparasitacionEntityGetId,
  getLinks: _desparasitacionEntityGetLinks,
  attach: _desparasitacionEntityAttach,
  version: '3.1.0+1',
);

int _desparasitacionEntityEstimateSize(
  DesparasitacionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.aplicadoPor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dosis.length * 3;
  {
    final value = object.efectosObservados;
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
    final value = object.marca;
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
  bytesCount += 3 + object.producto.length * 3;
  bytesCount += 3 + object.registradoPor.length * 3;
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  bytesCount += 3 + object.viaAplicacion.length * 3;
  return bytesCount;
}

void _desparasitacionEntitySerialize(
  DesparasitacionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animalUuid);
  writer.writeString(offsets[1], object.aplicadoPor);
  writer.writeDouble(offsets[2], object.costo);
  writer.writeLong(offsets[3], object.diasIntervalo);
  writer.writeString(offsets[4], object.dosis);
  writer.writeString(offsets[5], object.efectosObservados);
  writer.writeDateTime(offsets[6], object.fecha);
  writer.writeDateTime(offsets[7], object.fechaActualizacion);
  writer.writeDateTime(offsets[8], object.fechaRegistro);
  writer.writeString(offsets[9], object.lote);
  writer.writeString(offsets[10], object.marca);
  writer.writeString(offsets[11], object.observaciones);
  writer.writeString(offsets[12], object.producto);
  writer.writeDateTime(offsets[13], object.proximaAplicacion);
  writer.writeString(offsets[14], object.registradoPor);
  writer.writeString(offsets[15], object.tipo);
  writer.writeString(offsets[16], object.uuid);
  writer.writeString(offsets[17], object.viaAplicacion);
}

DesparasitacionEntity _desparasitacionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DesparasitacionEntity(
    animalUuid: reader.readString(offsets[0]),
    aplicadoPor: reader.readStringOrNull(offsets[1]),
    costo: reader.readDoubleOrNull(offsets[2]),
    diasIntervalo: reader.readLong(offsets[3]),
    dosis: reader.readString(offsets[4]),
    efectosObservados: reader.readStringOrNull(offsets[5]),
    fecha: reader.readDateTime(offsets[6]),
    lote: reader.readStringOrNull(offsets[9]),
    marca: reader.readStringOrNull(offsets[10]),
    observaciones: reader.readStringOrNull(offsets[11]),
    producto: reader.readString(offsets[12]),
    proximaAplicacion: reader.readDateTimeOrNull(offsets[13]),
    registradoPor: reader.readString(offsets[14]),
    tipo: reader.readString(offsets[15]),
    viaAplicacion: reader.readString(offsets[17]),
  );
  object.fechaActualizacion = reader.readDateTimeOrNull(offsets[7]);
  object.fechaRegistro = reader.readDateTime(offsets[8]);
  object.id = id;
  object.uuid = reader.readString(offsets[16]);
  return object;
}

P _desparasitacionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _desparasitacionEntityGetId(DesparasitacionEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _desparasitacionEntityGetLinks(
    DesparasitacionEntity object) {
  return [];
}

void _desparasitacionEntityAttach(
    IsarCollection<dynamic> col, Id id, DesparasitacionEntity object) {
  object.id = id;
}

extension DesparasitacionEntityByIndex
    on IsarCollection<DesparasitacionEntity> {
  Future<DesparasitacionEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  DesparasitacionEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<DesparasitacionEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<DesparasitacionEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(DesparasitacionEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(DesparasitacionEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<DesparasitacionEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<DesparasitacionEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension DesparasitacionEntityQueryWhereSort
    on QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QWhere> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DesparasitacionEntityQueryWhere on QueryBuilder<DesparasitacionEntity,
    DesparasitacionEntity, QWhereClause> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
      uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
      animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterWhereClause>
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

extension DesparasitacionEntityQueryFilter on QueryBuilder<
    DesparasitacionEntity, DesparasitacionEntity, QFilterCondition> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aplicadoPor',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aplicadoPor',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      aplicadoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aplicadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      aplicadoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aplicadoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aplicadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> aplicadoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aplicadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costo',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> diasIntervaloEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasIntervalo',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> diasIntervaloGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> diasIntervaloLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> diasIntervaloBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      dosisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      dosisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dosis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dosisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'efectosObservados',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'efectosObservados',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'efectosObservados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      efectosObservadosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'efectosObservados',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      efectosObservadosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'efectosObservados',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efectosObservados',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> efectosObservadosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'efectosObservados',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaRegistroGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaRegistroLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> fechaRegistroBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      loteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      loteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lote',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> loteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marca',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      marcaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      marcaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'marca',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> marcaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      productoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      productoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'producto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'proximaAplicacion',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'proximaAplicacion',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proximaAplicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proximaAplicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proximaAplicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> proximaAplicacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proximaAplicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      registradoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      registradoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registradoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registradoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      tipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      tipoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      viaAplicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      viaAplicacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'viaAplicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> viaAplicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }
}

extension DesparasitacionEntityQueryObject on QueryBuilder<
    DesparasitacionEntity, DesparasitacionEntity, QFilterCondition> {}

extension DesparasitacionEntityQueryLinks on QueryBuilder<DesparasitacionEntity,
    DesparasitacionEntity, QFilterCondition> {}

extension DesparasitacionEntityQuerySortBy
    on QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QSortBy> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAplicadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAplicadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDiasIntervaloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByEfectosObservados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosObservados', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByEfectosObservadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosObservados', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProducto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProductoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProximaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProximaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaAplicacion', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension DesparasitacionEntityQuerySortThenBy
    on QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QSortThenBy> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAplicadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAplicadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aplicadoPor', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByCostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDiasIntervaloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasIntervalo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByEfectosObservados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosObservados', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByEfectosObservadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosObservados', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProducto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProductoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'producto', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProximaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProximaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proximaAplicacion', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension DesparasitacionEntityQueryWhereDistinct
    on QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct> {
  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByAplicadoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aplicadoPor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costo');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diasIntervalo');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByDosis({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dosis', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByEfectosObservados({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'efectosObservados',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByLote({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lote', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByMarca({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marca', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByObservaciones({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByProducto({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'producto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByProximaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proximaAplicacion');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByRegistradoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registradoPor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByTipo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByViaAplicacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viaAplicacion',
          caseSensitive: caseSensitive);
    });
  }
}

extension DesparasitacionEntityQueryProperty on QueryBuilder<
    DesparasitacionEntity, DesparasitacionEntity, QQueryProperty> {
  QueryBuilder<DesparasitacionEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      aplicadoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aplicadoPor');
    });
  }

  QueryBuilder<DesparasitacionEntity, double?, QQueryOperations>
      costoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costo');
    });
  }

  QueryBuilder<DesparasitacionEntity, int, QQueryOperations>
      diasIntervaloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diasIntervalo');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      dosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosis');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      efectosObservadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'efectosObservados');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime, QQueryOperations>
      fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      loteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lote');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      marcaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marca');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      productoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'producto');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime?, QQueryOperations>
      proximaAplicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proximaAplicacion');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      registradoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registradoPor');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      viaAplicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viaAplicacion');
    });
  }
}
