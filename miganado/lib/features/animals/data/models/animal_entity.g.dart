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
    r'categoria': PropertySchema(
      id: 0,
      name: r'categoria',
      type: IsarType.byte,
      enumMap: _AnimalEntitycategoriaEnumValueMap,
    ),
    r'categoriaDescripcion': PropertySchema(
      id: 1,
      name: r'categoriaDescripcion',
      type: IsarType.string,
    ),
    r'categoriaIcon': PropertySchema(
      id: 2,
      name: r'categoriaIcon',
      type: IsarType.string,
    ),
    r'desparasitado': PropertySchema(
      id: 3,
      name: r'desparasitado',
      type: IsarType.bool,
    ),
    r'edadMeses': PropertySchema(
      id: 4,
      name: r'edadMeses',
      type: IsarType.long,
    ),
    r'esCastrado': PropertySchema(
      id: 5,
      name: r'esCastrado',
      type: IsarType.bool,
    ),
    r'especie': PropertySchema(
      id: 6,
      name: r'especie',
      type: IsarType.byte,
      enumMap: _AnimalEntityespecieEnumValueMap,
    ),
    r'estadoReproductivo': PropertySchema(
      id: 7,
      name: r'estadoReproductivo',
      type: IsarType.byte,
      enumMap: _AnimalEntityestadoReproductivoEnumValueMap,
    ),
    r'etapa': PropertySchema(
      id: 8,
      name: r'etapa',
      type: IsarType.byte,
      enumMap: _AnimalEntityetapaEnumValueMap,
    ),
    r'etapaDescripcion': PropertySchema(
      id: 9,
      name: r'etapaDescripcion',
      type: IsarType.string,
    ),
    r'etapaIcon': PropertySchema(
      id: 10,
      name: r'etapaIcon',
      type: IsarType.string,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 11,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaCreacion': PropertySchema(
      id: 12,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaNacimiento': PropertySchema(
      id: 13,
      name: r'fechaNacimiento',
      type: IsarType.dateTime,
    ),
    r'fechaSincronizacion': PropertySchema(
      id: 14,
      name: r'fechaSincronizacion',
      type: IsarType.dateTime,
    ),
    r'fechaUltimaVacuna': PropertySchema(
      id: 15,
      name: r'fechaUltimaVacuna',
      type: IsarType.dateTime,
    ),
    r'fechaUltimoDesparasitante': PropertySchema(
      id: 16,
      name: r'fechaUltimoDesparasitante',
      type: IsarType.dateTime,
    ),
    r'fechaUltimoPesaje': PropertySchema(
      id: 17,
      name: r'fechaUltimoPesaje',
      type: IsarType.dateTime,
    ),
    r'fechaVitaminas': PropertySchema(
      id: 18,
      name: r'fechaVitaminas',
      type: IsarType.dateTime,
    ),
    r'hashContenido': PropertySchema(
      id: 19,
      name: r'hashContenido',
      type: IsarType.string,
    ),
    r'idRemoto': PropertySchema(
      id: 20,
      name: r'idRemoto',
      type: IsarType.string,
    ),
    r'nombrePersonalizado': PropertySchema(
      id: 21,
      name: r'nombrePersonalizado',
      type: IsarType.string,
    ),
    r'notas': PropertySchema(
      id: 22,
      name: r'notas',
      type: IsarType.string,
    ),
    r'numeroArete': PropertySchema(
      id: 23,
      name: r'numeroArete',
      type: IsarType.string,
    ),
    r'observaciones': PropertySchema(
      id: 24,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'pesoActual': PropertySchema(
      id: 25,
      name: r'pesoActual',
      type: IsarType.double,
    ),
    r'precioCompra': PropertySchema(
      id: 26,
      name: r'precioCompra',
      type: IsarType.double,
    ),
    r'precioVenta': PropertySchema(
      id: 27,
      name: r'precioVenta',
      type: IsarType.double,
    ),
    r'raza': PropertySchema(
      id: 28,
      name: r'raza',
      type: IsarType.string,
    ),
    r'sexo': PropertySchema(
      id: 29,
      name: r'sexo',
      type: IsarType.byte,
      enumMap: _AnimalEntitysexoEnumValueMap,
    ),
    r'sincronizado': PropertySchema(
      id: 30,
      name: r'sincronizado',
      type: IsarType.bool,
    ),
    r'tieneVitaminas': PropertySchema(
      id: 31,
      name: r'tieneVitaminas',
      type: IsarType.bool,
    ),
    r'tipoDesparasitante': PropertySchema(
      id: 32,
      name: r'tipoDesparasitante',
      type: IsarType.string,
    ),
    r'tipoVacuna': PropertySchema(
      id: 33,
      name: r'tipoVacuna',
      type: IsarType.string,
    ),
    r'ubicacion': PropertySchema(
      id: 34,
      name: r'ubicacion',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 35,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'vacunado': PropertySchema(
      id: 36,
      name: r'vacunado',
      type: IsarType.bool,
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
    r'numeroArete': IndexSchema(
      id: -8256879192067858098,
      name: r'numeroArete',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'numeroArete',
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
  bytesCount += 3 + object.categoriaDescripcion.length * 3;
  bytesCount += 3 + object.categoriaIcon.length * 3;
  bytesCount += 3 + object.etapaDescripcion.length * 3;
  bytesCount += 3 + object.etapaIcon.length * 3;
  {
    final value = object.hashContenido;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idRemoto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nombrePersonalizado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notas;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.numeroArete.length * 3;
  {
    final value = object.observaciones;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.raza.length * 3;
  {
    final value = object.tipoDesparasitante;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tipoVacuna;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ubicacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _animalEntitySerialize(
  AnimalEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.categoria.index);
  writer.writeString(offsets[1], object.categoriaDescripcion);
  writer.writeString(offsets[2], object.categoriaIcon);
  writer.writeBool(offsets[3], object.desparasitado);
  writer.writeLong(offsets[4], object.edadMeses);
  writer.writeBool(offsets[5], object.esCastrado);
  writer.writeByte(offsets[6], object.especie.index);
  writer.writeByte(offsets[7], object.estadoReproductivo.index);
  writer.writeByte(offsets[8], object.etapa.index);
  writer.writeString(offsets[9], object.etapaDescripcion);
  writer.writeString(offsets[10], object.etapaIcon);
  writer.writeDateTime(offsets[11], object.fechaActualizacion);
  writer.writeDateTime(offsets[12], object.fechaCreacion);
  writer.writeDateTime(offsets[13], object.fechaNacimiento);
  writer.writeDateTime(offsets[14], object.fechaSincronizacion);
  writer.writeDateTime(offsets[15], object.fechaUltimaVacuna);
  writer.writeDateTime(offsets[16], object.fechaUltimoDesparasitante);
  writer.writeDateTime(offsets[17], object.fechaUltimoPesaje);
  writer.writeDateTime(offsets[18], object.fechaVitaminas);
  writer.writeString(offsets[19], object.hashContenido);
  writer.writeString(offsets[20], object.idRemoto);
  writer.writeString(offsets[21], object.nombrePersonalizado);
  writer.writeString(offsets[22], object.notas);
  writer.writeString(offsets[23], object.numeroArete);
  writer.writeString(offsets[24], object.observaciones);
  writer.writeDouble(offsets[25], object.pesoActual);
  writer.writeDouble(offsets[26], object.precioCompra);
  writer.writeDouble(offsets[27], object.precioVenta);
  writer.writeString(offsets[28], object.raza);
  writer.writeByte(offsets[29], object.sexo.index);
  writer.writeBool(offsets[30], object.sincronizado);
  writer.writeBool(offsets[31], object.tieneVitaminas);
  writer.writeString(offsets[32], object.tipoDesparasitante);
  writer.writeString(offsets[33], object.tipoVacuna);
  writer.writeString(offsets[34], object.ubicacion);
  writer.writeString(offsets[35], object.uuid);
  writer.writeBool(offsets[36], object.vacunado);
}

AnimalEntity _animalEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnimalEntity(
    categoria:
        _AnimalEntitycategoriaValueEnumMap[reader.readByteOrNull(offsets[0])] ??
            Categoria.vaca,
    desparasitado: reader.readBoolOrNull(offsets[3]) ?? false,
    edadMeses: reader.readLong(offsets[4]),
    esCastrado: reader.readBoolOrNull(offsets[5]) ?? false,
    especie:
        _AnimalEntityespecieValueEnumMap[reader.readByteOrNull(offsets[6])] ??
            Especie.bovino,
    estadoReproductivo: _AnimalEntityestadoReproductivoValueEnumMap[
            reader.readByteOrNull(offsets[7])] ??
        EstadoReproductivo.no_definido,
    fechaNacimiento: reader.readDateTime(offsets[13]),
    fechaUltimaVacuna: reader.readDateTimeOrNull(offsets[15]),
    fechaUltimoDesparasitante: reader.readDateTimeOrNull(offsets[16]),
    fechaVitaminas: reader.readDateTimeOrNull(offsets[18]),
    nombrePersonalizado: reader.readStringOrNull(offsets[21]),
    notas: reader.readStringOrNull(offsets[22]),
    numeroArete: reader.readString(offsets[23]),
    precioCompra: reader.readDoubleOrNull(offsets[26]),
    precioVenta: reader.readDoubleOrNull(offsets[27]),
    raza: reader.readString(offsets[28]),
    sexo: _AnimalEntitysexoValueEnumMap[reader.readByteOrNull(offsets[29])] ??
        Sexo.macho,
    tieneVitaminas: reader.readBoolOrNull(offsets[31]) ?? false,
    tipoDesparasitante: reader.readStringOrNull(offsets[32]),
    tipoVacuna: reader.readStringOrNull(offsets[33]),
    ubicacion: reader.readStringOrNull(offsets[34]),
    vacunado: reader.readBoolOrNull(offsets[36]) ?? false,
  );
  object.etapa =
      _AnimalEntityetapaValueEnumMap[reader.readByteOrNull(offsets[8])] ??
          EtapaVida.becerro;
  object.fechaActualizacion = reader.readDateTime(offsets[11]);
  object.fechaCreacion = reader.readDateTime(offsets[12]);
  object.fechaSincronizacion = reader.readDateTimeOrNull(offsets[14]);
  object.fechaUltimoPesaje = reader.readDateTimeOrNull(offsets[17]);
  object.hashContenido = reader.readStringOrNull(offsets[19]);
  object.id = id;
  object.idRemoto = reader.readStringOrNull(offsets[20]);
  object.observaciones = reader.readStringOrNull(offsets[24]);
  object.pesoActual = reader.readDoubleOrNull(offsets[25]);
  object.sincronizado = reader.readBool(offsets[30]);
  object.uuid = reader.readString(offsets[35]);
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
      return (_AnimalEntitycategoriaValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Categoria.vaca) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 6:
      return (_AnimalEntityespecieValueEnumMap[reader.readByteOrNull(offset)] ??
          Especie.bovino) as P;
    case 7:
      return (_AnimalEntityestadoReproductivoValueEnumMap[
              reader.readByteOrNull(offset)] ??
          EstadoReproductivo.no_definido) as P;
    case 8:
      return (_AnimalEntityetapaValueEnumMap[reader.readByteOrNull(offset)] ??
          EtapaVida.becerro) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 18:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (_AnimalEntitysexoValueEnumMap[reader.readByteOrNull(offset)] ??
          Sexo.macho) as P;
    case 30:
      return (reader.readBool(offset)) as P;
    case 31:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AnimalEntitycategoriaEnumValueMap = {
  'vaca': 0,
  'caballo': 1,
  'burro': 2,
  'mula': 3,
};
const _AnimalEntitycategoriaValueEnumMap = {
  0: Categoria.vaca,
  1: Categoria.caballo,
  2: Categoria.burro,
  3: Categoria.mula,
};
const _AnimalEntityespecieEnumValueMap = {
  'bovino': 0,
  'equino': 1,
};
const _AnimalEntityespecieValueEnumMap = {
  0: Especie.bovino,
  1: Especie.equino,
};
const _AnimalEntityestadoReproductivoEnumValueMap = {
  'prenada': 0,
  'lactando': 1,
  'seca': 2,
  'no_definido': 3,
};
const _AnimalEntityestadoReproductivoValueEnumMap = {
  0: EstadoReproductivo.prenada,
  1: EstadoReproductivo.lactando,
  2: EstadoReproductivo.seca,
  3: EstadoReproductivo.no_definido,
};
const _AnimalEntityetapaEnumValueMap = {
  'becerro': 0,
  'becerra': 1,
  'vaquilla': 2,
  'torete': 3,
  'novillo': 4,
  'vaca': 5,
  'toro': 6,
  'potro': 7,
  'adulto': 8,
};
const _AnimalEntityetapaValueEnumMap = {
  0: EtapaVida.becerro,
  1: EtapaVida.becerra,
  2: EtapaVida.vaquilla,
  3: EtapaVida.torete,
  4: EtapaVida.novillo,
  5: EtapaVida.vaca,
  6: EtapaVida.toro,
  7: EtapaVida.potro,
  8: EtapaVida.adulto,
};
const _AnimalEntitysexoEnumValueMap = {
  'macho': 0,
  'hembra': 1,
};
const _AnimalEntitysexoValueEnumMap = {
  0: Sexo.macho,
  1: Sexo.hembra,
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
      numeroAreteEqualTo(String numeroArete) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'numeroArete',
        value: [numeroArete],
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterWhereClause>
      numeroAreteNotEqualTo(String numeroArete) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'numeroArete',
              lower: [],
              upper: [numeroArete],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'numeroArete',
              lower: [numeroArete],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'numeroArete',
              lower: [numeroArete],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'numeroArete',
              lower: [],
              upper: [numeroArete],
              includeUpper: false,
            ));
      }
    });
  }
}

