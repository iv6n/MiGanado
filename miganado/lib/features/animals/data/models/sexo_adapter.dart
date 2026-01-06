import 'package:hive/hive.dart';
import 'animal_model.dart';

part 'sexo_adapter.g.dart';

@HiveType(typeId: 7)
class SexoAdapter extends TypeAdapter<Sexo> {
  @override
  final typeId = 7;

  @override
  Sexo read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Sexo.macho;
      case 1:
        return Sexo.hembra;
      default:
        return Sexo.macho;
    }
  }

  @override
  void write(BinaryWriter writer, Sexo obj) {
    writer.writeByte(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SexoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
