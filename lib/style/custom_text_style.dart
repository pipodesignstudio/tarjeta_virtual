import 'package:flutter/material.dart';
import 'package:tarjeta_sanitaria/style/custom_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle h1 = GoogleFonts.firaSans(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: CustomColors.headingColor,
      decoration: TextDecoration.none);
  static TextStyle h5 = GoogleFonts.firaSans(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: CustomColors.headingColor,
      decoration: TextDecoration.none);
  static TextStyle p = GoogleFonts.firaSans(
      fontSize: 16,
      color: CustomColors.textColor,
      decoration: TextDecoration.none);
  static TextStyle caption = GoogleFonts.firaSans(
      fontSize: 14,
      color: CustomColors.textColor,
      decoration: TextDecoration.none);
}
