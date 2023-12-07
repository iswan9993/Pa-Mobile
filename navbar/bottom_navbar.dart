import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/home/favorite.dart';
import 'package:flutter_application_1/home/history_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/favoriteprovider.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      color: Color.fromARGB(255, 78, 48, 138),
      animationDuration: Duration(milliseconds: 300),
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the CartScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            );
          },
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the HistoryPage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HistoryPage(
                  historyItems: CartScreen.historyItems,
                ),
              ),
            );
          },
          child: Icon(
            Icons.history,
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the FavoritePage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    FavoritePage(), // Ganti FavoritePage dengan nama halaman favorit Anda
              ),
            );
          },
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
