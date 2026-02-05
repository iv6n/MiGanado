/// Advanced search criteria tests
///
/// Tests:
/// - Search criteria management
/// - Filter combinations
/// - Sort options
/// - Pagination support
/// - Enum validation

import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/search/domain/models/search_criteria.dart';

void main() {
  group('SearchCriteria Tests', () {
    test('SearchCriteria initialization with defaults', () {
      const criteria = SearchCriteria();

      expect(criteria.query, isEmpty);
      expect(criteria.categories, isEmpty);
      expect(criteria.limit, 50);
      expect(criteria.offset, 0);
      expect(criteria.sortBy, SearchSortBy.name);
    });

    test('SearchCriteria.copyWith updates fields', () {
      const original = SearchCriteria(
        query: 'test',
        limit: 10,
      );

      final updated = original.copyWith(
        query: 'updated',
        offset: 20,
      );

      expect(updated.query, 'updated');
      expect(updated.offset, 20);
      expect(updated.limit, 10); // unchanged
    });

    test('SearchCriteria.hasActiveFilters detects active filters', () {
      const emptySearch = SearchCriteria();
      expect(emptySearch.hasActiveFilters(), false);

      const withQuery = SearchCriteria(query: 'test');
      expect(withQuery.hasActiveFilters(), true);

      // TODO: Fix test - Category enum needs to be imported and proper categories used
      // final withCategories = SearchCriteria(categories: [Category.cow]);
      // expect(withCategories.hasActiveFilters(), true);

      final withDateRange = SearchCriteria(
        dateFrom: DateTime.now().subtract(const Duration(days: 30)),
      );
      expect(withDateRange.hasActiveFilters(), true);

      const withWeightRange = SearchCriteria(weightMin: 200);
      expect(withWeightRange.hasActiveFilters(), true);
    });

    test('SearchCriteria.clearAll resets all filters', () {
      // TODO: Fix test - use valid enum values instead of EtapaVida
      final criteria = SearchCriteria(
        query: 'test',
        // categories: [EtapaVida.vaca],
        weightMin: 100,
        weightMax: 500,
        limit: 50,
      ).clearAll();

      expect(criteria.query, isEmpty);
      expect(criteria.categories, isEmpty);
      expect(criteria.weightMin, isNull);
      expect(criteria.weightMax, isNull);
    });

    test('HealthStatus enum values', () {
      expect(HealthStatus.values.length, 5);
      expect(HealthStatus.healthy.index, 0);
      expect(HealthStatus.all.index, 4);
    });

    test('SearchSortBy enum values', () {
      expect(SearchSortBy.values.length, 5);
      expect(SearchSortBy.name.index, 0);
      expect(SearchSortBy.age.index, 4);
    });

    test('SortDirection enum values', () {
      expect(SortDirection.values.length, 2);
      expect(SortDirection.ascending.index, 0);
      expect(SortDirection.descending.index, 1);
    });

    test('SearchResult initialization', () {
      final result = SearchResult(
        animals: [],
        totalCount: 0,
        offset: 0,
        criteria: const SearchCriteria(),
        executedAt: DateTime.now(),
        executionTimeMs: 0,
      );

      expect(result.animals, isEmpty);
      expect(result.totalCount, 0);
      expect(result.offset, 0);
    });

    test('SearchResult pagination info', () {
      final result = SearchResult(
        animals: List.filled(10, null),
        totalCount: 50,
        offset: 10,
        criteria: const SearchCriteria(),
        executedAt: DateTime.now(),
        executionTimeMs: 100,
      );

      expect(result.totalCount, 50);
      expect(result.offset, 10);
    });
  });

  group('Date Range Filtering Tests', () {
    test('SearchCriteria respects date range', () {
      final now = DateTime.now();
      final thirtyDaysAgo = now.subtract(const Duration(days: 30));

      final criteria = SearchCriteria(
        dateFrom: thirtyDaysAgo,
        dateTo: now,
      );

      expect(criteria.dateFrom, thirtyDaysAgo);
      expect(criteria.dateTo, now);
    });

    test('SearchCriteria date range with only start date', () {
      final startDate = DateTime.now().subtract(const Duration(days: 30));

      final criteria = SearchCriteria(dateFrom: startDate);

      expect(criteria.dateFrom, startDate);
      expect(criteria.dateTo, isNull);
    });
  });

  group('Weight Range Filtering Tests', () {
    test('SearchCriteria respects weight range', () {
      const criteria = SearchCriteria(
        weightMin: 200,
        weightMax: 500,
      );

      expect(criteria.weightMin, 200);
      expect(criteria.weightMax, 500);
    });

    test('SearchCriteria weight with only minimum', () {
      const criteria = SearchCriteria(weightMin: 150);

      expect(criteria.weightMin, 150);
      expect(criteria.weightMax, isNull);
    });

    test('SearchCriteria weight with only maximum', () {
      const criteria = SearchCriteria(weightMax: 600);

      expect(criteria.weightMin, isNull);
      expect(criteria.weightMax, 600);
    });
  });

  group('Multi-filter Tests', () {
    test('SearchCriteria combines multiple filters', () {
      // TODO: Fix test with valid enum values
      final criteria = SearchCriteria(
        query: 'jersey',
        // categories: [EtapaVida.vaca],
        // especies: [Categoria.vaca],
        sexos: ['Hembra'],
        healthStatus: HealthStatus.healthy,
        weightMin: 300,
        weightMax: 500,
        dateFrom: DateTime.now().subtract(const Duration(days: 60)),
      );

      expect(criteria.hasActiveFilters(), true);
      expect(criteria.query, 'jersey');
      expect(criteria.categories.length, 1);
      expect(criteria.especies.length, 1);
      expect(criteria.sexos.length, 1);
      expect(criteria.healthStatus, HealthStatus.healthy);
      expect(criteria.weightMin, 300);
    });
  });

  group('Pagination Tests', () {
    test('SearchCriteria pagination with offset and limit', () {
      const criteria = SearchCriteria(
        limit: 20,
        offset: 40,
      );

      expect(criteria.limit, 20);
      expect(criteria.offset, 40);
    });

    test('SearchCriteria pagination page calculation', () {
      const criteria = SearchCriteria(
        limit: 10,
        offset: 0,
      );

      final nextPageOffset = criteria.offset + criteria.limit;
      expect(nextPageOffset, 10);

      final updated = criteria.copyWith(offset: nextPageOffset);
      expect(updated.offset, 10);
    });
  });

  group('Sort Options Tests', () {
    test('SearchCriteria supports all sort options', () {
      expect(SearchSortBy.name, isNotNull);
      expect(SearchSortBy.arete, isNotNull);
      expect(SearchSortBy.dateAdded, isNotNull);
      expect(SearchSortBy.weight, isNotNull);
      expect(SearchSortBy.age, isNotNull);
    });

    test('SearchCriteria sort direction', () {
      const ascending = SearchCriteria(
        sortDirection: SortDirection.ascending,
      );

      const descending = SearchCriteria(
        sortDirection: SortDirection.descending,
      );

      expect(ascending.sortDirection, SortDirection.ascending);
      expect(descending.sortDirection, SortDirection.descending);
    });
  });

  group('Filter Combinations Tests', () {
    test('Category and species filters combined', () {
      // TODO: Fix test with valid enum values
      final criteria = SearchCriteria(
          // categories: [EtapaVida.vaca, EtapaVida.becerro],
          // especies: [Categoria.vaca],
          );

      // expect(criteria.categories.length, 2);
      // expect(criteria.especies.length, 1);
      expect(criteria.hasActiveFilters(), true);
    });

    test('Health status and date range combined', () {
      final criteria = SearchCriteria(
        healthStatus: HealthStatus.sick,
        dateFrom: DateTime.now().subtract(const Duration(days: 14)),
        dateTo: DateTime.now(),
      );

      expect(criteria.healthStatus, HealthStatus.sick);
      expect(criteria.dateFrom, isNotNull);
      expect(criteria.hasActiveFilters(), true);
    });
  });
}
