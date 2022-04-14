import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int i = 2;
  final String name = "Rushikesh";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
