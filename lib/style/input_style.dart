import 'package:flutter/material.dart';
import 'package:tarjeta_sanitaria/style/custom_colors.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    String? hintText,
    String? labelText,
    IconData? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColors.textColor),
        fillColor: CustomColors.greyLight,
        filled: true,
        hoverColor: CustomColors.textColor,
        focusColor: CustomColors.textColor,
        labelText: labelText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        labelStyle: TextStyle(color: CustomColors.textColor),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: CustomColors.textColor)
            : null,
        suffixIcon: suffixIcon,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.accent, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ));
  }
}
