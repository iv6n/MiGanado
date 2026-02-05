/// Search criteria model for advanced animal search
///
/// This model holds all the criteria used to filter and search animals.
/// It supports multiple filtering dimensions:
/// - Text search (name, arete)
/// - Category/Species filtering
/// - Health status
/// - Location
/// - Date ranges
/// - Weight range
///
/// Usage:
/// ```dart
/// final criteria = SearchCriteria(
///   query: 'Bessie',
///   categories: [EtapaVida.vaca],
///   healthStatus: HealthStatus.healthy,
///   weightMin: 300,
///   weightMax: 500,
/// );
/// ```

enum HealthStatus {
  healthy,
  sick,
  injured,
  unknown,
  all,
}

/// Sort order for search results
enum SearchSortBy {
  name,
  arete,
  dateAdded,
  weight,
  age,
}

/// Direction of sort
enum SortDirection {
  ascending,
  descending,
}

/// Advanced search criteria for animals
class SearchCriteria {
  /// Text search query (matches name or arete)
  final String query;

  /// Filter by life stages (categories)
  final List<String> categories;

  /// Filter by species
  final List<String> especies;

  /// Filter by sex
  final List<String> sexos;

  /// Filter by health status
  final HealthStatus healthStatus;

  /// Filter by location
  final String? location;

  /// Date range start (inclusive)
  final DateTime? dateFrom;

  /// Date range end (inclusive)
  final DateTime? dateTo;

  /// Weight range minimum (kg)
  final double? weightMin;

  /// Weight range maximum (kg)
  final double? weightMax;

  /// Sorting criteria
  final SearchSortBy sortBy;

  /// Sort direction
  final SortDirection sortDirection;

  /// Maximum results to return
  final int limit;

  /// Results offset for pagination
  final int offset;

  const SearchCriteria({
    this.query = '',
    this.categories = const [],
    this.especies = const [],
    this.sexos = const [],
    this.healthStatus = HealthStatus.all,
    this.location,
    this.dateFrom,
    this.dateTo,
    this.weightMin,
    this.weightMax,
    this.sortBy = SearchSortBy.name,
    this.sortDirection = SortDirection.ascending,
    this.limit = 50,
    this.offset = 0,
  });

  /// Create a copy with modified fields
  SearchCriteria copyWith({
    String? query,
    List<String>? categories,
    List<String>? especies,
    List<String>? sexos,
    HealthStatus? healthStatus,
    String? location,
    DateTime? dateFrom,
    DateTime? dateTo,
    double? weightMin,
    double? weightMax,
    SearchSortBy? sortBy,
    SortDirection? sortDirection,
    int? limit,
    int? offset,
  }) {
    return SearchCriteria(
      query: query ?? this.query,
      categories: categories ?? this.categories,
      especies: especies ?? this.especies,
      sexos: sexos ?? this.sexos,
      healthStatus: healthStatus ?? this.healthStatus,
      location: location ?? this.location,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      weightMin: weightMin ?? this.weightMin,
      weightMax: weightMax ?? this.weightMax,
      sortBy: sortBy ?? this.sortBy,
      sortDirection: sortDirection ?? this.sortDirection,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
    );
  }

  /// Check if any filters are applied (beyond default)
  bool hasActiveFilters() {
    return query.isNotEmpty ||
        categories.isNotEmpty ||
        especies.isNotEmpty ||
        sexos.isNotEmpty ||
        healthStatus != HealthStatus.all ||
        location != null ||
        dateFrom != null ||
        dateTo != null ||
        weightMin != null ||
        weightMax != null;
  }

  /// Reset to empty search
  SearchCriteria clearAll() {
    return const SearchCriteria();
  }

  @override
  String toString() => 'SearchCriteria('
      'query: "$query", '
      'categories: $categories, '
      'species: $especies, '
      'sexos: $sexos, '
      'health: $healthStatus, '
      'location: $location, '
      'dateFrom: $dateFrom, '
      'dateTo: $dateTo, '
      'weight: $weightMin-$weightMax, '
      'sort: $sortBy ($sortDirection)'
      ')';
}

/// Result from search operation
class SearchResult {
  /// List of matching animals
  final List<dynamic> animals;

  /// Total count of results (without pagination)
  final int totalCount;

  /// Current page/offset
  final int offset;

  /// Current search criteria
  final SearchCriteria criteria;

  /// Timestamp of search execution
  final DateTime executedAt;

  /// Time taken to execute search in milliseconds
  final int executionTimeMs;

  const SearchResult({
    required this.animals,
    required this.totalCount,
    required this.offset,
    required this.criteria,
    required this.executedAt,
    required this.executionTimeMs,
  });

  /// Has more results available
  bool get hasMore => offset + animals.length < totalCount;

  /// Current page number (1-indexed)
  int get pageNumber => (offset ~/ criteria.limit) + 1;

  /// Total pages available
  int get totalPages => (totalCount / criteria.limit).ceil();

  @override
  String toString() => 'SearchResult('
      'animals: ${animals.length}/$totalCount, '
      'page: $pageNumber/$totalPages, '
      'time: ${executionTimeMs}ms'
      ')';
}
