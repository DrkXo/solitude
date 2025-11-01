import '../error/error.dart';
import '../utils/utils.dart';

abstract class BaseService {
  final bool enableLogging;

  BaseService({
    this.enableLogging = false,
  });

  Future<T> executeDBOperation<T>(
    Future<T> Function() operation, {
    Exception Function(String)? exceptionFactory,
  }) async {
    try {
      if (enableLogging) {
        logger.debug('Executing DB operation: ${operation.toString()}');
      }
      return await operation();
    } catch (e) {
      if (enableLogging) {
        logger.error('Failed to execute DB operation: $e');
      }
      throw exceptionFactory?.call(e.toString()) ??
          DatabaseOperationError(e.toString());
    }
  }
}
