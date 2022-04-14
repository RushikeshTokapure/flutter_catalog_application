import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/login_page.dart';
import 'package:flutter_catalog/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // int i = 2;
  // String name = "Rushikesh";
  // double pi = 3.14;
  // bool isTrue = true;
  // num temp = 20.9;
  // var day = "Wednesday";
  // static const pie = 3.142;
  // final p = 3.1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
