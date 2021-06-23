import 'package:flutter/material.dart';

const basilBackground = const Color(0xfffffbe6);
const basilGreen = const Color(0xff356859);
const basilLightGreen = const Color(0xfff1f5df);
const basilOlive = const Color(0xff37966f);
const basilOrange = const Color(0xfffd5523);

ThemeData basilTheme() {
  return ThemeData(
    // Colors.
    brightness: Brightness.light,
    scaffoldBackgroundColor: basilBackground,
    backgroundColor: basilBackground,
    primaryColor: basilGreen,
    accentColor: basilOrange,
    // Fonts.
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilOrange,
      ),
      headline2: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      headline3: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      headline4: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      headline5: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      headline6: TextStyle(
        fontSize: 24,
        height: 1.5,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lekton',
        color: basilGreen,
      ),
      subtitle1: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lekton',
        color: basilGreen,
      ),
      subtitle2: TextStyle(
        fontSize: 15,
        fontFamily: 'Lekton',
        color: basilGreen,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
      overline: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: basilGreen,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: basilBackground.withOpacity(0.8),
    ),
  );
}