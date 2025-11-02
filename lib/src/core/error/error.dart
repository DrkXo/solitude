/// Base exception class for application errors
abstract class AppError implements Exception {
  const AppError(this.message, [this.errorCode]);

  final String message;
  final String? errorCode;

  @override
  String toString() => errorCode != null
      ? '$runtimeType($errorCode): $message'
      : '$runtimeType: $message';
}

abstract class LocalDbError extends AppError {
  const LocalDbError(super.message, [super.errorCode]);
}

class DatabaseOperationError extends LocalDbError {
  const DatabaseOperationError(super.message, [super.errorCode]);
}

/// Custom exception for library operations
class EbookLibraryException extends AppError {
  const EbookLibraryException(super.message, [super.errorCode]);
}

/// Custom exception for reader operations
class ReaderException extends AppError {
  const ReaderException(super.message, [super.errorCode]);
}
