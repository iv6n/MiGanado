// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mantenimiento_registro.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MantenimientoRegistroAdapter extends TypeAdapter<MantenimientoRegistro> {
  @override
  final int typeId = 21;

  @override
  MantenimientoRegistro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MantenimientoRegistro(
      id: fields[0] as String?,
      animalId: fields[1] as String,
      tipo: fields[2] as TipoMantenimiento,
      descripcion: fields[3] as String?,
      notas: fields[4] as String?,
      fecha: fields[5] as DateTime,
      costo: fields[6] as double?,
      proximaFechaRecomendada: fields[7] as DateTime?,
      costoRegistroId: fields[8] as String?,
      datoEspecifico: fields[9] as String?,
      fechaRegistro: fields[10] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, MantenimientoRegistro obj) {
    writer
      ..writeByte(11)
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
      ..write(obj.proximaFechaRecomendada)
      ..writeByte(8)
      ..write(obj.costoRegistroId)
      ..writeByte(9)
      ..write(obj.datoEspecifico)
      ..writeByte(10)
      ..write(obj.fechaRegistro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MantenimientoRegistroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
