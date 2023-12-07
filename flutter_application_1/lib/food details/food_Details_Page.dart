import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/tools/tools.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({Key? key, required this.food}) : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  bool isAddedToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
        title: Text(widget.food.name),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Tambahkan makanan ke keranjang saat tombol "Add to Cart" diklik
              addToCart(context, widget.food);
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
                widget.food.imagepath,
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
            widget.food.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: const Color.fromARGB(255, 236, 241, 243)),
          ),
          Text(
            'PRICE: ${widget.food.price}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Description  : \n' + widget.food.ket,
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
            onPressed: isAddedToCart
                ? null
                : () {
                    // Tambahkan makanan ke keranjang saat tombol "Add to Cart" diklik
                    addToCart(context, widget.food);
                  },
            child: Text(
              isAddedToCart ? 'Added to Cart' : 'Add to Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void addToCart(BuildContext context, Food food) {
    // Update state untuk menonaktifkan tombol setelah diklik
    setState(() {
      isAddedToCart = true;
    });

    // Implementasi logika penambahan makanan ke keranjang
    // Misalnya, Anda dapat menggunakan provider atau cara lainnya untuk mengelola keranjang
    // Di sini, kita hanya menambahkan item ke CartScreen
    CartItem cartItem = CartItem(
      name: food.name,
      price: food.price,
      imagepath: food.imagepath,
      ket: food.ket,
      quantity: 1, // or any initial quantity you want
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
