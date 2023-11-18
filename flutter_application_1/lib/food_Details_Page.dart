import 'package:flutter/material.dart';
import "package:flutter_application_1/tools/tools.dart";

class FoodDetailsPage extends StatelessWidget {
  final Food food;

 const FoodDetailsPage({Key? key, required this.food}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Padding(
          padding:const EdgeInsets.all(16.0),
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
              color: Colors.lightBlueAccent
            ),
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
              ),),
            )

          // Tambahkan detail lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}
