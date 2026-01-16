// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peso_registro.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PesoRegistroAdapter extends TypeAdapter<PesoRegistro> {
  @override
  final int typeId = 20;

  @override
  PesoRegistro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PesoRegistro(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      peso: fields[2] as double,
      fecha: fields[3] as DateTime,
      observacion: fields[4] as String?,
      fechaRegistro: fields[5] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, PesoRegistro obj) {
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
      ..write(obj.observacion)
      ..writeByte(5)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PesoRegistroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
