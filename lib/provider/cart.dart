import 'package:e_commerce_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectProducts = [];
  double price = 0;

  add(Item product) {
    selectProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selectProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }

  get itemCount {
    return selectProducts.length;
  }
}
