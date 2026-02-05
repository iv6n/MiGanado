// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerta_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlertaEntityCollection on Isar {
  IsarCollection<AlertaEntity> get alertaEntitys => this.collection();
}

const AlertaEntitySchema = CollectionSchema(
  name: r'AlertaEntity',
  id: 2216626268472035808,
  properties: {
    r'accionSugerida': PropertySchema(
      id: 0,
      name: r'accionSugerida',
      type: IsarType.string,
    ),
    r'animalUuid': PropertySchema(
      id: 1,
      name: r'animalUuid',
      type: IsarType.string,
    ),
    r'categoriaEvento': PropertySchema(
      id: 2,
      name: r'categoriaEvento',
      type: IsarType.string,
    ),
    r'colorHex': PropertySchema(
      id: 3,
      name: r'colorHex',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 4,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'diasAnticipacion': PropertySchema(
      id: 5,
      name: r'diasAnticipacion',
      type: IsarType.long,
    ),
    r'estado': PropertySchema(
      id: 6,
      name: r'estado',
      type: IsarType.byte,
      enumMap: _AlertaEntityestadoEnumValueMap,
    ),
    r'eventoUuid': PropertySchema(
      id: 7,
      name: r'eventoUuid',
      type: IsarType.string,
    ),
    r'fechaActuada': PropertySchema(
      id: 8,
      name: r'fechaActuada',
      type: IsarType.dateTime,
    ),
    r'fechaAlerta': PropertySchema(
      id: 9,
      name: r'fechaAlerta',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 10,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaDescartada': PropertySchema(
      id: 11,
      name: r'fechaDescartada',
      type: IsarType.dateTime,
    ),
    r'fechaEventoOriginal': PropertySchema(
      id: 12,
      name: r'fechaEventoOriginal',
      type: IsarType.dateTime,
    ),
    r'fechaVista': PropertySchema(
      id: 13,
      name: r'fechaVista',
      type: IsarType.dateTime,
    ),
    r'iconoEmoji': PropertySchema(
      id: 14,
      name: r'iconoEmoji',
      type: IsarType.string,
    ),
    r'prioridad': PropertySchema(
      id: 15,
      name: r'prioridad',
      type: IsarType.long,
    ),
    r'sincronizado': PropertySchema(
      id: 16,
      name: r'sincronizado',
      type: IsarType.bool,
    ),
    r'tipo': PropertySchema(
      id: 17,
      name: r'tipo',
      type: IsarType.byte,
      enumMap: _AlertaEntitytipoEnumValueMap,
    ),
    r'tipoEvento': PropertySchema(
      id: 18,
      name: r'tipoEvento',
      type: IsarType.string,
    ),
    r'titulo': PropertySchema(
      id: 19,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'usuarioCreacion': PropertySchema(
      id: 20,
      name: r'usuarioCreacion',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 21,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _alertaEntityEstimateSize,
  serialize: _alertaEntitySerialize,
  deserialize: _alertaEntityDeserialize,
  deserializeProp: _alertaEntityDeserializeProp,
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
    r'fechaAlerta': IndexSchema(
      id: -7482680518586301450,
      name: r'fechaAlerta',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaAlerta',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'prioridad': IndexSchema(
      id: 8505763141741948367,
      name: r'prioridad',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'prioridad',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _alertaEntityGetId,
  getLinks: _alertaEntityGetLinks,
  attach: _alertaEntityAttach,
  version: '3.1.0+1',
);

int _alertaEntityEstimateSize(
  AlertaEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.accionSugerida;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.animalUuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.categoriaEvento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.colorHex.length * 3;
  {
    final value = object.descripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.eventoUuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.iconoEmoji.length * 3;
  {
    final value = object.tipoEvento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.titulo.length * 3;
  {
    final value = object.usuarioCreacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _alertaEntitySerialize(
  AlertaEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accionSugerida);
  writer.writeString(offsets[1], object.animalUuid);
  writer.writeString(offsets[2], object.categoriaEvento);
  writer.writeString(offsets[3], object.colorHex);
  writer.writeString(offsets[4], object.descripcion);
  writer.writeLong(offsets[5], object.diasAnticipacion);
  writer.writeByte(offsets[6], object.estado.index);
  writer.writeString(offsets[7], object.eventoUuid);
  writer.writeDateTime(offsets[8], object.fechaActuada);
  writer.writeDateTime(offsets[9], object.fechaAlerta);
  writer.writeDateTime(offsets[10], object.fechaCreacion);
  writer.writeDateTime(offsets[11], object.fechaDescartada);
  writer.writeDateTime(offsets[12], object.fechaEventoOriginal);
  writer.writeDateTime(offsets[13], object.fechaVista);
  writer.writeString(offsets[14], object.iconoEmoji);
  writer.writeLong(offsets[15], object.prioridad);
  writer.writeBool(offsets[16], object.sincronizado);
  writer.writeByte(offsets[17], object.tipo.index);
  writer.writeString(offsets[18], object.tipoEvento);
  writer.writeString(offsets[19], object.titulo);
  writer.writeString(offsets[20], object.usuarioCreacion);
  writer.writeString(offsets[21], object.uuid);
}

AlertaEntity _alertaEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AlertaEntity(
    accionSugerida: reader.readStringOrNull(offsets[0]),
    animalUuid: reader.readStringOrNull(offsets[1]),
    categoriaEvento: reader.readStringOrNull(offsets[2]),
    colorHex: reader.readString(offsets[3]),
    descripcion: reader.readStringOrNull(offsets[4]),
    diasAnticipacion: reader.readLongOrNull(offsets[5]) ?? 0,
    estado:
        _AlertaEntityestadoValueEnumMap[reader.readByteOrNull(offsets[6])] ??
            EstadoAlerta.no_visto,
    eventoUuid: reader.readStringOrNull(offsets[7]),
    fechaAlerta: reader.readDateTime(offsets[9]),
    fechaCreacion: reader.readDateTime(offsets[10]),
    fechaEventoOriginal: reader.readDateTimeOrNull(offsets[12]),
    iconoEmoji: reader.readString(offsets[14]),
    prioridad: reader.readLong(offsets[15]),
    tipo: _AlertaEntitytipoValueEnumMap[reader.readByteOrNull(offsets[17])] ??
        TipoAlerta.anticipada,
    tipoEvento: reader.readStringOrNull(offsets[18]),
    titulo: reader.readString(offsets[19]),
    usuarioCreacion: reader.readStringOrNull(offsets[20]),
    uuid: reader.readString(offsets[21]),
  );
  object.fechaActuada = reader.readDateTimeOrNull(offsets[8]);
  object.fechaDescartada = reader.readDateTimeOrNull(offsets[11]);
  object.fechaVista = reader.readDateTimeOrNull(offsets[13]);
  object.id = id;
  object.sincronizado = reader.readBool(offsets[16]);
  return object;
}

P _alertaEntityDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (_AlertaEntityestadoValueEnumMap[reader.readByteOrNull(offset)] ??
          EstadoAlerta.no_visto) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readDateTime(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readBool(offset)) as P;
    case 17:
      return (_AlertaEntitytipoValueEnumMap[reader.readByteOrNull(offset)] ??
          TipoAlerta.anticipada) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AlertaEntityestadoEnumValueMap = {
  'no_visto': 0,
  'visto': 1,
  'actuado': 2,
  'descartada': 3,
};
const _AlertaEntityestadoValueEnumMap = {
  0: EstadoAlerta.no_visto,
  1: EstadoAlerta.visto,
  2: EstadoAlerta.actuado,
  3: EstadoAlerta.descartada,
};
const _AlertaEntitytipoEnumValueMap = {
  'anticipada': 0,
  'critica': 1,
  'vencida': 2,
};
const _AlertaEntitytipoValueEnumMap = {
  0: TipoAlerta.anticipada,
  1: TipoAlerta.critica,
  2: TipoAlerta.vencida,
};

Id _alertaEntityGetId(AlertaEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _alertaEntityGetLinks(AlertaEntity object) {
  return [];
}

void _alertaEntityAttach(
    IsarCollection<dynamic> col, Id id, AlertaEntity object) {
  object.id = id;
}

extension AlertaEntityByIndex on IsarCollection<AlertaEntity> {
  Future<AlertaEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  AlertaEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<AlertaEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<AlertaEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(AlertaEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(AlertaEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<AlertaEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<AlertaEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension AlertaEntityQueryWhereSort
    on QueryBuilder<AlertaEntity, AlertaEntity, QWhere> {
  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhere> anyFechaAlerta() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaAlerta'),
      );
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhere> anyPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'prioridad'),
      );
    });
  }
}

extension AlertaEntityQueryWhere
    on QueryBuilder<AlertaEntity, AlertaEntity, QWhereClause> {
  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> uuidNotEqualTo(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      fechaAlertaEqualTo(DateTime fechaAlerta) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaAlerta',
        value: [fechaAlerta],
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      fechaAlertaNotEqualTo(DateTime fechaAlerta) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAlerta',
              lower: [],
              upper: [fechaAlerta],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAlerta',
              lower: [fechaAlerta],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAlerta',
              lower: [fechaAlerta],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAlerta',
              lower: [],
              upper: [fechaAlerta],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      fechaAlertaGreaterThan(
    DateTime fechaAlerta, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAlerta',
        lower: [fechaAlerta],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      fechaAlertaLessThan(
    DateTime fechaAlerta, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAlerta',
        lower: [],
        upper: [fechaAlerta],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      fechaAlertaBetween(
    DateTime lowerFechaAlerta,
    DateTime upperFechaAlerta, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAlerta',
        lower: [lowerFechaAlerta],
        includeLower: includeLower,
        upper: [upperFechaAlerta],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> prioridadEqualTo(
      int prioridad) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'prioridad',
        value: [prioridad],
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      prioridadNotEqualTo(int prioridad) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'prioridad',
              lower: [],
              upper: [prioridad],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'prioridad',
              lower: [prioridad],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'prioridad',
              lower: [prioridad],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'prioridad',
              lower: [],
              upper: [prioridad],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause>
      prioridadGreaterThan(
    int prioridad, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'prioridad',
        lower: [prioridad],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> prioridadLessThan(
    int prioridad, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'prioridad',
        lower: [],
        upper: [prioridad],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterWhereClause> prioridadBetween(
    int lowerPrioridad,
    int upperPrioridad, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'prioridad',
        lower: [lowerPrioridad],
        includeLower: includeLower,
        upper: [upperPrioridad],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AlertaEntityQueryFilter
    on QueryBuilder<AlertaEntity, AlertaEntity, QFilterCondition> {
  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accionSugerida',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accionSugerida',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accionSugerida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accionSugerida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accionSugerida',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accionSugerida',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      accionSugeridaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accionSugerida',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'animalUuid',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'animalUuid',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidEqualTo(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidGreaterThan(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidLessThan(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoriaEvento',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoriaEvento',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaEvento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaEvento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      categoriaEventoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorHex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorHex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      colorHexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionEqualTo(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionGreaterThan(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionLessThan(
    String? value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      diasAnticipacionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasAnticipacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      diasAnticipacionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diasAnticipacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      diasAnticipacionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diasAnticipacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      diasAnticipacionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diasAnticipacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> estadoEqualTo(
      EstadoAlerta value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      estadoGreaterThan(
    EstadoAlerta value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      estadoLessThan(
    EstadoAlerta value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> estadoBetween(
    EstadoAlerta lower,
    EstadoAlerta upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventoUuid',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventoUuid',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventoUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventoUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventoUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventoUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      eventoUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventoUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActuada',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActuada',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActuada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaActuada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaActuada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaActuadaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaActuada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaAlertaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaAlerta',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaAlertaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaAlerta',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaAlertaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaAlerta',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaAlertaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaAlerta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaCreacionGreaterThan(
    DateTime value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaCreacionLessThan(
    DateTime value, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaDescartada',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaDescartada',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaDescartada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaDescartada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaDescartada',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaDescartadaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaDescartada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaEventoOriginal',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaEventoOriginal',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaEventoOriginal',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaEventoOriginal',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaEventoOriginal',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaEventoOriginalBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaEventoOriginal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaVista',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaVista',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaVista',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaVista',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaVista',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      fechaVistaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaVista',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconoEmoji',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconoEmoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconoEmoji',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconoEmoji',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      iconoEmojiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconoEmoji',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      prioridadEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      prioridadGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      prioridadLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      prioridadBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prioridad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      sincronizadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sincronizado',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tipoEqualTo(
      TipoAlerta value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoGreaterThan(
    TipoAlerta value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tipoLessThan(
    TipoAlerta value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tipoBetween(
    TipoAlerta lower,
    TipoAlerta upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipoEvento',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipoEvento',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoEvento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoEvento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tipoEventoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tituloEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tituloBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> tituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioCreacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      usuarioCreacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidEqualTo(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidLessThan(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidBetween(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidEndsWith(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidContains(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition> uuidMatches(
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

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension AlertaEntityQueryObject
    on QueryBuilder<AlertaEntity, AlertaEntity, QFilterCondition> {}

extension AlertaEntityQueryLinks
    on QueryBuilder<AlertaEntity, AlertaEntity, QFilterCondition> {}

extension AlertaEntityQuerySortBy
    on QueryBuilder<AlertaEntity, AlertaEntity, QSortBy> {
  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByAccionSugerida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accionSugerida', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByAccionSugeridaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accionSugerida', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByCategoriaEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaEvento', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByCategoriaEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaEvento', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorHex', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorHex', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByDiasAnticipacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasAnticipacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByDiasAnticipacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasAnticipacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByEventoUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoUuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByEventoUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoUuid', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByFechaActuada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActuada', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaActuadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActuada', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByFechaAlerta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAlerta', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaAlertaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAlerta', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaDescartada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaDescartada', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaDescartadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaDescartada', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaEventoOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEventoOriginal', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaEventoOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEventoOriginal', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByFechaVista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVista', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByFechaVistaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVista', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByIconoEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconoEmoji', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByIconoEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconoEmoji', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      sortByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension AlertaEntityQuerySortThenBy
    on QueryBuilder<AlertaEntity, AlertaEntity, QSortThenBy> {
  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByAccionSugerida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accionSugerida', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByAccionSugeridaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accionSugerida', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByCategoriaEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaEvento', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByCategoriaEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaEvento', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorHex', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorHex', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByDiasAnticipacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasAnticipacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByDiasAnticipacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diasAnticipacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByEventoUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoUuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByEventoUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoUuid', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByFechaActuada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActuada', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaActuadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActuada', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByFechaAlerta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAlerta', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaAlertaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAlerta', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaDescartada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaDescartada', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaDescartadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaDescartada', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaEventoOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEventoOriginal', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaEventoOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaEventoOriginal', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByFechaVista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVista', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByFechaVistaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVista', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByIconoEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconoEmoji', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByIconoEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconoEmoji', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy>
      thenByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension AlertaEntityQueryWhereDistinct
    on QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> {
  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByAccionSugerida(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accionSugerida',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByAnimalUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByCategoriaEvento(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaEvento',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByColorHex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorHex', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct>
      distinctByDiasAnticipacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diasAnticipacion');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByEventoUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventoUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByFechaActuada() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActuada');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByFechaAlerta() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaAlerta');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct>
      distinctByFechaDescartada() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaDescartada');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct>
      distinctByFechaEventoOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaEventoOriginal');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByFechaVista() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaVista');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByIconoEmoji(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconoEmoji', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prioridad');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sincronizado');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo');
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByTipoEvento(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoEvento', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByTitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByUsuarioCreacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioCreacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlertaEntity, AlertaEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension AlertaEntityQueryProperty
    on QueryBuilder<AlertaEntity, AlertaEntity, QQueryProperty> {
  QueryBuilder<AlertaEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations>
      accionSugeridaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accionSugerida');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations> animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations>
      categoriaEventoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaEvento');
    });
  }

  QueryBuilder<AlertaEntity, String, QQueryOperations> colorHexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorHex');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<AlertaEntity, int, QQueryOperations> diasAnticipacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diasAnticipacion');
    });
  }

  QueryBuilder<AlertaEntity, EstadoAlerta, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations> eventoUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventoUuid');
    });
  }

  QueryBuilder<AlertaEntity, DateTime?, QQueryOperations>
      fechaActuadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActuada');
    });
  }

  QueryBuilder<AlertaEntity, DateTime, QQueryOperations> fechaAlertaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaAlerta');
    });
  }

  QueryBuilder<AlertaEntity, DateTime, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<AlertaEntity, DateTime?, QQueryOperations>
      fechaDescartadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaDescartada');
    });
  }

  QueryBuilder<AlertaEntity, DateTime?, QQueryOperations>
      fechaEventoOriginalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaEventoOriginal');
    });
  }

  QueryBuilder<AlertaEntity, DateTime?, QQueryOperations> fechaVistaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaVista');
    });
  }

  QueryBuilder<AlertaEntity, String, QQueryOperations> iconoEmojiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconoEmoji');
    });
  }

  QueryBuilder<AlertaEntity, int, QQueryOperations> prioridadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prioridad');
    });
  }

  QueryBuilder<AlertaEntity, bool, QQueryOperations> sincronizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sincronizado');
    });
  }

  QueryBuilder<AlertaEntity, TipoAlerta, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations> tipoEventoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoEvento');
    });
  }

  QueryBuilder<AlertaEntity, String, QQueryOperations> tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<AlertaEntity, String?, QQueryOperations>
      usuarioCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioCreacion');
    });
  }

  QueryBuilder<AlertaEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
