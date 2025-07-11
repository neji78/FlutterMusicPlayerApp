import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart'; // generated file

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init(); // init() is generated
