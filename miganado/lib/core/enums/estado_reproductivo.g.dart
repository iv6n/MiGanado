// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estado_reproductivo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstadoReproductivoAdapter extends TypeAdapter<EstadoReproductivo> {
  @override
  final int typeId = 12;

  @override
  EstadoReproductivo read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return EstadoReproductivo.prenada;
      case 1:
        return EstadoReproductivo.lactando;
      case 2:
        return EstadoReproductivo.seca;
      case 3:
        return EstadoReproductivo.no_definido;
      default:
        return EstadoReproductivo.prenada;
    }
  }

  @override
  void write(BinaryWriter writer, EstadoReproductivo obj) {
    switch (obj) {
      case EstadoReproductivo.prenada:
        writer.writeByte(0);
        break;
      case EstadoReproductivo.lactando:
        writer.writeByte(1);
        break;
      case EstadoReproductivo.seca:
        writer.writeByte(2);
        break;
      case EstadoReproductivo.no_definido:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstadoReproductivoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
