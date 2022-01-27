import 'package:fluro/fluro.dart';
import 'package:tarjeta_sanitaria/screens/screens.dart';
import 'package:tarjeta_sanitaria/screens/sms_activation/step_1.dart';

class Handlers {
  static Handler splash = Handler(handlerFunc: (context, __) {
    return const SplashScreen();
  });

  static Handler activation = Handler(handlerFunc: (context, __) {
    return const ActivationScreen();
  });
  static Handler smsActivation1 = Handler(handlerFunc: (context, __) {
    return const SmsActivation1();
  });
}
