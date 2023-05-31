import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Addtocart extends StatelessWidget {
  final Item catalog;
  Addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as Mystore).cart;
    bool isadded = _cart.items.contains(catalog);
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        onPressed: () {
          isadded = isadded.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(catalog);
          //setState(() {});
        },
        child:
            isadded ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
