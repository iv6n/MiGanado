// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_ganado_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoGanadoAdapterAdapter extends TypeAdapter<TipoGanadoAdapter> {
  @override
  final int typeId = 6;

  @override
  TipoGanadoAdapter read(BinaryReader reader) {
    return TipoGanadoAdapter();
  }

  @override
  void write(BinaryWriter writer, TipoGanadoAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoGanadoAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
