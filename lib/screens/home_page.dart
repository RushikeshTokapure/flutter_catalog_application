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
    await Future.delayed(Duration(seconds: 2));
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
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      var product = CatalogModel.products![index];
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: GridTile(
                          child: Image.network(product.image),
                          header: Container(
                            child: Text(
                              product.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                          ),
                          footer: Container(
                            child: Text(
                              product.price.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.deepPurple),
                          ),
                        ),
                      );
                    },
                    itemCount: CatalogModel.products?.length,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: HomeDrawer(),
    );
  }
}
