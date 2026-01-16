import 'package:miganado/features/animals/presentation/providers/animal_providers.dart';
import 'package:miganado/features/animals/presentation/providers/mantenimiento_providers.dart';
import 'package:miganado/features/animals/presentation/providers/peso_providers.dart';
import 'package:miganado/features/animals/presentation/providers/calculos_providers.dart';

export 'animal_providers.dart' hide databaseProvider;
export 'mantenimiento_providers.dart' hide databaseProvider;
export 'peso_providers.dart' hide databaseProvider;
export 'calculos_providers.dart' hide databaseProvider;
