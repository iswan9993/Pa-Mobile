import 'package:flutter/material.dart';
import 'package:flutter_application_1/tools/tools.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Food> _favoriteItems = [];

  List<Food> get favoriteItems => _favoriteItems;

  // Fungsi untuk menambahkan item ke favorit
  void addToFavorite(Food food) {
    _favoriteItems.add(food);
    notifyListeners();
  }

  // Fungsi untuk menghapus item dari favorit
  void removeFromFavorite(Food food) {
    _favoriteItems.remove(food);
    notifyListeners();
  }
}
