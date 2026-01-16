// NUEVO MODELO REFACTORIZADO
export 'costo_registro.dart';

// LEGACY - Mantener para compatibilidad temporal (sin TipoCosto para evitar conflicto)
export 'costo_model.dart' hide TipoCosto;
// TipoCosto ahora es enum centralizado en core/enums
// Las clases legacy lo exportan directamente desde costo_model.dart si es necesario
