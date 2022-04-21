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
      backgroundColor: DefaultTheme.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl4.make(),
          ElevatedButton(
            onPressed: () {},
            child: "Add to Cart".text.color(DefaultTheme.white).xl.make(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(DefaultTheme.gray),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ).wh(140, 60),
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
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl3
                          .color(DefaultTheme.gray)
                          .bold
                          .make(),
                      catalog.desc.text.xl.make(),
                      10.heightBox,
                      "lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor"
                          .text
                          .make()
                          .p16(),
                    ],
                  ).py32(),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
