
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/cart/cart.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/tools/tools.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.deepPurple.shade200,
      color: Colors.deepPurple,
      animationDuration: Duration(milliseconds: 300),
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the CartScreen (cartApp)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            );
          },
          child: Icon(
            Icons.restaurant,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
        )
      ],
    );
  }
}
