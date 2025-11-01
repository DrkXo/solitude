/// Base exception class for application errors
abstract class AppError implements Exception {
  const AppError(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

abstract class LocalDbError extends AppError {
  const LocalDbError(super.message);
}

class DatabaseOperationError extends LocalDbError {
  const DatabaseOperationError(super.message);
}
