import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// DEPRECATED: Reproductivo functionality is disabled
// These providers have been disabled as the reproductivo feature is no longer supported
// Keeping this file to avoid breaking imports, but all providers are stubs

@Deprecated('Reproductivo functionality is disabled')
final crearReproductivoUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final obtenerReproductivoUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final actualizarEstadoReproductivoUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final registrarEmpadreUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final registrarPartoUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final finalizarLactanciaUseCaseProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});

@Deprecated('Reproductivo functionality is disabled')
final reproductivoProvider = Provider((ref) {
  throw UnsupportedError('Reproductivo functionality is disabled');
});
