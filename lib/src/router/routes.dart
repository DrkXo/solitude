part of 'app_router.dart';

enum AppRoutes {
  library('library', '/library'),
  reader('reader', ':ebookId'),
  settings('settings', '/settings')
  // chapter('chapter', ':chapterIndex'),
  ;

  final String name;
  final String path;
  const AppRoutes(this.name, this.path);

  @override
  String toString() => name;

  static AppRoutes? fromPath(String path) {
    for (final route in AppRoutes.values) {
      if (route.path == path) {
        return route;
      }
    }
    return null;
  }

  static AppRoutes? fromName(String name) {
    for (final route in AppRoutes.values) {
      if (route.name == name) {
        return route;
      }
    }
    return null;
  }

  static AppRoutes? fromIndex(int index) {
    if (index < AppRoutes.values.length) {
      return AppRoutes.values[index];
    }
    return null;
  }
}
