import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${product.name} pressed");
        },
        leading: Image.network(product.image),
        title: Text(product.name),
        subtitle: Text(product.desc),
        trailing: Text(
          "\$${product.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
