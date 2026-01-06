import 'package:hive/hive.dart';
import 'evento_mantenimiento_model.dart';

part 'tipo_mantenimiento_adapter.g.dart';

@HiveType(typeId: 10)
class TipoMantenimientoAdapter extends TypeAdapter<TipoMantenimiento> {
  @override
  final typeId = 10;

  @override
  TipoMantenimiento read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TipoMantenimiento.vacunacion;
      case 1:
        return TipoMantenimiento.desparasitante;
      case 2:
        return TipoMantenimiento.vitaminas;
      case 3:
        return TipoMantenimiento.revision_clinica;
      case 4:
        return TipoMantenimiento.curacion;
      case 5:
        return TipoMantenimiento.dentadura;
      case 6:
        return TipoMantenimiento.castracion;
      case 7:
        return TipoMantenimiento.otro;
      default:
        return TipoMantenimiento.otro;
    }
  }

  @override
  void write(BinaryWriter writer, TipoMantenimiento obj) {
    writer.writeByte(obj.index);
  }
}
