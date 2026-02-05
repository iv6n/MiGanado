import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:async';
import 'package:intl/intl.dart';

/// Log levels for structured logging
enum LogLevel { debug, info, warning, error, critical }

/// Structured log entry
class LogEntry {
  final DateTime timestamp;
  final LogLevel level;
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;
  final Map<String, dynamic>? context;

  LogEntry({
    required this.timestamp,
    required this.level,
    required this.message,
    this.error,
    this.stackTrace,
    this.context,
  });

  /// Convert to formatted string for file storage
  String toFormattedString() {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final timeStr = formatter.format(timestamp);
    final levelStr = level.toString().split('.').last.toUpperCase();

    String result = '[$timeStr] [$levelStr] $message';

    if (error != null) {
      result += '\n  Error: $error';
    }

    if (stackTrace != null && kDebugMode) {
      result += '\n  StackTrace:\n$stackTrace';
    }

    if (context != null && context!.isNotEmpty) {
      result += '\n  Context: $context';
    }

    return result;
  }

  /// Convert to JSON for analytics
  Map<String, dynamic> toJson() => {
        'timestamp': timestamp.toIso8601String(),
        'level': level.toString().split('.').last,
        'message': message,
        'error': error?.toString(),
        'context': context,
      };
}

/// Enhanced Logger Service with file persistence and analytics
class LoggerService {
  static final LoggerService _instance = LoggerService._internal();

  factory LoggerService() => _instance;

  LoggerService._internal();

  // Configuration
  static const int maxLogFileSize = 10 * 1024 * 1024; // 10 MB
  static const int maxLogFiles = 5;
  static const Duration logRetention = Duration(days: 7);

  // State
  late File _currentLogFile;
  final List<LogEntry> _logBuffer = [];
  final List<LogEntry> _allLogs = [];
  late Timer _flushTimer;
  bool _initialized = false;

  // Statistics
  int _debugCount = 0;
  int _infoCount = 0;
  int _warningCount = 0;
  int _errorCount = 0;
  int _criticalCount = 0;

  /// Initialize logger with file storage
  static Future<void> initialize(String logDir) async {
    await _instance._initialize(logDir);
  }

  Future<void> _initialize(String logDir) async {
    try {
      final directory = Directory(logDir);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      _currentLogFile = File(
          '$logDir/miganado_${DateTime.now().toIso8601String().split('T')[0]}.log');

      // Cleanup old logs
      await _cleanupOldLogs(logDir);

      // Setup periodic flush
      _flushTimer = Timer.periodic(const Duration(seconds: 10), (_) {
        _flush();
      });

      _initialized = true;
      _log(LogLevel.info, '✓ Logger initialized',
          context: {'logFile': _currentLogFile.path});
    } catch (e, st) {
      if (kDebugMode) {
        print('Logger initialization error: $e\n$st');
      }
    }
  }

  /// Log debug message
  static void debug(String message, [dynamic error, StackTrace? stackTrace]) {
    _instance._log(LogLevel.debug, message,
        error: error, stackTrace: stackTrace);
  }

  /// Log info message
  static void info(String message, [Map<String, dynamic>? context]) {
    _instance._log(LogLevel.info, message, context: context);
  }

