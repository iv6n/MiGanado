// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_mantenimiento.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoMantenimientoAdapter extends TypeAdapter<TipoMantenimiento> {
  @override
  final int typeId = 14;

  @override
  TipoMantenimiento read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoMantenimiento.vacunacion;
      case 1:
        return TipoMantenimiento.desparasitante;
      case 2:
        return TipoMantenimiento.vitaminas;
      case 3:
        return TipoMantenimiento.revision_clinica;
      case 4:
        return TipoMantenimiento.curacion;
      case 5:
        return TipoMantenimiento.dentadura;
      case 6:
        return TipoMantenimiento.castracion;
      case 7:
        return TipoMantenimiento.otro;
      default:
        return TipoMantenimiento.vacunacion;
    }
  }

  @override
  void write(BinaryWriter writer, TipoMantenimiento obj) {
    switch (obj) {
      case TipoMantenimiento.vacunacion:
        writer.writeByte(0);
        break;
      case TipoMantenimiento.desparasitante:
        writer.writeByte(1);
        break;
      case TipoMantenimiento.vitaminas:
        writer.writeByte(2);
        break;
      case TipoMantenimiento.revision_clinica:
        writer.writeByte(3);
        break;
      case TipoMantenimiento.curacion:
        writer.writeByte(4);
        break;
      case TipoMantenimiento.dentadura:
        writer.writeByte(5);
        break;
      case TipoMantenimiento.castracion:
        writer.writeByte(6);
        break;
      case TipoMantenimiento.otro:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoMantenimientoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
