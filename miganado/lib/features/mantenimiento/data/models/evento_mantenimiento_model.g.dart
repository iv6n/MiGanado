// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evento_mantenimiento_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventoMantenimientoModelAdapter
    extends TypeAdapter<EventoMantenimientoModel> {
  @override
  final int typeId = 5;

  @override
  EventoMantenimientoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventoMantenimientoModel(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      tipo: fields[2] as TipoMantenimiento,
      descripcion: fields[3] as String?,
      notas: fields[4] as String?,
      fecha: fields[5] as DateTime,
      costo: fields[6] as double?,
      proximaFecha: fields[7] as DateTime?,
      fechaRegistro: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, EventoMantenimientoModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.animalId)
      ..writeByte(2)
      ..write(obj.tipo)
      ..writeByte(3)
      ..write(obj.descripcion)
      ..writeByte(4)
      ..write(obj.notas)
      ..writeByte(5)
      ..write(obj.fecha)
      ..writeByte(6)
      ..write(obj.costo)
      ..writeByte(7)
      ..write(obj.proximaFecha)
      ..writeByte(8)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventoMantenimientoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