  /// Log warning message
  static void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    _instance._log(LogLevel.warning, message,
        error: error, stackTrace: stackTrace);
  }

  /// Log error message
  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _instance._log(LogLevel.error, message,
        error: error, stackTrace: stackTrace);
  }

  /// Log critical error
  static void critical(String message,
      [dynamic error, StackTrace? stackTrace]) {
    _instance._log(LogLevel.critical, message,
        error: error, stackTrace: stackTrace);
  }

  /// Internal logging method
  void _log(
    LogLevel level,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
    Map<String, dynamic>? context,
  }) {
    final entry = LogEntry(
      timestamp: DateTime.now(),
      level: level,
      message: message,
      error: error,
      stackTrace: stackTrace,
      context: context,
    );

    _allLogs.add(entry);
    _logBuffer.add(entry);

    // Update statistics
    switch (level) {
      case LogLevel.debug:
        _debugCount++;
        break;
      case LogLevel.info:
        _infoCount++;
        break;
      case LogLevel.warning:
        _warningCount++;
        break;
      case LogLevel.error:
        _errorCount++;
        break;
      case LogLevel.critical:
        _criticalCount++;
        break;
    }

    // Console output in debug mode
    if (kDebugMode) {
      print(entry.toFormattedString());
    }

    // Check if buffer needs flushing (size or critical error)
    if (_logBuffer.length >= 50 || level == LogLevel.critical) {
      _flush();
    }
  }

  /// Flush logs to file
  void _flush() {
    if (!_initialized || _logBuffer.isEmpty) return;

    try {
      final lines = _logBuffer.map((e) => e.toFormattedString()).toList();
      _currentLogFile.writeAsStringSync(
        '${lines.join('\n')}\n',
        mode: FileMode.append,
      );
      _logBuffer.clear();

      // Check file size and rotate if needed
      _checkAndRotateLog();
    } catch (e) {
      if (kDebugMode) {
        print('Error flushing logs: $e');
      }
    }
  }

  /// Check log file size and rotate if necessary
  void _checkAndRotateLog() {
    try {
      if (_currentLogFile.existsSync()) {
        final size = _currentLogFile.lengthSync();
        if (size > maxLogFileSize) {
          // Rename current file and create new one
          final timestamp =
              DateTime.now().toIso8601String().replaceAll(':', '-');
          final parent = _currentLogFile.parent;
          _currentLogFile
              .renameSync('${parent.path}/miganado_$timestamp.log');

          // Create new log file
          _currentLogFile = File('${parent.path}/miganado_current.log');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error rotating logs: $e');
      }
    }
  }

  /// Clean up old log files
  Future<void> _cleanupOldLogs(String logDir) async {
    try {
      final directory = Directory(logDir);
      if (!directory.existsSync()) return;

      final files = directory
          .listSync()
          .whereType<File>()
          .where((f) => f.path.endsWith('.log'))
          .toList();

      // Sort by modification time (oldest first)
      files.sort(
          (a, b) => a.statSync().modified.compareTo(b.statSync().modified));

      // Remove files older than retention period
      final cutoffDate = DateTime.now().subtract(logRetention);
      for (final file in files) {
        if (file.statSync().modified.isBefore(cutoffDate)) {
          await file.delete();
        }
      }

      // Keep only maxLogFiles
      if (files.length > maxLogFiles) {
        for (int i = 0; i < files.length - maxLogFiles; i++) {
          await files[i].delete();
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error cleaning up logs: $e');
      }
    }
  }

  /// Get log statistics
  static Map<String, dynamic> getStats() => {
        'totalLogs': _instance._allLogs.length,
        'debug': _instance._debugCount,
        'info': _instance._infoCount,
        'warning': _instance._warningCount,
        'error': _instance._errorCount,
        'critical': _instance._criticalCount,
        'logFile': _instance._currentLogFile.path,
      };

  /// Get recent logs
  static List<LogEntry> getRecentLogs([int limit = 100]) {
    final start =
        (_instance._allLogs.length - limit).clamp(0, _instance._allLogs.length);
    return _instance._allLogs.sublist(start);
  }

  /// Export logs to JSON
  static Future<String> exportLogsAsJson() async {
    final logs = _instance._allLogs.map((e) => e.toJson()).toList();
    return _jsonEncode(logs);
  }

  /// Cleanup resources
  static Future<void> dispose() async {
    _instance._flush();
    _instance._flushTimer.cancel();
  }

  /// Simple JSON encoder
  static String _jsonEncode(dynamic obj) {
    if (obj is List) {
      return '[${obj.map(_jsonEncode).join(',')}]';
    } else if (obj is Map) {
      final pairs =
          obj.entries.map((e) => '"${e.key}":${_jsonEncode(e.value)}');
      return '{${pairs.join(',')}}';
    } else if (obj is String) {
      return '"${obj.replaceAll('"', '\\"')}"';
    } else {
      return obj.toString();
    }
  }
}
