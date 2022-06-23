import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:share_recipies/di/service_locator.config.dart';

final sl = GetIt.instance;

@injectableInit
Future setupDependencyInjection() async {
  $initGetIt(sl);
}
