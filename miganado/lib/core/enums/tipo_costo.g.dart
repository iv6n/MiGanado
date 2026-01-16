// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_costo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoCostoAdapter extends TypeAdapter<TipoCosto> {
  @override
  final int typeId = 15;

  @override
  TipoCosto read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoCosto.compra_inicial;
      case 1:
        return TipoCosto.veterinario;
      case 2:
        return TipoCosto.alimento;
      case 3:
        return TipoCosto.medicamento;
      case 4:
        return TipoCosto.equipo;
      case 5:
        return TipoCosto.otro;
      default:
        return TipoCosto.compra_inicial;
    }
  }

  @override
  void write(BinaryWriter writer, TipoCosto obj) {
    switch (obj) {
      case TipoCosto.compra_inicial:
        writer.writeByte(0);
        break;
      case TipoCosto.veterinario:
        writer.writeByte(1);
        break;
      case TipoCosto.alimento:
        writer.writeByte(2);
        break;
      case TipoCosto.medicamento:
        writer.writeByte(3);
        break;
      case TipoCosto.equipo:
        writer.writeByte(4);
        break;
      case TipoCosto.otro:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoCostoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
