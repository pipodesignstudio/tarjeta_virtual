import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarjeta_sanitaria/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1200), () {
      Navigator.popAndPushNamed(context, Flurorouter.activationRoute);
    });

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                left: -120,
                child: Image.asset('assets/img/bubble-2.png')),
            Positioned(
              bottom: -100,
              right: -80,
              child: Image.asset('assets/img/bubble-2.png'),
            ),
            const _LogoImage()
          ],
        ),
      ),
    );
  }
}

class _LogoImage extends StatelessWidget {
  const _LogoImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: [
            Image.asset('assets/img/logo.png'),
            const SizedBox(
              height: 10,
            ),
            const CupertinoActivityIndicator()
          ],
        ),
      ),
    );
  }
}
