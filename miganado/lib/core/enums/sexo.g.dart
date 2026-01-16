// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sexo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SexoAdapter extends TypeAdapter<Sexo> {
  @override
  final int typeId = 11;

  @override
  Sexo read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Sexo.macho;
      case 1:
        return Sexo.hembra;
      default:
        return Sexo.macho;
    }
  }

  @override
  void write(BinaryWriter writer, Sexo obj) {
    switch (obj) {
      case Sexo.macho:
        writer.writeByte(0);
        break;
      case Sexo.hembra:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SexoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
