// import 'package:basic_to_advance/Pages/home_page.dart';
import 'package:basic_to_advance/Pages/home_page.dart';
import 'package:basic_to_advance/Pages/login_page.dart';
import 'package:basic_to_advance/utlis/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => loginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // "/login": (context) => HomePage()
      },
    );
  }
}
