import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: const Color(0xFFFFF0F6),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(
      255,
      109,
      74,
      62,
    ), // Marrón tipo chocolate claro
    foregroundColor: Colors.white, // texto e íconos
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.purple,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.purple.shade800,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.purple,
  ).copyWith(secondary: Colors.pinkAccent),
);
