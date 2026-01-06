import 'package:hive/hive.dart';
import 'animal_model.dart';

part 'estado_reproductivo_adapter.g.dart';

@HiveType(typeId: 8)
class EstadoReproductivoAdapter extends TypeAdapter<EstadoReproductivo> {
  @override
  final typeId = 8;

  @override
  EstadoReproductivo read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return EstadoReproductivo.prenada;
      case 1:
        return EstadoReproductivo.lactando;
      case 2:
        return EstadoReproductivo.seca;
      case 3:
        return EstadoReproductivo.no_definido;
      default:
        return EstadoReproductivo.no_definido;
    }
  }

  @override
  void write(BinaryWriter writer, EstadoReproductivo obj) {
    writer.writeByte(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstadoReproductivoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
