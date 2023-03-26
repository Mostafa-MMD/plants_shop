import 'package:flutter/material.dart';
import 'package:plants_shop/model/item.dart';

class Cart with ChangeNotifier {
  List selectedProduct = [];
  double price = 0;

  add(Item product) {
    selectedProduct.add(product);
    price += product.price;
    notifyListeners();
  }
  remove(Item product){
    selectedProduct.remove(product);
    price -= product.price;
    notifyListeners();
  }
}
