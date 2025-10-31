part of 'utils.dart';

@module
abstract class Logger {
  @singleton
  Talker get logger => Talker();
}

Talker get logger => sl.get<Talker>();
