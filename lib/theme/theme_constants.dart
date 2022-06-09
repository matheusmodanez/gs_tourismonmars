import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: Color.fromARGB(255, 209, 0, 118),
      onPrimary: Colors.white,
      textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Space Mono',
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
      fontFamily: 'Space Mono',
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: Color.fromARGB(255, 1, 50, 65),
      onPrimary: Colors.white,
      textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Space Mono',
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
      fontFamily: 'Space Mono',
    ),
  ),
);
