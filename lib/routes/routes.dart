import 'package:fluro/fluro.dart';
import 'package:tarjeta_sanitaria/routes/handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  static String splashRoute = '/splash';
  static String activationRoute = '/activation';
  static String smsActivation1 = '/activation/sms/#1';

  static void configureRoutes() {
    router.define(rootRoute, handler: Handlers.splash);
    router.define(splashRoute, handler: Handlers.splash);
    router.define(activationRoute, handler: Handlers.activation);
    router.define(smsActivation1, handler: Handlers.smsActivation1);
  }
}