extension AnimalEntityQueryFilter
    on QueryBuilder<AnimalEntity, AnimalEntity, QFilterCondition> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaEqualTo(Categoria value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaGreaterThan(
    Categoria value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaLessThan(
    Categoria value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoria',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaBetween(
    Categoria lower,
    Categoria upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      categoriaIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      desparasitadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desparasitado',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      edadMesesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edadMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      edadMesesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edadMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      edadMesesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edadMeses',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      edadMesesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edadMeses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      esCastradoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esCastrado',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      especieEqualTo(Especie value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especie',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      especieGreaterThan(
    Especie value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      especieLessThan(
    Especie value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      especieBetween(
    Especie lower,
    Especie upper, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      estadoReproductivoEqualTo(EstadoReproductivo value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estadoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      estadoReproductivoGreaterThan(
    EstadoReproductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estadoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      estadoReproductivoLessThan(
    EstadoReproductivo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estadoReproductivo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      estadoReproductivoBetween(
    EstadoReproductivo lower,
    EstadoReproductivo upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estadoReproductivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> etapaEqualTo(
      EtapaVida value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etapa',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaGreaterThan(
    EtapaVida value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etapa',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> etapaLessThan(
    EtapaVida value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etapa',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> etapaBetween(
    EtapaVida lower,
    EtapaVida upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etapa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etapaDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'etapaDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'etapaDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etapaDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'etapaDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etapaIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'etapaIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'etapaIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etapaIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      etapaIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'etapaIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaActualizacionGreaterThan(
    DateTime value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaActualizacionLessThan(
    DateTime value, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaActualizacionBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaNacimientoEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaNacimientoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaNacimientoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaNacimientoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaNacimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaSincronizacion',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaSincronizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionGreaterThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionLessThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaSincronizacionBetween(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaUltimaVacuna',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaUltimaVacuna',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaUltimaVacuna',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaUltimaVacuna',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaUltimaVacuna',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimaVacunaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaUltimaVacuna',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaUltimoDesparasitante',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaUltimoDesparasitante',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaUltimoDesparasitante',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaUltimoDesparasitante',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaUltimoDesparasitante',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoDesparasitanteBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaUltimoDesparasitante',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaUltimoPesaje',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaUltimoPesaje',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaUltimoPesaje',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaUltimoPesaje',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaUltimoPesaje',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaUltimoPesajeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaUltimoPesaje',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaVitaminas',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaVitaminas',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaVitaminas',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaVitaminas',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaVitaminas',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      fechaVitaminasBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaVitaminas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashContenido',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashContenido',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashContenido',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hashContenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hashContenido',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashContenido',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      hashContenidoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hashContenido',
        value: '',
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
      idRemotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idRemoto',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idRemoto',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idRemoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idRemoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idRemoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idRemoto',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      idRemotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idRemoto',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombrePersonalizado',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombrePersonalizado',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombrePersonalizado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombrePersonalizado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombrePersonalizado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombrePersonalizado',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      nombrePersonalizadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombrePersonalizado',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasEqualTo(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasLessThan(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasBetween(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasEndsWith(
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> notasMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      notasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroArete',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numeroArete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numeroArete',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroArete',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      numeroAreteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numeroArete',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observaciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pesoActual',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pesoActual',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesoActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesoActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesoActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      pesoActualBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesoActual',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precioCompra',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precioCompra',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioCompraBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precioCompra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precioVenta',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precioVenta',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      precioVentaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precioVenta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      razaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'raza',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      razaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'raza',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> razaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'raza',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      razaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'raza',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      razaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'raza',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexoEqualTo(
      Sexo value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sexo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      sexoGreaterThan(
    Sexo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sexo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexoLessThan(
    Sexo value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sexo',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition> sexoBetween(
    Sexo lower,
    Sexo upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sexo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      sincronizadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sincronizado',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tieneVitaminasEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tieneVitaminas',
        value: value,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipoDesparasitante',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipoDesparasitante',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoDesparasitante',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoDesparasitante',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoDesparasitante',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoDesparasitante',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoDesparasitanteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoDesparasitante',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipoVacuna',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipoVacuna',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoVacuna',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoVacuna',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoVacuna',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoVacuna',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      tipoVacunaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoVacuna',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ubicacion',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ubicacion',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ubicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ubicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ubicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterFilterCondition>
      ubicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ubicacion',
        value: '',
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
      vacunadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vacunado',
        value: value,
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
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCategoriaDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaDescripcion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCategoriaDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaDescripcion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByCategoriaIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaIcon', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByCategoriaIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaIcon', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByDesparasitado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desparasitado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByDesparasitadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desparasitado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEdadMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadMeses', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEdadMesesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadMeses', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEsCastrado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esCastrado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEsCastradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esCastrado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEstadoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estadoReproductivo', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEstadoReproductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estadoReproductivo', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEtapa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapa', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEtapaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapa', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEtapaDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaDescripcion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByEtapaDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaDescripcion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEtapaIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaIcon', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByEtapaIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaIcon', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaNacimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimaVacuna() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaVacuna', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimaVacunaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaVacuna', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimoDesparasitante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoDesparasitante', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimoDesparasitanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoDesparasitante', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimoPesaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoPesaje', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaUltimoPesajeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoPesaje', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVitaminas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByFechaVitaminasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVitaminas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByHashContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByHashContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByIdRemoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByIdRemotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByNombrePersonalizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePersonalizado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByNombrePersonalizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePersonalizado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByNumeroArete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroArete', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByNumeroAreteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroArete', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByPesoActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoActual', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByPesoActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoActual', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioCompra', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByPrecioCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioCompra', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioVenta', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByPrecioVentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioVenta', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByRaza() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'raza', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByRazaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'raza', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySexo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySexoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByTieneVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tieneVitaminas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByTieneVitaminasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tieneVitaminas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByTipoDesparasitante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDesparasitante', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByTipoDesparasitanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDesparasitante', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByTipoVacuna() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoVacuna', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      sortByTipoVacunaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoVacuna', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByUbicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByUbicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacion', Sort.desc);
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByVacunado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacunado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> sortByVacunadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacunado', Sort.desc);
    });
  }
}

extension AnimalEntityQuerySortThenBy
    on QueryBuilder<AnimalEntity, AnimalEntity, QSortThenBy> {
  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCategoriaDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaDescripcion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCategoriaDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaDescripcion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByCategoriaIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaIcon', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByCategoriaIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaIcon', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByDesparasitado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desparasitado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByDesparasitadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desparasitado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEdadMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadMeses', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEdadMesesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edadMeses', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEsCastrado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esCastrado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEsCastradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esCastrado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEspecieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'especie', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEstadoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estadoReproductivo', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEstadoReproductivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estadoReproductivo', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEtapa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapa', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEtapaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapa', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEtapaDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaDescripcion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByEtapaDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaDescripcion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEtapaIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaIcon', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByEtapaIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etapaIcon', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaNacimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaSincronizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaSincronizacion', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimaVacuna() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaVacuna', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimaVacunaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaVacuna', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimoDesparasitante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoDesparasitante', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimoDesparasitanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoDesparasitante', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimoPesaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoPesaje', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaUltimoPesajeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimoPesaje', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVitaminas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByFechaVitaminasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVitaminas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByHashContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByHashContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashContenido', Sort.desc);
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByIdRemoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByIdRemotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idRemoto', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByNombrePersonalizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePersonalizado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByNombrePersonalizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePersonalizado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByNumeroArete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroArete', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByNumeroAreteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroArete', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByPesoActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoActual', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByPesoActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pesoActual', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioCompra', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByPrecioCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioCompra', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioVenta', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByPrecioVentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioVenta', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByRaza() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'raza', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByRazaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'raza', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySexo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySexoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenBySincronizadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sincronizado', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByTieneVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tieneVitaminas', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByTieneVitaminasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tieneVitaminas', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByTipoDesparasitante() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDesparasitante', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByTipoDesparasitanteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDesparasitante', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByTipoVacuna() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoVacuna', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy>
      thenByTipoVacunaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoVacuna', Sort.desc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByUbicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacion', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByUbicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubicacion', Sort.desc);
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

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByVacunado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacunado', Sort.asc);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QAfterSortBy> thenByVacunadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacunado', Sort.desc);
    });
  }
}

extension AnimalEntityQueryWhereDistinct
    on QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> {
  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoria');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByCategoriaDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByCategoriaIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaIcon',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByDesparasitado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'desparasitado');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEdadMeses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'edadMeses');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEsCastrado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esCastrado');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEspecie() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'especie');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByEstadoReproductivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estadoReproductivo');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEtapa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etapa');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByEtapaDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etapaDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByEtapaIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etapaIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaNacimiento');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaSincronizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaSincronizacion');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaUltimaVacuna() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaUltimaVacuna');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaUltimoDesparasitante() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaUltimoDesparasitante');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaUltimoPesaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaUltimoPesaje');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByFechaVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaVitaminas');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByHashContenido(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashContenido',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByIdRemoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idRemoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByNombrePersonalizado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombrePersonalizado',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByNotas(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notas', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByNumeroArete(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroArete', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByObservaciones(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByPesoActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pesoActual');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precioCompra');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precioVenta');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByRaza(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'raza', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySexo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sexo');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctBySincronizado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sincronizado');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByTieneVitaminas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tieneVitaminas');
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct>
      distinctByTipoDesparasitante({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoDesparasitante',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByTipoVacuna(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoVacuna', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByUbicacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ubicacion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnimalEntity, AnimalEntity, QDistinct> distinctByVacunado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vacunado');
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

  QueryBuilder<AnimalEntity, Categoria, QQueryOperations> categoriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoria');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations>
      categoriaDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaDescripcion');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> categoriaIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaIcon');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> desparasitadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'desparasitado');
    });
  }

  QueryBuilder<AnimalEntity, int, QQueryOperations> edadMesesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'edadMeses');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> esCastradoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esCastrado');
    });
  }

  QueryBuilder<AnimalEntity, Especie, QQueryOperations> especieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'especie');
    });
  }

  QueryBuilder<AnimalEntity, EstadoReproductivo, QQueryOperations>
      estadoReproductivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estadoReproductivo');
    });
  }

  QueryBuilder<AnimalEntity, EtapaVida, QQueryOperations> etapaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etapa');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations>
      etapaDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etapaDescripcion');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> etapaIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etapaIcon');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<AnimalEntity, DateTime, QQueryOperations>
      fechaNacimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaNacimiento');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      fechaSincronizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaSincronizacion');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      fechaUltimaVacunaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaUltimaVacuna');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      fechaUltimoDesparasitanteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaUltimoDesparasitante');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      fechaUltimoPesajeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaUltimoPesaje');
    });
  }

  QueryBuilder<AnimalEntity, DateTime?, QQueryOperations>
      fechaVitaminasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaVitaminas');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations>
      hashContenidoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashContenido');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> idRemotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idRemoto');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations>
      nombrePersonalizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombrePersonalizado');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> notasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notas');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> numeroAreteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroArete');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations> pesoActualProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesoActual');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations> precioCompraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precioCompra');
    });
  }

  QueryBuilder<AnimalEntity, double?, QQueryOperations> precioVentaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precioVenta');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> razaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'raza');
    });
  }

  QueryBuilder<AnimalEntity, Sexo, QQueryOperations> sexoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sexo');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> sincronizadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sincronizado');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> tieneVitaminasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tieneVitaminas');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations>
      tipoDesparasitanteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoDesparasitante');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> tipoVacunaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoVacuna');
    });
  }

  QueryBuilder<AnimalEntity, String?, QQueryOperations> ubicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ubicacion');
    });
  }

  QueryBuilder<AnimalEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<AnimalEntity, bool, QQueryOperations> vacunadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vacunado');
    });
  }
}
