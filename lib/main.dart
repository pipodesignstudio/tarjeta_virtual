import 'package:flutter/material.dart';
import 'package:tarjeta_sanitaria/routes/routes.dart';

void main() async {
  Flurorouter.configureRoutes();
  runApp(const TarjetaSanitariaApp());
}

class TarjetaSanitariaApp extends StatelessWidget {
  const TarjetaSanitariaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarjeta Sanitaria Virtual',
      debugShowCheckedModeBanner: false,
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
