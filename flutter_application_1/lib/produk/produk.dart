
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tools/tools.dart';

class ProductCard extends StatelessWidget {
  final Food product;
  final Function() onAddToCart;

  ProductCard({required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            product.imagepath,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(product.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$${product.price.toString()}'),
                Text(product.ket),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: onAddToCart,
            ),
          ),
        ],
      ),
    );
  }
}
