// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model_v2.dart';

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
      identificadorVisible: fields[1] as String,
      sexo: fields[2] as Sexo,
      numeroArete: fields[3] as String?,
      nombrePersonalizado: fields[4] as String?,
      raza: fields[5] as String?,
      categoriaAutomatica: fields[6] as String,
      categoriaInicialSeleccionada: fields[7] as String?,
      estadoReproductivo: fields[8] as EstadoReproductivo,
      fechaNacimiento: fields[9] as DateTime?,
      metodoEdad: fields[10] as MetodoEdad,
      edadMesesCachedValue: fields[11] as int?,
      fechaInicioEtapa: fields[12] as DateTime,
      tipo: fields[13] as TipoGanado,
      pesoActual: fields[14] as double?,
      pesoInicial: fields[15] as double?,
      historialPesos: (fields[16] as List?)?.cast<PesoRegistro>(),
      observaciones: fields[17] as String?,
      partos: fields[18] as int,
      fechaUltimoParot: fields[19] as DateTime?,
      empadres: fields[20] as int,
      fechaUltimoEmpadre: fields[21] as DateTime?,
      historialMantenimientos:
          (fields[22] as List?)?.cast<MantenimientoRegistro>(),
      alertasSanitarias: (fields[23] as List?)?.cast<String>(),
      costoCompraInicial: fields[24] as double?,
      historialCostosIds: (fields[25] as List?)?.cast<String>(),
      fechaRegistro: fields[26] as DateTime?,
      ultimaActualizacion: fields[27] as DateTime?,
      ubicacionId: fields[28] as String?,
      madreId: fields[29] as String?,
      fotoPath: fields[30] as String?,
      notas: fields[31] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AnimalModel obj) {
    writer
      ..writeByte(32)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.identificadorVisible)
      ..writeByte(2)
      ..write(obj.sexo)
      ..writeByte(3)
      ..write(obj.numeroArete)
      ..writeByte(4)
      ..write(obj.nombrePersonalizado)
      ..writeByte(5)
      ..write(obj.raza)
      ..writeByte(6)
      ..write(obj.categoriaAutomatica)
      ..writeByte(7)
      ..write(obj.categoriaInicialSeleccionada)
      ..writeByte(8)
      ..write(obj.estadoReproductivo)
      ..writeByte(9)
      ..write(obj.fechaNacimiento)
      ..writeByte(10)
      ..write(obj.metodoEdad)
      ..writeByte(11)
      ..write(obj.edadMesesCachedValue)
      ..writeByte(12)
      ..write(obj.fechaInicioEtapa)
      ..writeByte(13)
      ..write(obj.tipo)
      ..writeByte(14)
      ..write(obj.pesoActual)
      ..writeByte(15)
      ..write(obj.pesoInicial)
      ..writeByte(16)
      ..write(obj.historialPesos)
      ..writeByte(17)
      ..write(obj.observaciones)
      ..writeByte(18)
      ..write(obj.partos)
      ..writeByte(19)
      ..write(obj.fechaUltimoParot)
      ..writeByte(20)
      ..write(obj.empadres)
      ..writeByte(21)
      ..write(obj.fechaUltimoEmpadre)
      ..writeByte(22)
      ..write(obj.historialMantenimientos)
      ..writeByte(23)
      ..write(obj.alertasSanitarias)
      ..writeByte(24)
      ..write(obj.costoCompraInicial)
      ..writeByte(25)
      ..write(obj.historialCostosIds)
      ..writeByte(26)
      ..write(obj.fechaRegistro)
      ..writeByte(27)
      ..write(obj.ultimaActualizacion)
      ..writeByte(28)
      ..write(obj.ubicacionId)
      ..writeByte(29)
      ..write(obj.madreId)
      ..writeByte(30)
      ..write(obj.fotoPath)
      ..writeByte(31)
      ..write(obj.notas);
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
