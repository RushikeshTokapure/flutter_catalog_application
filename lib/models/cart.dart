import 'package:flutter_catalog/models/product.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalogModel;

  //collection of ids - store ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalogModel;
  
  //set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalogModel = newCatalog;
  }

  //get items to cart
  List<Product> get products =>
      _itemIds.map((id) => CatalogModel.getById(id)).toList();

  //get total price
  num get totalPrice =>
      products.fold(0, (total, current) => total + current.price);

  //add item
  void add(Product product) {
    _itemIds.add(product.id);
  }

  //remove item
  void remove(Product product) {
    _itemIds.remove(product.id);
  }
}
