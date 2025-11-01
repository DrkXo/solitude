import 'app_error.dart';

/// Custom exception for reader operations
class ReaderException extends AppError {
  const ReaderException(super.message);
}