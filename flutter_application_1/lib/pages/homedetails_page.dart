// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar:
            ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
          "\$${catalog.price}".text.xl2.white.bold.make().p16(),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
            onPressed: () {},
            child: Icon(CupertinoIcons.cart_badge_plus),
          )
        ]),
        body: SafeArea(
          child: Column(children: [
            Hero(
                tag: Key(catalog.id).toString(),
                child: Image.network(catalog.image).centered().p16()),
            Expanded(
                child: VxArc(
              height: 10,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  (catalog.name.text.xl5.italic.make()),
                  (catalog.desc.text.xl.textStyle(context.captionStyle).make()),
                  "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
                      .text
                      .make()
                      .p16(),
                ]),
              ),
            ))
          ]),
        ));
  }
}
