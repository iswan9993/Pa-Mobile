import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/tools/tools.dart';


class FoodDetailsPage extends StatelessWidget {
  final Food food;

  const FoodDetailsPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Tambahkan makanan ke keranjang saat tombol "Add to Cart" diklik
              addToCart(context, food);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                food.imagepath,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            food.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.lightBlueAccent),
          ),
          Text('PRICE: ${food.price}'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Description  : ' + food.ket,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan makanan ke keranjang saat tombol "Add to Cart" diklik
              addToCart(context, food);
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }

  void addToCart(BuildContext context, Food food) {
    // Implementasi logika penambahan makanan ke keranjang
    // Misalnya, Anda dapat menggunakan provider atau cara lainnya untuk mengelola keranjang
    // Di sini, kita hanya menambahkan item ke CartScreen
    CartScreen.cartItems.add(food);

    // Tampilkan snackbar atau informasi lainnya jika diperlukan
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${food.name} ditambahkan ke keranjang'),
      ),
    );
  }
}
