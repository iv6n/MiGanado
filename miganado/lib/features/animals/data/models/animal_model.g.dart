// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimalModelAdapter extends TypeAdapter<AnimalModel> {
  @override
  final int typeId = 0;

  @override
  AnimalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimalModel(
      id: fields[0] as String?,
      numeroArete: fields[1] as String,
      nombrePersonalizado: fields[2] as String?,
      tipo: fields[3] as TipoGanado,
      sexo: fields[4] as Sexo,
      raza: fields[5] as String,
      fechaNacimiento: fields[6] as DateTime?,
      notas: fields[7] as String,
      precioCompra: fields[8] as double?,
      precioVenta: fields[9] as double?,
      costosExtra: (fields[10] as Map?)?.cast<String, double>(),
      ubicacionId: fields[11] as String?,
      vacunado: fields[12] as bool,
      fechaUltimaVacuna: fields[13] as DateTime?,
      tipoVacuna: fields[14] as String?,
      desparasitado: fields[15] as bool,
      fechaUltimoDesparasitante: fields[16] as DateTime?,
      tipoDesparasitante: fields[17] as String?,
      tieneVitaminas: fields[18] as bool,
      fechaVitaminas: fields[19] as DateTime?,
      tieneOtrosTratamientos: fields[20] as bool,
      fechaOtrosTratamientos: fields[21] as DateTime?,
      descripcionOtrosTratamientos: fields[22] as String?,
      estadoReproductivo: fields[23] as EstadoReproductivo,
      madreId: fields[24] as String?,
      fotoPath: fields[25] as String?,
      fechaRegistro: fields[26] as DateTime?,
      ultimaActualizacion: fields[27] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, AnimalModel obj) {
    writer
      ..writeByte(28)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.numeroArete)
      ..writeByte(2)
      ..write(obj.nombrePersonalizado)
      ..writeByte(3)
      ..write(obj.tipo)
      ..writeByte(4)
      ..write(obj.sexo)
      ..writeByte(5)
      ..write(obj.raza)
      ..writeByte(6)
      ..write(obj.fechaNacimiento)
      ..writeByte(7)
      ..write(obj.notas)
      ..writeByte(8)
      ..write(obj.precioCompra)
      ..writeByte(9)
      ..write(obj.precioVenta)
      ..writeByte(10)
      ..write(obj.costosExtra)
      ..writeByte(11)
      ..write(obj.ubicacionId)
      ..writeByte(12)
      ..write(obj.vacunado)
      ..writeByte(13)
      ..write(obj.fechaUltimaVacuna)
      ..writeByte(14)
      ..write(obj.tipoVacuna)
      ..writeByte(15)
      ..write(obj.desparasitado)
      ..writeByte(16)
      ..write(obj.fechaUltimoDesparasitante)
      ..writeByte(17)
      ..write(obj.tipoDesparasitante)
      ..writeByte(18)
      ..write(obj.tieneVitaminas)
      ..writeByte(19)
      ..write(obj.fechaVitaminas)
      ..writeByte(20)
      ..write(obj.tieneOtrosTratamientos)
      ..writeByte(21)
      ..write(obj.fechaOtrosTratamientos)
      ..writeByte(22)
      ..write(obj.descripcionOtrosTratamientos)
      ..writeByte(23)
      ..write(obj.estadoReproductivo)
      ..writeByte(24)
      ..write(obj.madreId)
      ..writeByte(25)
      ..write(obj.fotoPath)
      ..writeByte(26)
      ..write(obj.fechaRegistro)
      ..writeByte(27)
      ..write(obj.ultimaActualizacion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
