import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/tools/tools.dart';

class FoodDetailsPage extends StatelessWidget {
  final Food food;

  const FoodDetailsPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
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
                width: lebar,
                height: tinggi,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: tinggi,
          ),
          Text(
            food.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: const Color.fromARGB(255, 236, 241, 243)),
          ),
          Text(
            'PRICE: ${food.price}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: tinggi,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Description  : \n' + food.ket,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 7, 7, 7),
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan makanan ke keranjang saat tombol "Add to Cart" diklik
              addToCart(context, food);
            },
            child: Text(
              'Add to Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void addToCart(BuildContext context, Food food) {
    // Implementasi logika penambahan makanan ke keranjang
    // Misalnya, Anda dapat menggunakan provider atau cara lainnya untuk mengelola keranjang
    // Di sini, kita hanya menambahkan item ke CartScreen
    CartItem cartItem = CartItem(
      name: food.name,
      price: food.price,
      imagepath: food.imagepath,
      ket: food.ket,
    );
    CartScreen.cartItems.add(cartItem);
    // Tampilkan snackbar atau informasi lainnya jika diperlukan
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${food.name} ditambahkan ke keranjang'),
      ),
    );
  }
}
