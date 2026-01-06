// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sexo_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SexoAdapterAdapter extends TypeAdapter<SexoAdapter> {
  @override
  final int typeId = 7;

  @override
  SexoAdapter read(BinaryReader reader) {
    return SexoAdapter();
  }

  @override
  void write(BinaryWriter writer, SexoAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SexoAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
