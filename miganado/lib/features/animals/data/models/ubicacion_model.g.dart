// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ubicacion_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UbicacionModelAdapter extends TypeAdapter<UbicacionModel> {
  @override
  final int typeId = 2;

  @override
  UbicacionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UbicacionModel(
      id: fields[0] as String?,
      nombre: fields[1] as String,
      tipo: fields[2] as TipoUbicacion,
      descripcion: fields[3] as String?,
      fotoPath: fields[4] as String?,
      fechaRegistro: fields[5] as DateTime?,
      ultimaActualizacion: fields[6] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, UbicacionModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nombre)
      ..writeByte(2)
      ..write(obj.tipo)
      ..writeByte(3)
      ..write(obj.descripcion)
      ..writeByte(4)
      ..write(obj.fotoPath)
      ..writeByte(5)
      ..write(obj.fechaRegistro)
      ..writeByte(6)
      ..write(obj.ultimaActualizacion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UbicacionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
