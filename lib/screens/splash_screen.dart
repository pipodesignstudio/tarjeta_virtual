import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset('assets/img/logo.png'),
                const SizedBox(
                  height: 10,
                ),
                const CupertinoActivityIndicator()
              ],
            ),
          )
        ],
      ),
    );
  }
}
