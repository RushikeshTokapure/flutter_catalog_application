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
    await Future.delayed(Duration(seconds: 4));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.products = List.from(productsData)
        .map<Product>((product) => Product.fromMap(product))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            (CatalogModel.products != null && CatalogModel.products!.isNotEmpty)
                ? ListView.builder(
                    itemCount: CatalogModel.products!.length,
                    itemBuilder: (context, index) => ProductWidget(
                      product: CatalogModel.products![index],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: HomeDrawer(),
    );
  }
}
