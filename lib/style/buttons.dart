import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  String text;
  Icon? icon;
  Function function;

  MainButton({Key? key, required this.text, required this.function, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
