import 'package:hive/hive.dart';
import 'animal_model.dart';

part 'tipo_ganado_adapter.g.dart';

@HiveType(typeId: 6)
class TipoGanadoAdapter extends TypeAdapter<TipoGanado> {
  @override
  final typeId = 6;

  @override
  TipoGanado read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoGanado.vaca;
      case 1:
        return TipoGanado.becerro;
      case 2:
        return TipoGanado.toro;
      case 3:
        return TipoGanado.novillo;
      case 4:
        return TipoGanado.caballo;
      case 5:
        return TipoGanado.mula;
      case 6:
        return TipoGanado.burro;
      default:
        return TipoGanado.vaca;
    }
  }

  @override
  void write(BinaryWriter writer, TipoGanado obj) {
    writer.writeByte(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoGanadoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
