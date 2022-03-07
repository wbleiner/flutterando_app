import 'package:flutter/material.dart';
import 'package:flutterando_app/theme/colors_custom.dart';

class ThemeCustom {
  static ThemeData dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsCustom.backgroundDark,
      elevation: 0,
    ),
    brightness: Brightness.dark,
    primaryColor: ColorsCustom.primary,
    highlightColor: ColorsCustom.highlightDark,
    backgroundColor: ColorsCustom.backgroundDark,
    scaffoldBackgroundColor: ColorsCustom.backgroundDark,
    cardTheme: const CardTheme(
      color: ColorsCustom.cardDark,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsCustom.backgroundDark,
      unselectedItemColor: ColorsCustom.highlightDark,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorsCustom.highlightDark,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorsCustom.highlightDark,
      ),
      headline3: TextStyle(
        //Description
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: ColorsCustom.highlightDark,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.description,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.highlightDark,
      ),
      headline6: TextStyle(
        // Montserrat, regular12
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.description,
      ),
      button: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        color: ColorsCustom.textButtonColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: ColorsCustom.backgroundLight,
      elevation: 0,
    ),
    brightness: Brightness.light,
    primaryColor: ColorsCustom.primary,
    highlightColor: ColorsCustom.highlightLight,
    backgroundColor: ColorsCustom.backgroundLight,
    scaffoldBackgroundColor: ColorsCustom.backgroundLight,
    cardTheme: const CardTheme(
      color: ColorsCustom.cardLight,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsCustom.backgroundLight,
      unselectedItemColor: ColorsCustom.highlightLight,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorsCustom.highlightLight,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorsCustom.highlightLight,
      ),
      headline3: TextStyle(
        //Description
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: ColorsCustom.highlightLight,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.description,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.highlightLight,
      ),
      headline6: TextStyle(
        // Montserrat, regular
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsCustom.description,
      ),
      button: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        color: ColorsCustom.textButtonColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
