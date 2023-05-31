import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;
  final List<int> _ItemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _ItemIds.map((id) => _catalog.getById(id)).toList();

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _ItemIds.add(item.id as int);
  }

  void remove(Item item) {
    _ItemIds.remove(item.id);
  }
}
