export 'app_error.dart';
export 'ebook_library_exception.dart';
export 'reader_exception.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}