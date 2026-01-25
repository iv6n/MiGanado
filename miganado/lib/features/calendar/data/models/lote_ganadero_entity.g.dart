// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lote_ganadero_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoteGanaderoEntityCollection on Isar {
  IsarCollection<LoteGanaderoEntity> get loteGanaderoEntitys =>
      this.collection();
}

const LoteGanaderoEntitySchema = CollectionSchema(
  name: r'LoteGanaderoEntity',
  id: 7833244748676449954,
  properties: {
    r'activo': PropertySchema(
      id: 0,
      name: r'activo',
      type: IsarType.bool,
    ),
    r'animalIds': PropertySchema(
      id: 1,
      name: r'animalIds',
      type: IsarType.stringList,
    ),
    r'cantidadAnimales': PropertySchema(
      id: 2,
      name: r'cantidadAnimales',
      type: IsarType.long,
    ),
    r'datosEspecificosJson': PropertySchema(
      id: 3,
      name: r'datosEspecificosJson',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 4,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'edadPromedioMeses': PropertySchema(
      id: 5,
      name: r'edadPromedioMeses',
      type: IsarType.long,
    ),
    r'especie': PropertySchema(
      id: 6,
      name: r'especie',
      type: IsarType.byte,
      enumMap: _LoteGanaderoEntityespecieEnumValueMap,
    ),
    r'estaActivo': PropertySchema(
      id: 7,
      name: r'estaActivo',
      type: IsarType.bool,
    ),
    r'etiquetas': PropertySchema(
      id: 8,
      name: r'etiquetas',
      type: IsarType.stringList,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 9,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaCierre': PropertySchema(
      id: 10,
      name: r'fechaCierre',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 11,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 12,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'historicoCambios': PropertySchema(
      id: 13,
      name: r'historicoCambios',
      type: IsarType.objectList,
      target: r'IsarCambioLote',
    ),
    r'nombre': PropertySchema(
      id: 14,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'nombreEspecie': PropertySchema(
      id: 15,
      name: r'nombreEspecie',
      type: IsarType.string,
    ),
    r'nombreProduccion': PropertySchema(
      id: 16,
      name: r'nombreProduccion',
      type: IsarType.string,
    ),
    r'notas': PropertySchema(
      id: 17,
      name: r'notas',
      type: IsarType.string,
    ),
    r'objetivo': PropertySchema(
      id: 18,
      name: r'objetivo',
      type: IsarType.string,
    ),
    r'pesoMaximo': PropertySchema(
      id: 19,
      name: r'pesoMaximo',
      type: IsarType.double,
    ),
    r'pesoMinimo': PropertySchema(
      id: 20,
      name: r'pesoMinimo',
      type: IsarType.double,
    ),
    r'pesoPromedio': PropertySchema(
      id: 21,
      name: r'pesoPromedio',
      type: IsarType.double,
    ),
    r'produccionDiaria': PropertySchema(
      id: 22,
      name: r'produccionDiaria',
      type: IsarType.double,
    ),
    r'razaPredominante': PropertySchema(
      id: 23,
      name: r'razaPredominante',
      type: IsarType.string,
    ),
    r'responsable': PropertySchema(
      id: 24,
      name: r'responsable',
      type: IsarType.string,
    ),
    r'tipoProduccion': PropertySchema(
      id: 25,
      name: r'tipoProduccion',
      type: IsarType.byte,
      enumMap: _LoteGanaderoEntitytipoProduccionEnumValueMap,
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
  estimateSize: _loteGanaderoEntityEstimateSize,
  serialize: _loteGanaderoEntitySerialize,
  deserialize: _loteGanaderoEntityDeserialize,
  deserializeProp: _loteGanaderoEntityDeserializeProp,
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
    r'nombre': IndexSchema(
      id: -8239814765453414572,
      name: r'nombre',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'nombre',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'IsarCambioLote': IsarCambioLoteSchema},
  getId: _loteGanaderoEntityGetId,
  getLinks: _loteGanaderoEntityGetLinks,
  attach: _loteGanaderoEntityAttach,
  version: '3.1.0+1',
);

int _loteGanaderoEntityEstimateSize(
  LoteGanaderoEntity object,
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
    final value = object.descripcion;
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
  bytesCount += 3 + object.nombre.length * 3;
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
    final value = object.razaPredominante;
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

void _loteGanaderoEntitySerialize(
  LoteGanaderoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.activo);
  writer.writeStringList(offsets[1], object.animalIds);
  writer.writeLong(offsets[2], object.cantidadAnimales);
  writer.writeString(offsets[3], object.datosEspecificosJson);
  writer.writeString(offsets[4], object.descripcion);
  writer.writeLong(offsets[5], object.edadPromedioMeses);
  writer.writeByte(offsets[6], object.especie.index);
  writer.writeBool(offsets[7], object.estaActivo);
  writer.writeStringList(offsets[8], object.etiquetas);
  writer.writeDateTime(offsets[9], object.fechaActualizacion);
  writer.writeDateTime(offsets[10], object.fechaCierre);
  writer.writeDateTime(offsets[11], object.fechaCreacion);
  writer.writeDateTime(offsets[12], object.fechaRegistro);
  writer.writeObjectList<IsarCambioLote>(
    offsets[13],
    allOffsets,
    IsarCambioLoteSchema.serialize,
    object.historicoCambios,
  );
  writer.writeString(offsets[14], object.nombre);
  writer.writeString(offsets[15], object.nombreEspecie);
  writer.writeString(offsets[16], object.nombreProduccion);
  writer.writeString(offsets[17], object.notas);
  writer.writeString(offsets[18], object.objetivo);
  writer.writeDouble(offsets[19], object.pesoMaximo);
  writer.writeDouble(offsets[20], object.pesoMinimo);
  writer.writeDouble(offsets[21], object.pesoPromedio);
  writer.writeDouble(offsets[22], object.produccionDiaria);
  writer.writeString(offsets[23], object.razaPredominante);
  writer.writeString(offsets[24], object.responsable);
  writer.writeByte(offsets[25], object.tipoProduccion.index);
  writer.writeString(offsets[26], object.ubicacionId);
  writer.writeString(offsets[27], object.unidadProduccion);
  writer.writeString(offsets[28], object.usuarioActualizacion);
  writer.writeString(offsets[29], object.usuarioCreacion);
  writer.writeString(offsets[30], object.uuid);
}

LoteGanaderoEntity _loteGanaderoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoteGanaderoEntity(
    activo: reader.readBoolOrNull(offsets[0]) ?? true,
    cantidadAnimales: reader.readLong(offsets[2]),
    datosEspecificosJson: reader.readStringOrNull(offsets[3]),
    descripcion: reader.readStringOrNull(offsets[4]),
    edadPromedioMeses: reader.readLongOrNull(offsets[5]),
    especie: _LoteGanaderoEntityespecieValueEnumMap[
            reader.readByteOrNull(offsets[6])] ??
        EspecieLote.bovino,
    fechaActualizacion: reader.readDateTimeOrNull(offsets[9]),
    fechaCierre: reader.readDateTimeOrNull(offsets[10]),
    fechaCreacion: reader.readDateTimeOrNull(offsets[11]),
    fechaRegistro: reader.readDateTimeOrNull(offsets[12]),
    nombre: reader.readString(offsets[14]),
    notas: reader.readStringOrNull(offsets[17]),
    objetivo: reader.readStringOrNull(offsets[18]),
    pesoMaximo: reader.readDoubleOrNull(offsets[19]),
    pesoMinimo: reader.readDoubleOrNull(offsets[20]),
    pesoPromedio: reader.readDoubleOrNull(offsets[21]),
    produccionDiaria: reader.readDoubleOrNull(offsets[22]),
    razaPredominante: reader.readStringOrNull(offsets[23]),
    responsable: reader.readStringOrNull(offsets[24]),
    tipoProduccion: _LoteGanaderoEntitytipoProduccionValueEnumMap[
            reader.readByteOrNull(offsets[25])] ??
        TipoProduccion.carne,
    ubicacionId: reader.readStringOrNull(offsets[26]),
    unidadProduccion: reader.readStringOrNull(offsets[27]),
    usuarioActualizacion: reader.readStringOrNull(offsets[28]),
    usuarioCreacion: reader.readStringOrNull(offsets[29]),
    uuid: reader.readStringOrNull(offsets[30]),
  );
  object.id = id;
  return object;
}

P _loteGanaderoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (_LoteGanaderoEntityespecieValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EspecieLote.bovino) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readObjectList<IsarCambioLote>(
            offset,
            IsarCambioLoteSchema.deserialize,
            allOffsets,
            IsarCambioLote(),
          ) ??
          []) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (_LoteGanaderoEntitytipoProduccionValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TipoProduccion.carne) as P;
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

const _LoteGanaderoEntityespecieEnumValueMap = {
  'bovino': 0,
  'equino': 1,
  'ovino': 2,
  'caprino': 3,
};
const _LoteGanaderoEntityespecieValueEnumMap = {
  0: EspecieLote.bovino,
  1: EspecieLote.equino,
  2: EspecieLote.ovino,
  3: EspecieLote.caprino,
};
const _LoteGanaderoEntitytipoProduccionEnumValueMap = {
  'carne': 0,
  'leche': 1,
  'doble': 2,
  'reproduccion': 3,
  'engorde': 4,
  'levante': 5,
};
const _LoteGanaderoEntitytipoProduccionValueEnumMap = {
  0: TipoProduccion.carne,
  1: TipoProduccion.leche,
  2: TipoProduccion.doble,
  3: TipoProduccion.reproduccion,
  4: TipoProduccion.engorde,
  5: TipoProduccion.levante,
};

Id _loteGanaderoEntityGetId(LoteGanaderoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loteGanaderoEntityGetLinks(
    LoteGanaderoEntity object) {
  return [];
}

void _loteGanaderoEntityAttach(
    IsarCollection<dynamic> col, Id id, LoteGanaderoEntity object) {
  object.id = id;
}

extension LoteGanaderoEntityByIndex on IsarCollection<LoteGanaderoEntity> {
  Future<LoteGanaderoEntity?> getByUuid(String? uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  LoteGanaderoEntity? getByUuidSync(String? uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String? uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String? uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<LoteGanaderoEntity?>> getAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<LoteGanaderoEntity?> getAllByUuidSync(List<String?> uuidValues) {
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

  Future<Id> putByUuid(LoteGanaderoEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(LoteGanaderoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<LoteGanaderoEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<LoteGanaderoEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension LoteGanaderoEntityQueryWhereSort
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QWhere> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoteGanaderoEntityQueryWhere
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QWhereClause> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [null],
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      uuidEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      nombreEqualTo(String nombre) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'nombre',
        value: [nombre],
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterWhereClause>
      nombreNotEqualTo(String nombre) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nombre',
              lower: [],
              upper: [nombre],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nombre',
              lower: [nombre],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nombre',
              lower: [nombre],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nombre',
              lower: [],
              upper: [nombre],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LoteGanaderoEntityQueryFilter
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QFilterCondition> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      activoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activo',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      animalIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      animalIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      animalIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalIds',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      animalIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalIds',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      cantidadAnimalesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidadAnimales',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      cantidadAnimalesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantidadAnimales',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      cantidadAnimalesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantidadAnimales',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      cantidadAnimalesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantidadAnimales',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'datosEspecificosJson',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'datosEspecificosJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'datosEspecificosJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      datosEspecificosJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'datosEspecificosJson',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'edadPromedioMeses',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'edadPromedioMeses',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edadPromedioMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edadPromedioMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edadPromedioMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      edadPromedioMesesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edadPromedioMeses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      especieEqualTo(EspecieLote value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especie',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      especieGreaterThan(
    EspecieLote value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'especie',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      especieLessThan(
    EspecieLote value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'especie',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      especieBetween(
    EspecieLote lower,
    EspecieLote upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'especie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      estaActivoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estaActivo',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      etiquetasElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'etiquetas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      etiquetasElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'etiquetas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      etiquetasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      etiquetasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'etiquetas',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCierreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCierre',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCierreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCierre',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCierreEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCierre',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCreacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaRegistroIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaRegistro',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaRegistroIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaRegistro',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEspecieContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreEspecie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEspecieMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreEspecie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEspecieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEspecie',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreEspecieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEspecie',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreProduccionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreProduccionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreProduccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreProduccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      nombreProduccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      notasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objetivo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objetivo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objetivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objetivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetivo',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      objetivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objetivo',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoMaximoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoMaximo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoMaximoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoMaximo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoMinimoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoMinimo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoMinimoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoMinimo',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoPromedioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoPromedio',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      pesoPromedioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoPromedio',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      produccionDiariaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'produccionDiaria',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      produccionDiariaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'produccionDiaria',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'razaPredominante',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'razaPredominante',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'razaPredominante',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'razaPredominante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'razaPredominante',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'razaPredominante',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      razaPredominanteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'razaPredominante',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'responsable',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'responsable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'responsable',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      responsableIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsable',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      tipoProduccionEqualTo(TipoProduccion value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoProduccion',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      tipoProduccionGreaterThan(
    TipoProduccion value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoProduccion',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      tipoProduccionLessThan(
    TipoProduccion value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoProduccion',
        value: value,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      tipoProduccionBetween(
    TipoProduccion lower,
    TipoProduccion upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoProduccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ubicacionId',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ubicacionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ubicacionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      ubicacionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ubicacionId',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unidadProduccion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unidadProduccion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unidadProduccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unidadProduccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unidadProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      unidadProduccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unidadProduccion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioActualizacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioActualizacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioActualizacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioActualizacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioActualizacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuarioCreacion',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioCreacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioCreacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      usuarioCreacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioCreacion',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
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

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension LoteGanaderoEntityQueryObject
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QFilterCondition> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterFilterCondition>
      historicoCambiosElement(FilterQuery<IsarCambioLote> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'historicoCambios');
    });
  }
}

extension LoteGanaderoEntityQueryLinks
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QFilterCondition> {}

extension LoteGanaderoEntityQuerySortBy
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QSortBy> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByCantidadAnimales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadAnimales', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByCantidadAnimalesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadAnimales', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEdadPromedioMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadPromedioMeses', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEdadPromedioMesesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadPromedioMeses', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByEstaActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaCierreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombreEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombreEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombreProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNombreProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByObjetivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByObjetivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoMaximoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoMinimoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByPesoPromedioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByProduccionDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByRazaPredominante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razaPredominante', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByRazaPredominanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razaPredominante', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByTipoProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByTipoProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUnidadProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUnidadProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension LoteGanaderoEntityQuerySortThenBy
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QSortThenBy> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByCantidadAnimales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadAnimales', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByCantidadAnimalesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadAnimales', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByDatosEspecificosJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByDatosEspecificosJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datosEspecificosJson', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEdadPromedioMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadPromedioMeses', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEdadPromedioMesesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadPromedioMeses', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByEstaActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estaActivo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaCierreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCierre', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombreEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombreEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEspecie', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombreProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNombreProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByObjetivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByObjetivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetivo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoMaximoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMaximo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoMinimoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoMinimo', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByPesoPromedioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoPromedio', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByProduccionDiariaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'produccionDiaria', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByRazaPredominante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razaPredominante', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByRazaPredominanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'razaPredominante', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsable', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByTipoProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByTipoProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUbicacionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUbicacionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacionId', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUnidadProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUnidadProduccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadProduccion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUsuarioActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUsuarioActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioActualizacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUsuarioCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUsuarioCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioCreacion', Sort.desc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension LoteGanaderoEntityQueryWhereDistinct
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct> {
  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByAnimalIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalIds');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByCantidadAnimales() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cantidadAnimales');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByDatosEspecificosJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datosEspecificosJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByEdadPromedioMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'edadPromedioMeses');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'especie');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByEstaActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estaActivo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByEtiquetas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etiquetas');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByFechaCierre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCierre');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByNombre({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByNombreEspecie({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEspecie',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByNombreProduccion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreProduccion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByNotas({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notas', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByObjetivo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objetivo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByPesoMaximo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoMaximo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByPesoMinimo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoMinimo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByPesoPromedio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoPromedio');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByProduccionDiaria() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'produccionDiaria');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByRazaPredominante({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'razaPredominante',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByResponsable({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsable', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByTipoProduccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoProduccion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByUbicacionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ubicacionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByUnidadProduccion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unidadProduccion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByUsuarioActualizacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioActualizacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByUsuarioCreacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioCreacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension LoteGanaderoEntityQueryProperty
    on QueryBuilder<LoteGanaderoEntity, LoteGanaderoEntity, QQueryProperty> {
  QueryBuilder<LoteGanaderoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoteGanaderoEntity, bool, QQueryOperations> activoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, List<String>, QQueryOperations>
      animalIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalIds');
    });
  }

  QueryBuilder<LoteGanaderoEntity, int, QQueryOperations>
      cantidadAnimalesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantidadAnimales');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      datosEspecificosJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datosEspecificosJson');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, int?, QQueryOperations>
      edadPromedioMesesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'edadPromedioMeses');
    });
  }

  QueryBuilder<LoteGanaderoEntity, EspecieLote, QQueryOperations>
      especieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'especie');
    });
  }

  QueryBuilder<LoteGanaderoEntity, bool, QQueryOperations>
      estaActivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estaActivo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, List<String>, QQueryOperations>
      etiquetasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etiquetas');
    });
  }

  QueryBuilder<LoteGanaderoEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, DateTime?, QQueryOperations>
      fechaCierreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCierre');
    });
  }

  QueryBuilder<LoteGanaderoEntity, DateTime?, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, DateTime?, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<LoteGanaderoEntity, List<IsarCambioLote>, QQueryOperations>
      historicoCambiosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'historicoCambios');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String, QQueryOperations>
      nombreEspecieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEspecie');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String, QQueryOperations>
      nombreProduccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreProduccion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations> notasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notas');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      objetivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objetivo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, double?, QQueryOperations>
      pesoMaximoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoMaximo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, double?, QQueryOperations>
      pesoMinimoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoMinimo');
    });
  }

  QueryBuilder<LoteGanaderoEntity, double?, QQueryOperations>
      pesoPromedioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoPromedio');
    });
  }

  QueryBuilder<LoteGanaderoEntity, double?, QQueryOperations>
      produccionDiariaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'produccionDiaria');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      razaPredominanteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'razaPredominante');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      responsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsable');
    });
  }

  QueryBuilder<LoteGanaderoEntity, TipoProduccion, QQueryOperations>
      tipoProduccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoProduccion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      ubicacionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ubicacionId');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      unidadProduccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unidadProduccion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      usuarioActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioActualizacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations>
      usuarioCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioCreacion');
    });
  }

  QueryBuilder<LoteGanaderoEntity, String?, QQueryOperations> uuidProperty() {
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
