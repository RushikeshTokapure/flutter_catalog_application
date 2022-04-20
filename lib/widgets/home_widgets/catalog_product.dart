import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/product.dart';
import '../themes.dart';
import 'catalog_image.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  final Product catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(DefaultTheme.indigo).bold.make(),
            catalog.desc.text.make(),
            18.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.color(DefaultTheme.white).make(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(DefaultTheme.indigo),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                ),
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
