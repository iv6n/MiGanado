import 'package:flutter/foundation.dart';
import 'dart:async';

/// Cache entry wrapper for offline-first capability
class CacheEntry<T> {
  final String key;
  final T value;
  final DateTime timestamp;
  final Duration ttl;
  final bool isFromCache;

  CacheEntry({
    required this.key,
    required this.value,
    required this.timestamp,
    required this.ttl,
    this.isFromCache = false,
  });

  /// Check if cache entry has expired
  bool get isExpired => DateTime.now().difference(timestamp) > ttl;

  /// Get remaining TTL
  Duration get remainingTtl {
    final remaining = ttl - DateTime.now().difference(timestamp);
    return remaining.isNegative ? Duration.zero : remaining;
  }
}

/// Comprehensive caching system with offline support
class CacheManager {
  static final CacheManager _instance = CacheManager._internal();

  factory CacheManager() => _instance;

  CacheManager._internal();

  // Memory cache
  final Map<String, CacheEntry> _memoryCache = {};

  // Offline cache (persisted)
  final Map<String, String> _offlineCache = {};

  // Configuration
  static const Duration defaultTtl = Duration(minutes: 30);
  static const Duration maxMemoryCacheSize = Duration(hours: 1);
  static const int maxCacheEntries = 1000;

  // State
  bool _isOnline = true;
  late StreamController<bool> _onlineStatusController;
  late Timer _cleanupTimer;
  @pragma('vm:prefer-inline')

  // Statistics
  int _hits = 0;
  int _misses = 0;
  int _offlineFallbacks = 0;

  /// Initialize cache manager
  static Future<void> initialize() async {
    await _instance._initialize();
  }

  Future<void> _initialize() async {
    try {
      _onlineStatusController = StreamController<bool>.broadcast();

      // Setup cleanup timer (runs every 5 minutes)
      _cleanupTimer = Timer.periodic(const Duration(minutes: 5), (_) {
        _cleanup();
      });
    } catch (e) {
      if (kDebugMode) {
        print('Cache initialization error: $e');
      }
    }
  }

  /// Set online status (typically updated from connectivity check)
  static void setOnlineStatus(bool isOnline) {
    if (_instance._isOnline != isOnline) {
      _instance._isOnline = isOnline;
      _instance._onlineStatusController.add(isOnline);
    }
  }

  /// Get online status stream
  static Stream<bool> get onlineStatusStream =>
      _instance._onlineStatusController.stream;

  /// Get current online status
  static bool get isOnline => _instance._isOnline;

  /// Put value in cache with TTL
  static void put<T>(
    String key,
    T value, {
    Duration? ttl,
    bool persist = false,
  }) {
    _instance._put(key, value, ttl: ttl ?? defaultTtl, persist: persist);
  }

  void _put<T>(
    String key,
    T value, {
    required Duration ttl,
    required bool persist,
  }) {
    // Check cache size limit
    if (_memoryCache.length >= maxCacheEntries) {
      _evictOldest();
    }

    final entry = CacheEntry(
      key: key,
      value: value,
      timestamp: DateTime.now(),
      ttl: ttl,
      isFromCache: false,
    );

    _memoryCache[key] = entry;

    // Persist to offline cache if requested
    if (persist && value != null) {
      _offlineCache[key] = value.toString();
    }
  }

  /// Get value from cache (with offline fallback)
  static T? get<T>(String key) {
    return _instance._get<T>(key);
  }

  T? _get<T>(String key) {
    // Try memory cache first
    if (_memoryCache.containsKey(key)) {
      final entry = _memoryCache[key];
      if (entry != null && !entry.isExpired) {
        _hits++;
        return entry.value as T?;
      } else {
        _memoryCache.remove(key);
      }
    }

    _misses++;

    // Fall back to offline cache if available
    if (_offlineCache.containsKey(key) && !_isOnline) {
      _offlineFallbacks++;
      // Return cached string value
      return _offlineCache[key] as T?;
    }

    return null;
  }

  /// Remove entry from cache
  static void remove(String key) {
    _instance._memoryCache.remove(key);
    _instance._offlineCache.remove(key);
  }

  /// Clear all caches
  static void clear() {
    _instance._memoryCache.clear();
    _instance._offlineCache.clear();
  }

  /// Clear memory cache only
  static void clearMemory() {
    _instance._memoryCache.clear();
  }

  /// Evict oldest cache entry
  void _evictOldest() {
    if (_memoryCache.isEmpty) return;

    String? oldestKey;
    DateTime? oldestTime;

    for (final entry in _memoryCache.entries) {
      if (oldestTime == null || entry.value.timestamp.isBefore(oldestTime)) {
        oldestKey = entry.key;
        oldestTime = entry.value.timestamp;
      }
    }

    if (oldestKey != null) {
      _memoryCache.remove(oldestKey);
    }
  }

  /// Cleanup expired entries
  void _cleanup() {
    _memoryCache.removeWhere((_, entry) => entry.isExpired);
  }

  /// Get cache statistics
  static Map<String, dynamic> getStats() => {
        'memoryCacheSize': _instance._memoryCache.length,
        'offlineCacheSize': _instance._offlineCache.length,
        'hits': _instance._hits,
        'misses': _instance._misses,
        'hitRate': _instance._hits + _instance._misses > 0
            ? (_instance._hits / (_instance._hits + _instance._misses) * 100)
                .toStringAsFixed(2)
            : '0.00',
        'offlineFallbacks': _instance._offlineFallbacks,
        'isOnline': _instance._isOnline,
      };

  /// Get cache size in bytes (estimate)
  static int getCacheSizeBytes() {
    int size = 0;
    for (final entry in _instance._memoryCache.values) {
      size += entry.key.length + entry.value.toString().length;
    }
    return size;
  }

  /// Cleanup resources
  static Future<void> dispose() async {
    _instance._cleanupTimer.cancel();
    await _instance._onlineStatusController.close();
  }
}

/// Repository mixin for cache-aware data operations
mixin CacheAwareMixin {
  /// Get data from cache or fetch if missing
  Future<T> getCached<T>(
    String cacheKey,
    Future<T> Function() fetch, {
    Duration? ttl,
    bool persist = false,
  }) async {
    // Check cache first
    final cached = CacheManager.get<T>(cacheKey);
    if (cached != null) {
      return cached;
    }

    // Fetch if not in cache
    try {
      final data = await fetch();
      CacheManager.put(cacheKey, data, ttl: ttl, persist: persist);
      return data;
    } catch (e) {
      // If offline, try offline cache
      if (!CacheManager.isOnline) {
        final offlineCached = CacheManager.get<T>(cacheKey);
        if (offlineCached != null) {
          return offlineCached;
        }
      }
      rethrow;
    }
  }

  /// Invalidate cache entry
  void invalidateCache(String cacheKey) {
    CacheManager.remove(cacheKey);
  }

  /// Invalidate cache pattern (e.g., 'animals_*')
  void invalidateCachePattern(String pattern) {
    // This would need implementation with pattern matching
    CacheManager.clear();
  }
}
