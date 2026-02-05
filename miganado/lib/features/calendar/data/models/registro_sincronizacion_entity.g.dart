// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_sincronizacion_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRegistroSincronizacionEntityCollection on Isar {
  IsarCollection<RegistroSincronizacionEntity>
      get registroSincronizacionEntitys => this.collection();
}

const RegistroSincronizacionEntitySchema = CollectionSchema(
  name: r'RegistroSincronizacionEntity',
  id: 2658095124183121551,
  properties: {
    r'accion': PropertySchema(
      id: 0,
      name: r'accion',
      type: IsarType.byte,
      enumMap: _RegistroSincronizacionEntityaccionEnumValueMap,
    ),
    r'campo': PropertySchema(
      id: 1,
      name: r'campo',
      type: IsarType.string,
    ),
    r'entidadTipo': PropertySchema(
      id: 2,
      name: r'entidadTipo',
      type: IsarType.string,
    ),
    r'entidadUuid': PropertySchema(
      id: 3,
      name: r'entidadUuid',
      type: IsarType.string,
    ),
    r'fechaRegistro': PropertySchema(
      id: 4,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'fechaSincronizacion': PropertySchema(
      id: 5,
      name: r'fechaSincronizacion',
      type: IsarType.dateTime,
    ),
    r'metadataJson': PropertySchema(
      id: 6,
      name: r'metadataJson',
      type: IsarType.string,
    ),
    r'razon': PropertySchema(
      id: 7,
      name: r'razon',
      type: IsarType.string,
    ),
    r'sincronizado': PropertySchema(
      id: 8,
      name: r'sincronizado',
      type: IsarType.bool,
    ),
    r'usuario': PropertySchema(
      id: 9,
      name: r'usuario',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 10,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'valorAnterior': PropertySchema(
      id: 11,
      name: r'valorAnterior',
      type: IsarType.string,
    ),
    r'valorNuevo': PropertySchema(
      id: 12,
      name: r'valorNuevo',
      type: IsarType.string,
    )
  },
  estimateSize: _registroSincronizacionEntityEstimateSize,
  serialize: _registroSincronizacionEntitySerialize,
  deserialize: _registroSincronizacionEntityDeserialize,
  deserializeProp: _registroSincronizacionEntityDeserializeProp,
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
    r'entidadTipo': IndexSchema(
      id: 4552958132624297811,
      name: r'entidadTipo',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'entidadTipo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'entidadUuid': IndexSchema(
      id: -3326146228107062955,
      name: r'entidadUuid',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'entidadUuid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaRegistro': IndexSchema(
      id: 1064754610049038936,
      name: r'fechaRegistro',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaRegistro',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _registroSincronizacionEntityGetId,
  getLinks: _registroSincronizacionEntityGetLinks,
  attach: _registroSincronizacionEntityAttach,
  version: '3.1.0+1',
);

int _registroSincronizacionEntityEstimateSize(
  RegistroSincronizacionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.campo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.entidadTipo.length * 3;
  bytesCount += 3 + object.entidadUuid.length * 3;
  {
    final value = object.metadataJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.razon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.usuario.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  {
    final value = object.valorAnterior;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.valorNuevo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _registroSincronizacionEntitySerialize(
  RegistroSincronizacionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.accion.index);
  writer.writeString(offsets[1], object.campo);
  writer.writeString(offsets[2], object.entidadTipo);
  writer.writeString(offsets[3], object.entidadUuid);
  writer.writeDateTime(offsets[4], object.fechaRegistro);
  writer.writeDateTime(offsets[5], object.fechaSincronizacion);
  writer.writeString(offsets[6], object.metadataJson);
  writer.writeString(offsets[7], object.razon);
  writer.writeBool(offsets[8], object.sincronizado);
  writer.writeString(offsets[9], object.usuario);
  writer.writeString(offsets[10], object.uuid);
  writer.writeString(offsets[11], object.valorAnterior);
  writer.writeString(offsets[12], object.valorNuevo);
}

RegistroSincronizacionEntity _registroSincronizacionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RegistroSincronizacionEntity(
    accion: _RegistroSincronizacionEntityaccionValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        TipoAccion.creado,
    campo: reader.readStringOrNull(offsets[1]),
    entidadTipo: reader.readString(offsets[2]),
    entidadUuid: reader.readString(offsets[3]),
    fechaRegistro: reader.readDateTime(offsets[4]),
    metadataJson: reader.readStringOrNull(offsets[6]),
    razon: reader.readStringOrNull(offsets[7]),
    sincronizado: reader.readBoolOrNull(offsets[8]) ?? false,
    usuario: reader.readString(offsets[9]),
    uuid: reader.readString(offsets[10]),
    valorAnterior: reader.readStringOrNull(offsets[11]),
    valorNuevo: reader.readStringOrNull(offsets[12]),
  );
  object.fechaSincronizacion = reader.readDateTimeOrNull(offsets[5]);
  object.id = id;
  return object;
}

P _registroSincronizacionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_RegistroSincronizacionEntityaccionValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TipoAccion.creado) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _RegistroSincronizacionEntityaccionEnumValueMap = {
  'creado': 0,
  'actualizado': 1,
  'eliminado': 2,
  'sincronizado': 3,
  'generado_automatico': 4,
  'migrado': 5,
};
const _RegistroSincronizacionEntityaccionValueEnumMap = {
  0: TipoAccion.creado,
  1: TipoAccion.actualizado,
  2: TipoAccion.eliminado,
  3: TipoAccion.sincronizado,
  4: TipoAccion.generado_automatico,
  5: TipoAccion.migrado,
};

Id _registroSincronizacionEntityGetId(RegistroSincronizacionEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _registroSincronizacionEntityGetLinks(
    RegistroSincronizacionEntity object) {
  return [];
}

void _registroSincronizacionEntityAttach(
    IsarCollection<dynamic> col, Id id, RegistroSincronizacionEntity object) {
  object.id = id;
}

extension RegistroSincronizacionEntityByIndex
    on IsarCollection<RegistroSincronizacionEntity> {
  Future<RegistroSincronizacionEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  RegistroSincronizacionEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<RegistroSincronizacionEntity?>> getAllByUuid(
      List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<RegistroSincronizacionEntity?> getAllByUuidSync(
      List<String> uuidValues) {
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

  Future<Id> putByUuid(RegistroSincronizacionEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(RegistroSincronizacionEntity object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<RegistroSincronizacionEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<RegistroSincronizacionEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension RegistroSincronizacionEntityQueryWhereSort on QueryBuilder<
    RegistroSincronizacionEntity, RegistroSincronizacionEntity, QWhere> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhere> anyFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaRegistro'),
      );
    });
  }
}

extension RegistroSincronizacionEntityQueryWhere on QueryBuilder<
    RegistroSincronizacionEntity, RegistroSincronizacionEntity, QWhereClause> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> entidadTipoEqualTo(String entidadTipo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'entidadTipo',
        value: [entidadTipo],
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> entidadTipoNotEqualTo(String entidadTipo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadTipo',
              lower: [],
              upper: [entidadTipo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadTipo',
              lower: [entidadTipo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadTipo',
              lower: [entidadTipo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadTipo',
              lower: [],
              upper: [entidadTipo],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> entidadUuidEqualTo(String entidadUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'entidadUuid',
        value: [entidadUuid],
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> entidadUuidNotEqualTo(String entidadUuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadUuid',
              lower: [],
              upper: [entidadUuid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadUuid',
              lower: [entidadUuid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadUuid',
              lower: [entidadUuid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'entidadUuid',
              lower: [],
              upper: [entidadUuid],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> fechaRegistroEqualTo(DateTime fechaRegistro) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaRegistro',
        value: [fechaRegistro],
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> fechaRegistroNotEqualTo(DateTime fechaRegistro) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [],
              upper: [fechaRegistro],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [fechaRegistro],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [fechaRegistro],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [],
              upper: [fechaRegistro],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> fechaRegistroGreaterThan(
    DateTime fechaRegistro, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [fechaRegistro],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> fechaRegistroLessThan(
    DateTime fechaRegistro, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [],
        upper: [fechaRegistro],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterWhereClause> fechaRegistroBetween(
    DateTime lowerFechaRegistro,
    DateTime upperFechaRegistro, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [lowerFechaRegistro],
        includeLower: includeLower,
        upper: [upperFechaRegistro],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RegistroSincronizacionEntityQueryFilter on QueryBuilder<
    RegistroSincronizacionEntity,
    RegistroSincronizacionEntity,
    QFilterCondition> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> accionEqualTo(TipoAccion value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accion',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> accionGreaterThan(
    TipoAccion value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accion',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> accionLessThan(
    TipoAccion value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accion',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> accionBetween(
    TipoAccion lower,
    TipoAccion upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'campo',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'campo',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'campo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      campoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'campo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      campoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'campo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'campo',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> campoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'campo',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entidadTipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      entidadTipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entidadTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      entidadTipoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entidadTipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadTipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entidadTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entidadUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      entidadUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entidadUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      entidadUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entidadUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> entidadUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entidadUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> fechaSincronizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> fechaSincronizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> fechaSincronizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'metadataJson',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'metadataJson',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'metadataJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      metadataJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'metadataJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      metadataJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'metadataJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metadataJson',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> metadataJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'metadataJson',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'razon',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'razon',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'razon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      razonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'razon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      razonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'razon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'razon',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> razonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'razon',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> sincronizadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sincronizado',
        value: value,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      usuarioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      usuarioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuario',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuario',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> usuarioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuario',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
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

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valorAnterior',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valorAnterior',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorAnterior',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      valorAnteriorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valorAnterior',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      valorAnteriorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valorAnterior',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorAnterior',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorAnteriorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valorAnterior',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valorNuevo',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valorNuevo',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorNuevo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      valorNuevoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valorNuevo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
          QAfterFilterCondition>
      valorNuevoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valorNuevo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorNuevo',
        value: '',
      ));
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterFilterCondition> valorNuevoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valorNuevo',
        value: '',
      ));
    });
  }
}

extension RegistroSincronizacionEntityQueryObject on QueryBuilder<
    RegistroSincronizacionEntity,
    RegistroSincronizacionEntity,
    QFilterCondition> {}

extension RegistroSincronizacionEntityQueryLinks on QueryBuilder<
    RegistroSincronizacionEntity,
    RegistroSincronizacionEntity,
    QFilterCondition> {}

extension RegistroSincronizacionEntityQuerySortBy on QueryBuilder<
    RegistroSincronizacionEntity, RegistroSincronizacionEntity, QSortBy> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByAccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accion', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByAccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accion', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByCampo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByCampoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campo', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByEntidadTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadTipo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByEntidadTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadTipo', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByEntidadUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadUuid', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByEntidadUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadUuid', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByRazon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razon', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByRazonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razon', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByUsuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuario', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByUsuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuario', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByValorAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorAnterior', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByValorAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorAnterior', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByValorNuevo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorNuevo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> sortByValorNuevoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorNuevo', Sort.desc);
    });
  }
}

extension RegistroSincronizacionEntityQuerySortThenBy on QueryBuilder<
    RegistroSincronizacionEntity, RegistroSincronizacionEntity, QSortThenBy> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByAccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accion', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByAccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accion', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByCampo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByCampoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'campo', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByEntidadTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadTipo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByEntidadTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadTipo', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByEntidadUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadUuid', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByEntidadUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadUuid', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByRazon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razon', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByRazonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razon', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByUsuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuario', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByUsuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuario', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByValorAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorAnterior', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByValorAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorAnterior', Sort.desc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByValorNuevo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorNuevo', Sort.asc);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QAfterSortBy> thenByValorNuevoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorNuevo', Sort.desc);
    });
  }
}

extension RegistroSincronizacionEntityQueryWhereDistinct on QueryBuilder<
    RegistroSincronizacionEntity, RegistroSincronizacionEntity, QDistinct> {
  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByAccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accion');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByCampo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'campo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByEntidadTipo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entidadTipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByEntidadUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entidadUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaSincronizacion');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByMetadataJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metadataJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByRazon({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'razon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sincronizado');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByUsuario({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuario', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByValorAnterior({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valorAnterior',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, RegistroSincronizacionEntity,
      QDistinct> distinctByValorNuevo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valorNuevo', caseSensitive: caseSensitive);
    });
  }
}

extension RegistroSincronizacionEntityQueryProperty on QueryBuilder<
    RegistroSincronizacionEntity,
    RegistroSincronizacionEntity,
    QQueryProperty> {
  QueryBuilder<RegistroSincronizacionEntity, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, TipoAccion, QQueryOperations>
      accionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accion');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String?, QQueryOperations>
      campoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'campo');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String, QQueryOperations>
      entidadTipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entidadTipo');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String, QQueryOperations>
      entidadUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entidadUuid');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, DateTime?, QQueryOperations>
      fechaSincronizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaSincronizacion');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String?, QQueryOperations>
      metadataJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metadataJson');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String?, QQueryOperations>
      razonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'razon');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, bool, QQueryOperations>
      sincronizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sincronizado');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String, QQueryOperations>
      usuarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuario');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String, QQueryOperations>
      uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String?, QQueryOperations>
      valorAnteriorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valorAnterior');
    });
  }

  QueryBuilder<RegistroSincronizacionEntity, String?, QQueryOperations>
      valorNuevoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valorNuevo');
    });
  }
}
