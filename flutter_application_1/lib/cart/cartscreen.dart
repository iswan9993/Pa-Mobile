import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_Details_Page.dart';
import 'package:flutter_application_1/tools/tools.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Food> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$${cartItems[index].price.toString()}'),
                Text(cartItems[index].ket),
              ],
            ),
          );
        },
      ),
    );
  }
}
