import 'package:fluro/fluro.dart';
import 'package:tarjeta_sanitaria/screens/screens.dart';

class Handlers {
  static Handler splash = Handler(handlerFunc: (context, __) {
    return const SplashScreen();
  });

  static Handler activation = Handler(handlerFunc: (context, __) {
    return const ActivationScreen();
  });
}
