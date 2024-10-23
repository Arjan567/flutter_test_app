import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 178, 3, 3),
    ),
    useMaterial3: true,
    fontFamily: "karla",

    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),

    //there have elevatedbuttonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(350, 50)),
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: WidgetStateProperty.all(Colors.red),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        side: WidgetStateProperty.all(const BorderSide(color: Colors.red)),
      ),
    ),
    //there have input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red)
          // Color.fromARGB(228, 228, 228, 0.6)
          ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey,
          //width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey, // Color when focused
          //  width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red, // Color when error
          // width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      fillColor: const Color.fromRGBO(153, 153, 153, 0.05),
    ),
  );
}
