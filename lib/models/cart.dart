import 'package:android_app/models/catalogue.dart';

class CartModel {
 static final  cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;
  //catalogue field
  CatalogueModel _catalogue;

  //collection of ID's-store ID's of each item

   final List<int> _itemIds = [];

  //Get Catalogue
  CatalogueModel get catalogue => _catalogue;


  set catalogue(CatalogueModel newCatalogue) {
    // assert(newCatalogue != null);
    _catalogue = newCatalogue;
  }

  //Get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalogue.getById(id)).toList();

  //Get total price
  int get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
