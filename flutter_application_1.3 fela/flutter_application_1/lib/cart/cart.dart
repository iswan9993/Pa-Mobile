

import 'package:flutter_application_1/tools/tools.dart';

class Cart {
  List<Food> items = [];

  void addToCart(Food food) {
    items.add(food);
  }

  void removeFromCart(Food food) {
    items.remove(food);
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in items) {
      total +=
          double.parse(item.price.replaceAll("Rp.", "").replaceAll(",", ""));
    }
    return total;
  }
}
