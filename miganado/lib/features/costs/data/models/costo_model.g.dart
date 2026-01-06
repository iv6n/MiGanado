// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CostoModelAdapter extends TypeAdapter<CostoModel> {
  @override
  final int typeId = 3;

  @override
  CostoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CostoModel(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      tipo: fields[2] as TipoCosto,
      monto: fields[3] as double,
      descripcion: fields[4] as String?,
      fecha: fields[5] as DateTime,
      fechaRegistro: fields[6] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, CostoModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.animalId)
      ..writeByte(2)
      ..write(obj.tipo)
      ..writeByte(3)
      ..write(obj.monto)
      ..writeByte(4)
      ..write(obj.descripcion)
      ..writeByte(5)
      ..write(obj.fecha)
      ..writeByte(6)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CostoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
