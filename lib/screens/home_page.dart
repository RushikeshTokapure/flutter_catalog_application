import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/product.dart';

import '../widgets/drawer.dart';
import '../widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  final int i = 2;
  final String name = "Rushikesh";

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
