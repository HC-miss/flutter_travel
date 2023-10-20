import 'package:flutter/material.dart';

abstract class Constants {
  static String appName = "Flutter Travel";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color lightAccent = Colors.blueGrey[900]!;
  static Color lightBG = Color(0xfffcfcff);

  static Color darkPrimary = Colors.black;
  static Color darkAccent = Colors.white;
  static Color darkBG = Colors.black;

  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: lightPrimary,
      iconTheme: IconThemeData(
        color: darkBG,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      backgroundColor: lightBG,
      accentColor: lightAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: lightBG,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      backgroundColor: darkBG,
      accentColor: darkAccent,
    ),
  );
}
