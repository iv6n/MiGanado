// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tratamiento_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTratamientoEntityCollection on Isar {
  IsarCollection<TratamientoEntity> get tratamientoEntitys => this.collection();
}

const TratamientoEntitySchema = CollectionSchema(
  name: r'TratamientoEntity',
  id: 3131384977625114446,
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
    r'brand': PropertySchema(
      id: 2,
      name: r'brand',
      type: IsarType.string,
    ),
    r'costoMedicina': PropertySchema(
      id: 3,
      name: r'costoMedicina',
      type: IsarType.double,
    ),
    r'costoTotal': PropertySchema(
      id: 4,
      name: r'costoTotal',
      type: IsarType.double,
    ),
    r'costoVeterinario': PropertySchema(
      id: 5,
      name: r'costoVeterinario',
      type: IsarType.double,
    ),
    r'diagnosedBy': PropertySchema(
      id: 6,
      name: r'diagnosedBy',
      type: IsarType.string,
    ),
    r'diagnosticadoPor': PropertySchema(
      id: 7,
      name: r'diagnosticadoPor',
      type: IsarType.string,
    ),
    r'diagnosticoFinal': PropertySchema(
      id: 8,
      name: r'diagnosticoFinal',
      type: IsarType.string,
    ),
    r'diagnosticoPrevio': PropertySchema(
      id: 9,
      name: r'diagnosticoPrevio',
      type: IsarType.string,
    ),
    r'dose': PropertySchema(
      id: 10,
      name: r'dose',
      type: IsarType.string,
    ),
    r'dosis': PropertySchema(
      id: 11,
      name: r'dosis',
      type: IsarType.string,
    ),
    r'duracionDias': PropertySchema(
      id: 12,
      name: r'duracionDias',
      type: IsarType.long,
    ),
    r'durationDays': PropertySchema(
      id: 13,
      name: r'durationDays',
      type: IsarType.long,
    ),
    r'efectosSecundarios': PropertySchema(
      id: 14,
      name: r'efectosSecundarios',
      type: IsarType.string,
    ),
    r'endDate': PropertySchema(
      id: 15,
      name: r'endDate',
      type: IsarType.dateTime,
    ),
    r'fechaActualizacion': PropertySchema(
      id: 16,
      name: r'fechaActualizacion',
      type: IsarType.dateTime,
    ),
    r'fechaFin': PropertySchema(
      id: 17,
      name: r'fechaFin',
      type: IsarType.dateTime,
    ),
    r'fechaInicio': PropertySchema(
      id: 18,
      name: r'fechaInicio',
      type: IsarType.dateTime,
    ),
    r'fechaRegistro': PropertySchema(
      id: 19,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'finalDiagnosis': PropertySchema(
      id: 20,
      name: r'finalDiagnosis',
      type: IsarType.string,
    ),
    r'frecuencia': PropertySchema(
      id: 21,
      name: r'frecuencia',
      type: IsarType.string,
    ),
    r'frequency': PropertySchema(
      id: 22,
      name: r'frequency',
      type: IsarType.string,
    ),
    r'lot': PropertySchema(
      id: 23,
      name: r'lot',
      type: IsarType.string,
    ),
    r'lote': PropertySchema(
      id: 24,
      name: r'lote',
      type: IsarType.string,
    ),
    r'marca': PropertySchema(
      id: 25,
      name: r'marca',
      type: IsarType.string,
    ),
    r'medicamento': PropertySchema(
      id: 26,
      name: r'medicamento',
      type: IsarType.string,
    ),
    r'medicine': PropertySchema(
      id: 27,
      name: r'medicine',
      type: IsarType.string,
    ),
    r'medicineCost': PropertySchema(
      id: 28,
      name: r'medicineCost',
      type: IsarType.double,
    ),
    r'motivo': PropertySchema(
      id: 29,
      name: r'motivo',
      type: IsarType.string,
    ),
    r'notas': PropertySchema(
      id: 30,
      name: r'notas',
      type: IsarType.string,
    ),
    r'notes': PropertySchema(
      id: 31,
      name: r'notes',
      type: IsarType.string,
    ),
    r'observaciones': PropertySchema(
      id: 32,
      name: r'observaciones',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 33,
      name: r'observations',
      type: IsarType.string,
    ),
    r'previousDiagnosis': PropertySchema(
      id: 34,
      name: r'previousDiagnosis',
      type: IsarType.string,
    ),
    r'reason': PropertySchema(
      id: 35,
      name: r'reason',
      type: IsarType.string,
    ),
    r'registeredBy': PropertySchema(
      id: 36,
      name: r'registeredBy',
      type: IsarType.string,
    ),
    r'registradoPor': PropertySchema(
      id: 37,
      name: r'registradoPor',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 38,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'result': PropertySchema(
      id: 39,
      name: r'result',
      type: IsarType.string,
    ),
    r'resultado': PropertySchema(
      id: 40,
      name: r'resultado',
      type: IsarType.string,
    ),
    r'sideEffects': PropertySchema(
      id: 41,
      name: r'sideEffects',
      type: IsarType.string,
    ),
    r'startDate': PropertySchema(
      id: 42,
      name: r'startDate',
      type: IsarType.dateTime,
    ),
    r'totalCost': PropertySchema(
      id: 43,
      name: r'totalCost',
      type: IsarType.double,
    ),
    r'updateDate': PropertySchema(
      id: 44,
      name: r'updateDate',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 45,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'veterinaryCost': PropertySchema(
      id: 46,
      name: r'veterinaryCost',
      type: IsarType.double,
    ),
    r'viaAplicacion': PropertySchema(
      id: 47,
      name: r'viaAplicacion',
      type: IsarType.string,
    )
  },
  estimateSize: _tratamientoEntityEstimateSize,
  serialize: _tratamientoEntitySerialize,
  deserialize: _tratamientoEntityDeserialize,
  deserializeProp: _tratamientoEntityDeserializeProp,
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
  getId: _tratamientoEntityGetId,
  getLinks: _tratamientoEntityGetLinks,
  attach: _tratamientoEntityAttach,
  version: '3.1.0+1',
);

int _tratamientoEntityEstimateSize(
  TratamientoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.administrationRoute.length * 3;
  bytesCount += 3 + object.animalUuid.length * 3;
  {
    final value = object.brand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diagnosedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diagnosticadoPor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diagnosticoFinal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diagnosticoPrevio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dose.length * 3;
  bytesCount += 3 + object.dosis.length * 3;
  {
    final value = object.efectosSecundarios;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.finalDiagnosis;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frecuencia;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.frequency.length * 3;
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
  bytesCount += 3 + object.medicamento.length * 3;
  bytesCount += 3 + object.medicine.length * 3;
  bytesCount += 3 + object.motivo.length * 3;
  {
    final value = object.notas;
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
    final value = object.previousDiagnosis;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.reason.length * 3;
  bytesCount += 3 + object.registeredBy.length * 3;
  bytesCount += 3 + object.registradoPor.length * 3;
  {
    final value = object.result;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resultado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sideEffects;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  bytesCount += 3 + object.viaAplicacion.length * 3;
  return bytesCount;
}

void _tratamientoEntitySerialize(
  TratamientoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.administrationRoute);
  writer.writeString(offsets[1], object.animalUuid);
  writer.writeString(offsets[2], object.brand);
  writer.writeDouble(offsets[3], object.costoMedicina);
  writer.writeDouble(offsets[4], object.costoTotal);
  writer.writeDouble(offsets[5], object.costoVeterinario);
  writer.writeString(offsets[6], object.diagnosedBy);
  writer.writeString(offsets[7], object.diagnosticadoPor);
  writer.writeString(offsets[8], object.diagnosticoFinal);
  writer.writeString(offsets[9], object.diagnosticoPrevio);
  writer.writeString(offsets[10], object.dose);
  writer.writeString(offsets[11], object.dosis);
  writer.writeLong(offsets[12], object.duracionDias);
  writer.writeLong(offsets[13], object.durationDays);
  writer.writeString(offsets[14], object.efectosSecundarios);
  writer.writeDateTime(offsets[15], object.endDate);
  writer.writeDateTime(offsets[16], object.fechaActualizacion);
  writer.writeDateTime(offsets[17], object.fechaFin);
  writer.writeDateTime(offsets[18], object.fechaInicio);
  writer.writeDateTime(offsets[19], object.fechaRegistro);
  writer.writeString(offsets[20], object.finalDiagnosis);
  writer.writeString(offsets[21], object.frecuencia);
  writer.writeString(offsets[22], object.frequency);
  writer.writeString(offsets[23], object.lot);
  writer.writeString(offsets[24], object.lote);
  writer.writeString(offsets[25], object.marca);
  writer.writeString(offsets[26], object.medicamento);
  writer.writeString(offsets[27], object.medicine);
  writer.writeDouble(offsets[28], object.medicineCost);
  writer.writeString(offsets[29], object.motivo);
  writer.writeString(offsets[30], object.notas);
  writer.writeString(offsets[31], object.notes);
  writer.writeString(offsets[32], object.observaciones);
  writer.writeString(offsets[33], object.observations);
  writer.writeString(offsets[34], object.previousDiagnosis);
  writer.writeString(offsets[35], object.reason);
  writer.writeString(offsets[36], object.registeredBy);
  writer.writeString(offsets[37], object.registradoPor);
  writer.writeDateTime(offsets[38], object.registrationDate);
  writer.writeString(offsets[39], object.result);
  writer.writeString(offsets[40], object.resultado);
  writer.writeString(offsets[41], object.sideEffects);
  writer.writeDateTime(offsets[42], object.startDate);
  writer.writeDouble(offsets[43], object.totalCost);
  writer.writeDateTime(offsets[44], object.updateDate);
  writer.writeString(offsets[45], object.uuid);
  writer.writeDouble(offsets[46], object.veterinaryCost);
  writer.writeString(offsets[47], object.viaAplicacion);
}

TratamientoEntity _tratamientoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TratamientoEntity(
    animalUuid: reader.readString(offsets[1]),
    costoMedicina: reader.readDoubleOrNull(offsets[3]),
    costoTotal: reader.readDoubleOrNull(offsets[4]),
    costoVeterinario: reader.readDoubleOrNull(offsets[5]),
    diagnosticadoPor: reader.readStringOrNull(offsets[7]),
    diagnosticoFinal: reader.readStringOrNull(offsets[8]),
    diagnosticoPrevio: reader.readStringOrNull(offsets[9]),
    dosis: reader.readString(offsets[11]),
    duracionDias: reader.readLong(offsets[12]),
    efectosSecundarios: reader.readStringOrNull(offsets[14]),
    fechaFin: reader.readDateTimeOrNull(offsets[17]),
    fechaInicio: reader.readDateTime(offsets[18]),
    frecuencia: reader.readStringOrNull(offsets[21]),
    lote: reader.readStringOrNull(offsets[24]),
    marca: reader.readStringOrNull(offsets[25]),
    medicamento: reader.readString(offsets[26]),
    motivo: reader.readString(offsets[29]),
    notas: reader.readStringOrNull(offsets[30]),
    observaciones: reader.readStringOrNull(offsets[32]),
    registradoPor: reader.readString(offsets[37]),
    resultado: reader.readStringOrNull(offsets[40]),
    viaAplicacion: reader.readString(offsets[47]),
  );
  object.administrationRoute = reader.readString(offsets[0]);
  object.brand = reader.readStringOrNull(offsets[2]);
  object.diagnosedBy = reader.readStringOrNull(offsets[6]);
  object.dose = reader.readString(offsets[10]);
  object.durationDays = reader.readLong(offsets[13]);
  object.endDate = reader.readDateTimeOrNull(offsets[15]);
  object.finalDiagnosis = reader.readStringOrNull(offsets[20]);
  object.frequency = reader.readString(offsets[22]);
  object.id = id;
  object.lot = reader.readStringOrNull(offsets[23]);
  object.medicine = reader.readString(offsets[27]);
  object.medicineCost = reader.readDoubleOrNull(offsets[28]);
  object.notes = reader.readStringOrNull(offsets[31]);
  object.observations = reader.readStringOrNull(offsets[33]);
  object.previousDiagnosis = reader.readStringOrNull(offsets[34]);
  object.reason = reader.readString(offsets[35]);
  object.registeredBy = reader.readString(offsets[36]);
  object.registrationDate = reader.readDateTime(offsets[38]);
  object.result = reader.readStringOrNull(offsets[39]);
  object.sideEffects = reader.readStringOrNull(offsets[41]);
  object.startDate = reader.readDateTime(offsets[42]);
  object.totalCost = reader.readDoubleOrNull(offsets[43]);
  object.updateDate = reader.readDateTimeOrNull(offsets[44]);
  object.uuid = reader.readString(offsets[45]);
  object.veterinaryCost = reader.readDoubleOrNull(offsets[46]);
  return object;
}

P _tratamientoEntityDeserializeProp<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 18:
      return (reader.readDateTime(offset)) as P;
    case 19:
      return (reader.readDateTime(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readString(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    case 29:
      return (reader.readString(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readString(offset)) as P;
    case 37:
      return (reader.readString(offset)) as P;
    case 38:
      return (reader.readDateTime(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readDateTime(offset)) as P;
    case 43:
      return (reader.readDoubleOrNull(offset)) as P;
    case 44:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 45:
      return (reader.readString(offset)) as P;
    case 46:
      return (reader.readDoubleOrNull(offset)) as P;
    case 47:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tratamientoEntityGetId(TratamientoEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _tratamientoEntityGetLinks(
    TratamientoEntity object) {
  return [];
}

void _tratamientoEntityAttach(
    IsarCollection<dynamic> col, Id id, TratamientoEntity object) {
  object.id = id;
}

extension TratamientoEntityByIndex on IsarCollection<TratamientoEntity> {
  Future<TratamientoEntity?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  TratamientoEntity? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<TratamientoEntity?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<TratamientoEntity?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(TratamientoEntity object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(TratamientoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<TratamientoEntity> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<TratamientoEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension TratamientoEntityQueryWhereSort
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QWhere> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TratamientoEntityQueryWhere
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QWhereClause> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
      uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
      animalUuidEqualTo(String animalUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'animalUuid',
        value: [animalUuid],
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterWhereClause>
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

extension TratamientoEntityQueryFilter
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QFilterCondition> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'administrationRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'administrationRoute',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      administrationRouteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'administrationRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      animalUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animalUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      animalUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animalUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      animalUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      animalUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animalUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoMedicina',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoMedicina',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoMedicina',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoMedicina',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoMedicina',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoMedicinaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoMedicina',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoTotal',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoTotal',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costoVeterinario',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costoVeterinario',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costoVeterinario',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costoVeterinario',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costoVeterinario',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      costoVeterinarioBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costoVeterinario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diagnosedBy',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diagnosedBy',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diagnosedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diagnosedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diagnosedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diagnosedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diagnosticadoPor',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diagnosticadoPor',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diagnosticadoPor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diagnosticadoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diagnosticadoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticadoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diagnosticadoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diagnosticoFinal',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diagnosticoFinal',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diagnosticoFinal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diagnosticoFinal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diagnosticoFinal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticoFinal',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoFinalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diagnosticoFinal',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diagnosticoPrevio',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diagnosticoPrevio',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diagnosticoPrevio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diagnosticoPrevio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diagnosticoPrevio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnosticoPrevio',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      diagnosticoPrevioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diagnosticoPrevio',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dose',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dose',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      doseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dose',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dosis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      dosisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      duracionDiasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duracionDias',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      duracionDiasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duracionDias',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      duracionDiasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duracionDias',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      duracionDiasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duracionDias',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      durationDaysEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationDays',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      durationDaysGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationDays',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      durationDaysLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationDays',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      durationDaysBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'efectosSecundarios',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'efectosSecundarios',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'efectosSecundarios',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'efectosSecundarios',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'efectosSecundarios',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efectosSecundarios',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      efectosSecundariosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'efectosSecundarios',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endDate',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      endDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaActualizacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaActualizacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaActualizacion',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaActualizacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaActualizacion',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaFin',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaFin',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaFinBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaFin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaInicioEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaInicioGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaInicioLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaInicioBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaInicio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaRegistroGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaRegistroLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      fechaRegistroBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finalDiagnosis',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finalDiagnosis',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalDiagnosis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'finalDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'finalDiagnosis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDiagnosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      finalDiagnosisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'finalDiagnosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frecuencia',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frecuencia',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frecuencia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frecuencia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frecuencia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frecuencia',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frecuenciaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frecuencia',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frequency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frequency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frequency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequency',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      frequencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frequency',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lot',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lot',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      lotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lot',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lote',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lote',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      loteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lote',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'marca',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      marcaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicamento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medicamento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medicamento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicamento',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicamentoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medicamento',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicine',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medicine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medicine',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicine',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medicine',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medicineCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medicineCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicineCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicineCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicineCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      medicineCostBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicineCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoEqualTo(
    String value, {
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoGreaterThan(
    String value, {
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoLessThan(
    String value, {
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoBetween(
    String lower,
    String upper, {
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motivo',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      motivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motivo',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notas',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notas',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observaciones',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observaciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observaciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observacionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observaciones',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'previousDiagnosis',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'previousDiagnosis',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'previousDiagnosis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'previousDiagnosis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'previousDiagnosis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previousDiagnosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      previousDiagnosisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'previousDiagnosis',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      reasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registeredByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registeredBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registeredByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registeredBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registeredByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registeredByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registeredBy',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registradoPor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registradoPor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registradoPorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registradoPor',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'result',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'result',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'result',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'result',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'result',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'result',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'result',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultado',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultado',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resultado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resultado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultado',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      resultadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resultado',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sideEffects',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sideEffects',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sideEffects',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sideEffects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sideEffects',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sideEffects',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      sideEffectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sideEffects',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      startDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      startDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      startDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      startDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      totalCostBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      updateDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'veterinaryCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'veterinaryCost',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'veterinaryCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'veterinaryCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'veterinaryCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      veterinaryCostBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'veterinaryCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionEqualTo(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionGreaterThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionLessThan(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionBetween(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionStartsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionEndsWith(
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

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'viaAplicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'viaAplicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterFilterCondition>
      viaAplicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'viaAplicacion',
        value: '',
      ));
    });
  }
}

extension TratamientoEntityQueryObject
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QFilterCondition> {}

extension TratamientoEntityQueryLinks
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QFilterCondition> {}

extension TratamientoEntityQuerySortBy
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QSortBy> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoMedicina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoMedicina', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoMedicinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoMedicina', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoVeterinario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoVeterinario', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByCostoVeterinarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoVeterinario', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosedBy', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosedBy', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticadoPor', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticadoPor', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticoFinal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoFinal', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticoFinalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoFinal', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticoPrevio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoPrevio', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDiagnosticoPrevioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoPrevio', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDuracionDias() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionDias', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDuracionDiasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionDias', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDurationDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationDays', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByDurationDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationDays', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByEfectosSecundarios() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosSecundarios', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByEfectosSecundariosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosSecundarios', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFinalDiagnosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDiagnosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFinalDiagnosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDiagnosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFrecuencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frecuencia', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFrecuenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frecuencia', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy> sortByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicamento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicamentoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicine', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicine', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicineCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMedicineCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMotivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivo', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByMotivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivo', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByPreviousDiagnosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousDiagnosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByPreviousDiagnosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousDiagnosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByResultado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultado', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByResultadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultado', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortBySideEffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideEffects', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortBySideEffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideEffects', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByTotalCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByVeterinaryCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinaryCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByVeterinaryCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinaryCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      sortByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension TratamientoEntityQuerySortThenBy
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QSortThenBy> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByAdministrationRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByAdministrationRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'administrationRoute', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByAnimalUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByAnimalUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animalUuid', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoMedicina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoMedicina', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoMedicinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoMedicina', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoTotal', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoVeterinario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoVeterinario', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByCostoVeterinarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costoVeterinario', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosedBy', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosedBy', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticadoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticadoPor', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticadoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticadoPor', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticoFinal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoFinal', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticoFinalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoFinal', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticoPrevio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoPrevio', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDiagnosticoPrevioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnosticoPrevio', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDoseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dose', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDuracionDias() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionDias', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDuracionDiasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionDias', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDurationDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationDays', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByDurationDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationDays', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByEfectosSecundarios() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosSecundarios', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByEfectosSecundariosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efectosSecundarios', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaActualizacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaActualizacion', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaFin', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFinalDiagnosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDiagnosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFinalDiagnosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDiagnosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFrecuencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frecuencia', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFrecuenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frecuencia', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy> thenByLot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByLotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lot', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByLote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByLoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lote', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicamento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicamentoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicamento', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicine', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicine', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicineCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMedicineCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMotivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivo', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByMotivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivo', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByNotas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByNotasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notas', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByObservaciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByObservacionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observaciones', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByPreviousDiagnosis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousDiagnosis', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByPreviousDiagnosisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousDiagnosis', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegisteredBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegisteredByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registeredBy', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegistradoPor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegistradoPorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registradoPor', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByResultado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultado', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByResultadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultado', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenBySideEffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideEffects', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenBySideEffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideEffects', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByTotalCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByVeterinaryCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinaryCost', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByVeterinaryCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'veterinaryCost', Sort.desc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByViaAplicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.asc);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QAfterSortBy>
      thenByViaAplicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viaAplicacion', Sort.desc);
    });
  }
}

extension TratamientoEntityQueryWhereDistinct
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> {
  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByAdministrationRoute({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'administrationRoute',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByAnimalUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animalUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByCostoMedicina() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoMedicina');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByCostoTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoTotal');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByCostoVeterinario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costoVeterinario');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDiagnosedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diagnosedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDiagnosticadoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diagnosticadoPor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDiagnosticoFinal({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diagnosticoFinal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDiagnosticoPrevio({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diagnosticoPrevio',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByDose(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dose', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByDosis(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dosis', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDuracionDias() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duracionDias');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByDurationDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationDays');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByEfectosSecundarios({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'efectosSecundarios',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDate');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFechaActualizacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaActualizacion');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFechaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaFin');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaInicio');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFinalDiagnosis({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalDiagnosis',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFrecuencia({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frecuencia', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByFrequency({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequency', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByLot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lot', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByLote(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lote', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByMarca(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marca', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByMedicamento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicamento', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByMedicine({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicine', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByMedicineCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicineCost');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByMotivo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motivo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByNotas(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notas', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByObservaciones({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observaciones',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByPreviousDiagnosis({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previousDiagnosis',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByRegisteredBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registeredBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByRegistradoPor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registradoPor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByResult({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'result', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByResultado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resultado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctBySideEffects({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sideEffects', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDate');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByTotalCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCost');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByVeterinaryCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'veterinaryCost');
    });
  }

  QueryBuilder<TratamientoEntity, TratamientoEntity, QDistinct>
      distinctByViaAplicacion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viaAplicacion',
          caseSensitive: caseSensitive);
    });
  }
}

extension TratamientoEntityQueryProperty
    on QueryBuilder<TratamientoEntity, TratamientoEntity, QQueryProperty> {
  QueryBuilder<TratamientoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      administrationRouteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'administrationRoute');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      animalUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animalUuid');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      costoMedicinaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoMedicina');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      costoTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoTotal');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      costoVeterinarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costoVeterinario');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      diagnosedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diagnosedBy');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      diagnosticadoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diagnosticadoPor');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      diagnosticoFinalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diagnosticoFinal');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      diagnosticoPrevioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diagnosticoPrevio');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> doseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dose');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> dosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosis');
    });
  }

  QueryBuilder<TratamientoEntity, int, QQueryOperations>
      duracionDiasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duracionDias');
    });
  }

  QueryBuilder<TratamientoEntity, int, QQueryOperations>
      durationDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationDays');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      efectosSecundariosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'efectosSecundarios');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime?, QQueryOperations>
      endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDate');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime?, QQueryOperations>
      fechaActualizacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaActualizacion');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime?, QQueryOperations>
      fechaFinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaFin');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime, QQueryOperations>
      fechaInicioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaInicio');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      finalDiagnosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalDiagnosis');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      frecuenciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frecuencia');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequency');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> lotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lot');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> loteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lote');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> marcaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marca');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      medicamentoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicamento');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> medicineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicine');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      medicineCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicineCost');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> motivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motivo');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> notasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notas');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      observacionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observaciones');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      previousDiagnosisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previousDiagnosis');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> reasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reason');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      registeredByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registeredBy');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      registradoPorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registradoPor');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations> resultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'result');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      resultadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resultado');
    });
  }

  QueryBuilder<TratamientoEntity, String?, QQueryOperations>
      sideEffectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sideEffects');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime, QQueryOperations>
      startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDate');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      totalCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCost');
    });
  }

  QueryBuilder<TratamientoEntity, DateTime?, QQueryOperations>
      updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<TratamientoEntity, double?, QQueryOperations>
      veterinaryCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'veterinaryCost');
    });
  }

  QueryBuilder<TratamientoEntity, String, QQueryOperations>
      viaAplicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viaAplicacion');
    });
  }
}
