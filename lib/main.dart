import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(const MyApp());
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
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
