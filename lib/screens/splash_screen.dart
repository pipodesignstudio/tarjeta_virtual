import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [const _LogoImage()],
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

class _SplashBubble extends StatelessWidget {
  _SplashBubble(
      {required this.bubble,
      required this.bottom,
      required this.left,
      required this.right,
      required this.top});

  String bubble;
  double bottom;
  double left;
  double right;
  double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Image.asset('assets/img/$bubble'),
    );
  }
}
