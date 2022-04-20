import 'package:flutter/material.dart';

import 'package:flutter_catalog/models/product.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final Product catalog;

  const DetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl4.make(),
          ElevatedButton(
            onPressed: () {},
            child: "Buy".text.color(DefaultTheme.white).xl2.make(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(DefaultTheme.indigo),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ).wh(100, 60),
        ],
      ).p64(),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(
            child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3
                        .color(DefaultTheme.indigo)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
