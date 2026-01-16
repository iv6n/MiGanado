/// Exportación de modelos de animales
/// NUEVOS: animal_model_v2, peso_registro, mantenimiento_registro
/// LEGACY: animal_model, pesaje_model (para compatibilidad)

// NUEVOS MODELOS - USA ESTOS
export 'animal_model_v2.dart';
export 'peso_registro.dart';
export 'mantenimiento_registro.dart';

// LEGACY - Solo para migración gradual
// import 'animal_model.dart' as legacy_animal; // Usar si necesitas modelo antiguo
export 'pesaje_model.dart';
export 'ubicacion_model.dart';
