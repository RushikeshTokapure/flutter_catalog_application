import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/login_page.dart';
import 'package:flutter_catalog/screens/home_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
