//

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cart.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';

// history_page.dart
class HistoryPage extends StatelessWidget {
  final List<CartItem> historyItems;

  HistoryPage({required this.historyItems});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
        title: Text('History'),
      ),
      body: ListView.builder(
        itemCount: CartScreen.historyItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(CartScreen.historyItems[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$${CartScreen.historyItems[index].price}'),
                Text(CartScreen.historyItems[index].ket),
              ],
            ),
            leading: Image.asset(
              CartScreen.historyItems[index].imagepath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
  ));
}
