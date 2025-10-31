/// Base exception class for application errors
abstract class AppError implements Exception {
  const AppError(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}