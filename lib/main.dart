import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/cart_page.dart';
import 'package:flutter_catalog/screens/login_page.dart';
import 'package:flutter_catalog/screens/home_page.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme.lightTheme(context),
      darkTheme: DefaultTheme.darkTheme(context),
      initialRoute: Routes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage(),
        Routes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
