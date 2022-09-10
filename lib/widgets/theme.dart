import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.white,
      ));
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
