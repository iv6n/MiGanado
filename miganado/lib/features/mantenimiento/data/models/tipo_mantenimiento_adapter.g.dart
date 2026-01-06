// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_mantenimiento_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoMantenimientoAdapterAdapter
    extends TypeAdapter<TipoMantenimientoAdapter> {
  @override
  final int typeId = 10;

  @override
  TipoMantenimientoAdapter read(BinaryReader reader) {
    return TipoMantenimientoAdapter();
  }

  @override
  void write(BinaryWriter writer, TipoMantenimientoAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoMantenimientoAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
