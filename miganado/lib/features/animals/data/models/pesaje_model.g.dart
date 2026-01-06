// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pesaje_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PesajeModelAdapter extends TypeAdapter<PesajeModel> {
  @override
  final int typeId = 1;

  @override
  PesajeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PesajeModel(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      peso: fields[2] as double,
      fecha: fields[3] as DateTime,
      notas: fields[4] as String?,
      fechaRegistro: fields[5] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, PesajeModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.animalId)
      ..writeByte(2)
      ..write(obj.peso)
      ..writeByte(3)
      ..write(obj.fecha)
      ..writeByte(4)
      ..write(obj.notas)
      ..writeByte(5)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PesajeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
