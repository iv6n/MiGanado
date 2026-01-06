// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estado_reproductivo_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstadoReproductivoAdapterAdapter
    extends TypeAdapter<EstadoReproductivoAdapter> {
  @override
  final int typeId = 8;

  @override
  EstadoReproductivoAdapter read(BinaryReader reader) {
    return EstadoReproductivoAdapter();
  }

  @override
  void write(BinaryWriter writer, EstadoReproductivoAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstadoReproductivoAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
