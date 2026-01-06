import 'package:hive/hive.dart';
import 'costo_model.dart';

part 'tipo_costo_adapter.g.dart';

@HiveType(typeId: 9)
class TipoCostoAdapter extends TypeAdapter<TipoCosto> {
  @override
  final typeId = 9;

  @override
  TipoCosto read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoCosto.medicamento;
      case 1:
        return TipoCosto.alimento;
      case 2:
        return TipoCosto.servicio_veterinario;
      case 3:
        return TipoCosto.equipo;
      case 4:
        return TipoCosto.otro;
      default:
        return TipoCosto.otro;
    }
  }

  @override
  void write(BinaryWriter writer, TipoCosto obj) {
    writer.writeByte(obj.index);
  }
}
