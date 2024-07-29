import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale

  final List _shopItem = [
    //[item_name,item_pries,imagepath],
    ["shoes1", "1200", "assets/Adi2000 Schuh (1).jpeg"],
    ["shoes2", "5100", "assets/Malta High Top Sneakers Shoes Retro.jpeg"],
    ["shoes3", "1400", "assets/New Balance 2002R (1).jpeg"],
    ["shoes4", "1500", "assets/New Balance Unisex 2002R (1).jpeg"],
    ["shoes4", "1500", "assets/New Balance Unisex 2002R (1).jpeg"],
    ["shoes4", "1500", "assets/New Balance Unisex 2002R (1).jpeg"],
  ];
  // list of carted list
  List _CartItem = [];

  get shopeitem => _shopItem;
  get cartItem => _CartItem;
  // Add item
  void addItemtoCart(int index) {
    _CartItem.add(_shopItem[index]);
    notifyListeners();
  }
  // delete item

  void removeItemCart(int index) {
    _CartItem.removeAt(index);
    notifyListeners();
  }

  // Calculate total const

  String calculateTotal() {
    double Total = 0;
    for (var i = 0; i < cartItem.length; i++) {
      Total += double.parse(_CartItem[i][1]);
    }
    return Total.toStringAsFixed(2);
  }
}
