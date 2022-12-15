import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeColor {
  AppThemeColor._();
  static const darkPink = Color(0xFFff59c7);
  static const black = Color.fromARGB(255, 18, 17, 17);
  static const lightPink = Color(0xffff76d8);

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  static ThemeData pinkTheme() {
    return ThemeData(textTheme: lightTextTheme, useMaterial3: true);
  }
}
