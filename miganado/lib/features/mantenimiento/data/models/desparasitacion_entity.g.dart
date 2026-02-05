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
    r'administrationRoute': PropertySchema(
      id: 0,
      name: r'administrationRoute',
      type: IsarType.string,
    ),
    r'animalUuid': PropertySchema(
      id: 1,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'aplicadoPor': PropertySchema(
      id: 2,
      name: r'aplicadoPor',
      type: IsarType.string,
    ),
    r'appliedBy': PropertySchema(
      id: 3,
      name: r'appliedBy',
      type: IsarType.string,
    ),
    r'brand': PropertySchema(
      id: 4,
      name: r'brand',
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
    r'dose': PropertySchema(
      id: 9,
      name: r'dose',
      type: IsarType.string,
    ),
    r'dosis': PropertySchema(
      id: 10,
      name: r'dosis',
      type: IsarType.string,
    ),
    r'efectosObservados': PropertySchema(
      id: 11,
      name: r'efectosObservados',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 12,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 13,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 14,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'intervalDays': PropertySchema(
      id: 15,
      name: r'intervalDays',
      type: IsarType.long,
    ),
    r'lot': PropertySchema(
      id: 16,
      name: r'lot',
      type: IsarType.string,
    ),
    r'lote': PropertySchema(
      id: 17,
      name: r'lote',
      type: IsarType.string,
    ),
    r'marca': PropertySchema(
      id: 18,
      name: r'marca',
      type: IsarType.string,
    ),
    r'nextApplication': PropertySchema(
      id: 19,
      name: r'nextApplication',
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
    r'observedEffects': PropertySchema(
      id: 22,
      name: r'observedEffects',
      type: IsarType.string,
    ),
    r'product': PropertySchema(
      id: 23,
      name: r'product',
      type: IsarType.string,
    ),
    r'producto': PropertySchema(
      id: 24,
      name: r'producto',
      type: IsarType.string,
    ),
    r'proximaAplicacion': PropertySchema(
      id: 25,
      name: r'proximaAplicacion',
      type: IsarType.dateTime,
    ),
    r'reaccionesAdversas': PropertySchema(
      id: 26,
      name: r'reaccionesAdversas',
      type: IsarType.string,
    ),
    r'registeredBy': PropertySchema(
      id: 27,
      name: r'registeredBy',
      type: IsarType.string,
    ),
    r'registradoPor': PropertySchema(
      id: 28,
      name: r'registradoPor',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 29,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'tipo': PropertySchema(
      id: 30,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 31,
      name: r'type',
      type: IsarType.string,
    ),
    r'updateDate': PropertySchema(
      id: 32,
      name: r'updateDate',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 33,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'viaAplicacion': PropertySchema(
      id: 34,
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
  bytesCount += 3 + object.administrationRoute.length * 3;
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
  {
    final value = object.brand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dose.length * 3;
  bytesCount += 3 + object.dosis.length * 3;
  {
    final value = object.efectosObservados;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
  {
    final value = object.observations;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observedEffects;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.product.length * 3;
  bytesCount += 3 + object.producto.length * 3;
  {
    final value = object.reaccionesAdversas;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.registeredBy.length * 3;
  bytesCount += 3 + object.registradoPor.length * 3;
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.type.length * 3;
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
  writer.writeString(offsets[0], object.administrationRoute);
  writer.writeString(offsets[1], object.animalUuid);
  writer.writeString(offsets[2], object.aplicadoPor);
  writer.writeString(offsets[3], object.appliedBy);
  writer.writeString(offsets[4], object.brand);
  writer.writeDouble(offsets[5], object.cost);
  writer.writeDouble(offsets[6], object.costo);
  writer.writeDateTime(offsets[7], object.date);
  writer.writeLong(offsets[8], object.diasIntervalo);
  writer.writeString(offsets[9], object.dose);
  writer.writeString(offsets[10], object.dosis);
  writer.writeString(offsets[11], object.efectosObservados);
  writer.writeDateTime(offsets[12], object.fecha);
  writer.writeDateTime(offsets[13], object.fechaActualizacion);
  writer.writeDateTime(offsets[14], object.fechaRegistro);
  writer.writeLong(offsets[15], object.intervalDays);
  writer.writeString(offsets[16], object.lot);
  writer.writeString(offsets[17], object.lote);
  writer.writeString(offsets[18], object.marca);
  writer.writeDateTime(offsets[19], object.nextApplication);
  writer.writeString(offsets[20], object.observaciones);
  writer.writeString(offsets[21], object.observations);
  writer.writeString(offsets[22], object.observedEffects);
  writer.writeString(offsets[23], object.product);
  writer.writeString(offsets[24], object.producto);
  writer.writeDateTime(offsets[25], object.proximaAplicacion);
  writer.writeString(offsets[26], object.reaccionesAdversas);
  writer.writeString(offsets[27], object.registeredBy);
  writer.writeString(offsets[28], object.registradoPor);
  writer.writeDateTime(offsets[29], object.registrationDate);
  writer.writeString(offsets[30], object.tipo);
  writer.writeString(offsets[31], object.type);
  writer.writeDateTime(offsets[32], object.updateDate);
  writer.writeString(offsets[33], object.uuid);
  writer.writeString(offsets[34], object.viaAplicacion);
}

DesparasitacionEntity _desparasitacionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DesparasitacionEntity(
    animalUuid: reader.readString(offsets[1]),
    aplicadoPor: reader.readStringOrNull(offsets[2]),
    costo: reader.readDoubleOrNull(offsets[6]),
    diasIntervalo: reader.readLong(offsets[8]),
    dosis: reader.readString(offsets[10]),
    efectosObservados: reader.readStringOrNull(offsets[11]),
    fecha: reader.readDateTime(offsets[12]),
    lote: reader.readStringOrNull(offsets[17]),
    marca: reader.readStringOrNull(offsets[18]),
    observaciones: reader.readStringOrNull(offsets[20]),
    producto: reader.readString(offsets[24]),
    proximaAplicacion: reader.readDateTimeOrNull(offsets[25]),
    registradoPor: reader.readString(offsets[28]),
    tipo: reader.readString(offsets[30]),
    viaAplicacion: reader.readString(offsets[34]),
  );
  object.administrationRoute = reader.readString(offsets[0]);
  object.appliedBy = reader.readStringOrNull(offsets[3]);
  object.brand = reader.readStringOrNull(offsets[4]);
  object.cost = reader.readDoubleOrNull(offsets[5]);
  object.date = reader.readDateTime(offsets[7]);
  object.dose = reader.readString(offsets[9]);
  object.id = id;
  object.intervalDays = reader.readLong(offsets[15]);
  object.lot = reader.readStringOrNull(offsets[16]);
  object.nextApplication = reader.readDateTimeOrNull(offsets[19]);
  object.observations = reader.readStringOrNull(offsets[21]);
  object.observedEffects = reader.readStringOrNull(offsets[22]);
  object.product = reader.readString(offsets[23]);
  object.registeredBy = reader.readString(offsets[27]);
  object.registrationDate = reader.readDateTime(offsets[29]);
  object.type = reader.readString(offsets[31]);
  object.updateDate = reader.readDateTimeOrNull(offsets[32]);
  object.uuid = reader.readString(offsets[33]);
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
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readDateTime(offset)) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readString(offset)) as P;
    case 32:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 33:
      return (reader.readString(offset)) as P;
    case 34:
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
      QAfterFilterCondition> administrationRouteEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      administrationRouteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      administrationRouteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'administrationRoute',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> administrationRouteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

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
      QAfterFilterCondition> appliedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appliedBy',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appliedBy',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      appliedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appliedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      appliedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appliedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appliedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> appliedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appliedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cost',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> costBetween(
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
      QAfterFilterCondition> dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> dateBetween(
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
      QAfterFilterCondition> doseEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      doseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      doseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dose',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dose',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> doseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dose',
        value: '',
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
      QAfterFilterCondition> intervalDaysEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> intervalDaysGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> intervalDaysLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> intervalDaysBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      lotContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      lotMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lot',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> lotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lot',
        value: '',
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
      QAfterFilterCondition> nextApplicationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextApplication',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> nextApplicationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextApplication',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> nextApplicationEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextApplication',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> nextApplicationGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextApplication',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> nextApplicationLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextApplication',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> nextApplicationBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextApplication',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
      QAfterFilterCondition> observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observedEffects',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observedEffects',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observedEffects',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      observedEffectsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observedEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      observedEffectsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observedEffects',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observedEffects',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> observedEffectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observedEffects',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productEqualTo(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productGreaterThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productLessThan(
    String value, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      productContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      productMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'product',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> productIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'product',
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
      QAfterFilterCondition> reaccionesAdversasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reaccionesAdversas',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reaccionesAdversas',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      reaccionesAdversasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reaccionesAdversas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      reaccionesAdversasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reaccionesAdversas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reaccionesAdversas',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> reaccionesAdversasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reaccionesAdversas',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      registeredByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      registeredByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registeredBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registeredByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registeredBy',
        value: '',
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
      QAfterFilterCondition> registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registrationDateGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registrationDateLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> registrationDateBetween(
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
      QAfterFilterCondition> typeEqualTo(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeBetween(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeStartsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeEndsWith(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateGreaterThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateLessThan(
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

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity,
      QAfterFilterCondition> updateDateBetween(
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
      sortByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

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
      sortByAppliedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByAppliedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
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
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
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
      sortByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
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
      sortByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByIntervalDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
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
      sortByNextApplication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextApplication', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByNextApplicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextApplication', Sort.desc);
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
      sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByObservedEffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedEffects', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByObservedEffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedEffects', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.desc);
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
      sortByReaccionesAdversas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByReaccionesAdversasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
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
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
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
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
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
      thenByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

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
      thenByAppliedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByAppliedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appliedBy', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
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
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
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
      thenByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
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
      thenByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByIntervalDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalDays', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
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
      thenByNextApplication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextApplication', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByNextApplicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextApplication', Sort.desc);
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
      thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByObservedEffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedEffects', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByObservedEffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observedEffects', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product', Sort.desc);
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
      thenByReaccionesAdversas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByReaccionesAdversasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reaccionesAdversas', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
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
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
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
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QAfterSortBy>
      thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
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
      distinctByAdministrationRoute({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'administrationRoute',
          caseSensitive: caseSensitive);
    });
  }

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
      distinctByAppliedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appliedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByBrand({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByCosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costo');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByDiasIntervalo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diasIntervalo');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByDose({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dose', caseSensitive: caseSensitive);
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
      distinctByIntervalDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intervalDays');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByLot({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lot', caseSensitive: caseSensitive);
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
      distinctByNextApplication() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextApplication');
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
      distinctByObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByObservedEffects({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observedEffects',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByProduct({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'product', caseSensitive: caseSensitive);
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
      distinctByReaccionesAdversas({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reaccionesAdversas',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByRegisteredBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registeredBy', caseSensitive: caseSensitive);
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
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByTipo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DesparasitacionEntity, DesparasitacionEntity, QDistinct>
      distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
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
      administrationRouteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'administrationRoute');
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

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      appliedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appliedBy');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<DesparasitacionEntity, double?, QQueryOperations>
      costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<DesparasitacionEntity, double?, QQueryOperations>
      costoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costo');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime, QQueryOperations>
      dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<DesparasitacionEntity, int, QQueryOperations>
      diasIntervaloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diasIntervalo');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations> doseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dose');
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

  QueryBuilder<DesparasitacionEntity, int, QQueryOperations>
      intervalDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intervalDays');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations> lotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lot');
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

  QueryBuilder<DesparasitacionEntity, DateTime?, QQueryOperations>
      nextApplicationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextApplication');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      observedEffectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observedEffects');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      productProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'product');
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

  QueryBuilder<DesparasitacionEntity, String?, QQueryOperations>
      reaccionesAdversasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reaccionesAdversas');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      registeredByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registeredBy');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations>
      registradoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registradoPor');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<DesparasitacionEntity, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<DesparasitacionEntity, DateTime?, QQueryOperations>
      updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
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
