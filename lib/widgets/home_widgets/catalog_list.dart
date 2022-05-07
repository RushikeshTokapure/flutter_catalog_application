import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/detail_page.dart';

import '../../models/product.dart';
import 'catalog_product.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(catalog: catalog),
            ),
          ),
          child: CatalogProduct(
            catalog: catalog,
          ),
        );
      },
      itemCount: CatalogModel.products?.length,
      shrinkWrap: true,
    );
  }
}
