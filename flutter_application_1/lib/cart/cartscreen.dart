import 'package:flutter/material.dart';
import 'package:flutter_application_1/tools/tools.dart';

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

class CartScreen extends StatelessWidget {
  static List<Food> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Sushi'),
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
          // Tambahkan widget atau desain lainnya di sini sesuai kebutuhan

          // Gunakan ListView.builder untuk menampilkan gambar dari setiap item di keranjang
         

          // Daftar item di keranjang
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$${cartItems[index].price}'),
                      Text(cartItems[index].ket),
                    ],
                  ),
                  leading: Image.asset(
                    cartItems[index].imagepath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
