import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String price;
  final String imagepath;
  final String ket;

  CartItem({
    required this.name,
    required this.price,
    required this.imagepath,
    required this.ket,
  });
}

class CartScreen extends StatefulWidget {
  static List<CartItem> cartItems = [];
  static List<CartItem> historyItems = [];

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
        title: Text('cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: CartScreen.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(CartScreen.cartItems[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$${CartScreen.cartItems[index].price}'),
                      Text(CartScreen.cartItems[index].ket),
                    ],
                  ),
                  leading: Image.asset(
                    CartScreen.cartItems[index].imagepath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Hapus item dari keranjang
                      setState(() {
                        CartScreen.cartItems.removeAt(index);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Item dihapus dari keranjang'),
                          ),
                        );
                      });
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Tambahkan item ke riwayat dan hapus dari keranjang
              addToHistory(context);
            },
            child: Text('Add to History'),
          ),
        ],
      ),
    );
  }

  void addToHistory(BuildContext context) {
    if (CartScreen.cartItems.isNotEmpty) {
      // Add all items in the cart to history
      CartScreen.historyItems.addAll(CartScreen.cartItems);

      // Show a snackbar as a notification
      ScaffoldMessenger.of(context)
          .showSnackBar(
            SnackBar(
              content: Text('Items added to history'),
            ),
          )
          .closed
          .then((reason) {
        // Clear the cart after the snackbar is closed
        setState(() {
          CartScreen.cartItems.clear();
        });
      });
    } else {
      // Show a snackbar if the cart is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Cart is empty. Nothing added to history.'),
        ),
      );
    }
  }
}
