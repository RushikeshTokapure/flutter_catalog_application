import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/product.dart';

import '../widgets/drawer.dart';
import '../widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int i = 2;

  final String name = "Rushikesh";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    print(decodeData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.products[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ProductWidget(
                product: dummyList[index],
              );
            }),
      ),
      drawer: HomeDrawer(),
    );
  }
}
