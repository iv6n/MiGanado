/// Advanced search provider for animals
///
/// This provider handles:
/// - Searching animals with multiple criteria
/// - Filtering by various dimensions
/// - Sorting results
/// - Pagination support
/// - Search history
/// - Caching results

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/search/domain/models/search_criteria.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Current search criteria state
final searchCriteriaProvider =
    StateProvider<SearchCriteria>((ref) => const SearchCriteria());

/// Current search results
final searchResultsProvider = FutureProvider<SearchResult>((ref) async {
  final criteria = ref.watch(searchCriteriaProvider);
  final animals = ref.watch(animalsListProvider).whenData((list) => list).value;

  if (animals == null) {
    return SearchResult(
      animals: [],
      totalCount: 0,
      offset: criteria.offset,
      criteria: criteria,
      executedAt: DateTime.now(),
      executionTimeMs: 0,
    );
  }

  final stopwatch = Stopwatch()..start();

  try {
    // Apply all filters
    var results = _applyFilters(animals, criteria);

    // Apply sorting
    results = _applySorting(results, criteria);

    final totalCount = results.length;

    // Apply pagination
    final startIndex = criteria.offset;
    final endIndex = (startIndex + criteria.limit).clamp(0, results.length);
    final pagedResults =
        results.sublist(startIndex, endIndex.clamp(0, results.length));

    stopwatch.stop();

    LoggerService.info(
      '🔍 Search executed: found ${pagedResults.length}/$totalCount results '
      '(${stopwatch.elapsedMilliseconds}ms)',
    );

    return SearchResult(
      animals: pagedResults,
      totalCount: totalCount,
      offset: criteria.offset,
      criteria: criteria,
      executedAt: DateTime.now(),
      executionTimeMs: stopwatch.elapsedMilliseconds,
    );
  } catch (e, st) {
    LoggerService.error('❌ Search failed: $e', e, st);
    rethrow;
  }
});

/// Search history provider
final searchHistoryProvider = StateProvider<List<String>>((ref) => []);

/// Apply filters to animal list
List<dynamic> _applyFilters(List<dynamic> animals, SearchCriteria criteria) {
  var filtered = animals;

  // Text search (query)
  if (criteria.query.isNotEmpty) {
    final query = criteria.query.toLowerCase();
    filtered = filtered
        .where((animal) =>
            (animal.nombrePersonalizado?.toLowerCase().contains(query) ??
                false) ||
            animal.numeroArete.toLowerCase().contains(query))
        .toList();
  }

  // Filter by life stages
  if (criteria.categories.isNotEmpty) {
    filtered = filtered
        .where((animal) => criteria.categories.contains(animal.etapa))
        .toList();
  }

  // Filter by species
  if (criteria.especies.isNotEmpty) {
    filtered = filtered
        .where((animal) => criteria.especies.contains(animal.categoria))
        .toList();
  }

  // Filter by sex
  if (criteria.sexos.isNotEmpty) {
    filtered = filtered
        .where((animal) => criteria.sexos.contains(animal.sexo))
        .toList();
  }

  // Filter by date range
  if (criteria.dateFrom != null) {
    filtered = filtered
        .where((animal) =>
            animal.fechaNacimiento == null ||
            animal.fechaNacimiento!.isAfter(criteria.dateFrom!))
        .toList();
  }
  if (criteria.dateTo != null) {
    filtered = filtered
        .where((animal) =>
            animal.fechaNacimiento == null ||
            animal.fechaNacimiento!.isBefore(criteria.dateTo!))
        .toList();
  }

  // Filter by weight range
  if (criteria.weightMin != null) {
    filtered = filtered
        .where((animal) =>
            animal.pesoActual == null ||
            animal.pesoActual! >= criteria.weightMin!)
        .toList();
  }
  if (criteria.weightMax != null) {
    filtered = filtered
        .where((animal) =>
            animal.pesoActual == null ||
            animal.pesoActual! <= criteria.weightMax!)
        .toList();
  }

  return filtered;
}

/// Apply sorting to filtered results
List<dynamic> _applySorting(
  List<dynamic> animals,
  SearchCriteria criteria,
) {
  var sorted = List.from(animals);

  // Determine sort function
  int Function(dynamic, dynamic)? compare;

  switch (criteria.sortBy) {
    case SearchSortBy.name:
      compare = (a, b) =>
          (a.nombrePersonalizado ?? '').compareTo(b.nombrePersonalizado ?? '');
      break;
    case SearchSortBy.arete:
      compare = (a, b) => a.numeroArete.compareTo(b.numeroArete);
      break;
    case SearchSortBy.dateAdded:
      compare = (a, b) => (a.createdAt ?? DateTime.now())
          .compareTo(b.createdAt ?? DateTime.now());
      break;
    case SearchSortBy.weight:
      compare = (a, b) => (a.pesoActual ?? 0).compareTo(b.pesoActual ?? 0);
      break;
    case SearchSortBy.age:
      compare = (a, b) {
        final ageA = a.fechaNacimiento != null
            ? DateTime.now().difference(a.fechaNacimiento!).inDays
            : 0;
        final ageB = b.fechaNacimiento != null
            ? DateTime.now().difference(b.fechaNacimiento!).inDays
            : 0;
        return ageA.compareTo(ageB);
      };
      break;
  }

  sorted.sort(compare);
  if (criteria.sortDirection == SortDirection.descending) {
    sorted = sorted.reversed.toList();
  }

  return sorted;
}

/// Add search to history
final addToSearchHistoryProvider = Provider<Function(String)>((ref) {
  return (String query) {
    final history = ref.read(searchHistoryProvider);
    final updated =
        [query, ...history.where((q) => q != query)].take(20).toList();
    ref.read(searchHistoryProvider.notifier).state = updated;
  };
});

/// Clear search
final clearSearchProvider = Provider<Function()>((ref) {
  return () {
    ref.read(searchCriteriaProvider.notifier).state = const SearchCriteria();
  };
});

/// Update search criteria
final updateSearchCriteriaProvider = Provider<Function(SearchCriteria)>((ref) {
  return (SearchCriteria criteria) {
    ref.read(searchCriteriaProvider.notifier).state = criteria;
  };
});

/// Load next page
final loadNextPageProvider = Provider<Function()>((ref) {
  return () {
    final current = ref.read(searchCriteriaProvider);
    final result = ref.read(searchResultsProvider).whenData((r) => r).value;
    if (result != null && result.hasMore) {
      ref.read(searchCriteriaProvider.notifier).state = current.copyWith(
        offset: current.offset + current.limit,
      );
    }
  };
});

/// Load previous page
final loadPreviousPageProvider = Provider<Function()>((ref) {
  return () {
    final current = ref.read(searchCriteriaProvider);
    if (current.offset >= current.limit) {
      ref.read(searchCriteriaProvider.notifier).state = current.copyWith(
        offset: (current.offset - current.limit).clamp(0, current.offset),
      );
    }
  };
});
