import '../error/error.dart';

abstract class BaseService {
  Future<T> executeDBOperation<T>(
    Future<T> Function() operation, {
    Exception Function(String)? exceptionFactory,
  }) async {
    try {
      return await operation();
    } catch (e) {
      throw exceptionFactory?.call(e.toString()) ?? DatabaseOperationError(e.toString());
    }
  }
}
