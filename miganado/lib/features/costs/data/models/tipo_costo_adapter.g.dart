// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_costo_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoCostoAdapterAdapter extends TypeAdapter<TipoCostoAdapter> {
  @override
  final int typeId = 9;

  @override
  TipoCostoAdapter read(BinaryReader reader) {
    return TipoCostoAdapter();
  }

  @override
  void write(BinaryWriter writer, TipoCostoAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoCostoAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
