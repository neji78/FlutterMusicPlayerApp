import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class LoggerModule {
  @lazySingleton
  Logger provideLogger() => Logger(
    level: Level.debug,
    printer: PrettyPrinter(
      methodCount: 2,
      colors: true,
      printEmojis: true,
    ),
  );
}
