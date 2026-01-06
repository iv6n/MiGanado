// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ganadero_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GanaderoModelAdapter extends TypeAdapter<GanaderoModel> {
  @override
  final int typeId = 4;

  @override
  GanaderoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GanaderoModel(
      id: fields[0] as String?,
      nombre: fields[1] as String,
      telefono: fields[2] as String?,
      email: fields[3] as String?,
      ubicacion: fields[4] as String?,
      notas: fields[5] as String?,
      fechaRegistro: fields[6] as DateTime?,
      ultimaActualizacion: fields[7] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, GanaderoModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nombre)
      ..writeByte(2)
      ..write(obj.telefono)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.ubicacion)
      ..writeByte(5)
      ..write(obj.notas)
      ..writeByte(6)
      ..write(obj.fechaRegistro)
      ..writeByte(7)
      ..write(obj.ultimaActualizacion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GanaderoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
