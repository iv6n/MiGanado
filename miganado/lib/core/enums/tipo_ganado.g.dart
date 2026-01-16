// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_ganado.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoGanadoAdapter extends TypeAdapter<TipoGanado> {
  @override
  final int typeId = 10;

  @override
  TipoGanado read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoGanado.vaca;
      case 1:
        return TipoGanado.becerro;
      case 2:
        return TipoGanado.toro;
      case 3:
        return TipoGanado.novillo;
      case 4:
        return TipoGanado.caballo;
      case 5:
        return TipoGanado.mula;
      case 6:
        return TipoGanado.burro;
      default:
        return TipoGanado.vaca;
    }
  }

  @override
  void write(BinaryWriter writer, TipoGanado obj) {
    switch (obj) {
      case TipoGanado.vaca:
        writer.writeByte(0);
        break;
      case TipoGanado.becerro:
        writer.writeByte(1);
        break;
      case TipoGanado.toro:
        writer.writeByte(2);
        break;
      case TipoGanado.novillo:
        writer.writeByte(3);
        break;
      case TipoGanado.caballo:
        writer.writeByte(4);
        break;
      case TipoGanado.mula:
        writer.writeByte(5);
        break;
      case TipoGanado.burro:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoGanadoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
