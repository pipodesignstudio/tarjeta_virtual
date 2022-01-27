import 'package:fluro/fluro.dart';
import 'package:tarjeta_sanitaria/routes/handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  static String splashRoute = '/splash';
  static String activationRoute = '/activation';

  static void configureRoutes() {
    router.define(rootRoute, handler: Handlers.splash);
    router.define(splashRoute, handler: Handlers.splash);
    router.define(activationRoute, handler: Handlers.activation);
  }
}
