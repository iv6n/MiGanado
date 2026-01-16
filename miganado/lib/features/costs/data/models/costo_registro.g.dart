// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costo_registro.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CostoRegistroAdapter extends TypeAdapter<CostoRegistro> {
  @override
  final int typeId = 22;

  @override
  CostoRegistro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CostoRegistro(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      tipo: fields[2] as TipoCosto,
      descripcion: fields[3] as String?,
      monto: fields[4] as double,
      fecha: fields[5] as DateTime,
      mantenimientoRelacionadoId: fields[6] as String?,
      notas: fields[7] as String?,
      fechaRegistro: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, CostoRegistro obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.animalId)
      ..writeByte(2)
      ..write(obj.tipo)
      ..writeByte(3)
      ..write(obj.descripcion)
      ..writeByte(4)
      ..write(obj.monto)
      ..writeByte(5)
      ..write(obj.fecha)
      ..writeByte(6)
      ..write(obj.mantenimientoRelacionadoId)
      ..writeByte(7)
      ..write(obj.notas)
      ..writeByte(8)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CostoRegistroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
