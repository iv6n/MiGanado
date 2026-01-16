// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metodo_edad.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MetodoEdadAdapter extends TypeAdapter<MetodoEdad> {
  @override
  final int typeId = 13;

  @override
  MetodoEdad read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MetodoEdad.exacta_por_fecha_nacimiento;
      case 1:
        return MetodoEdad.simulada_por_categoria;
      case 2:
        return MetodoEdad.estimada_por_peso;
      default:
        return MetodoEdad.exacta_por_fecha_nacimiento;
    }
  }

  @override
  void write(BinaryWriter writer, MetodoEdad obj) {
    switch (obj) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        writer.writeByte(0);
        break;
      case MetodoEdad.simulada_por_categoria:
        writer.writeByte(1);
        break;
      case MetodoEdad.estimada_por_peso:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetodoEdadAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
