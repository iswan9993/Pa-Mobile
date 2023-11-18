import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/themes/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({required this.food, super.key});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  //quantity
  int quantity = 0;

  //decrement quantity
  decrementQuantity() {
    if (quantity > 0)
      setState(() {
        quantity -= 1;
      });
  }

  //increment quantity
  incrementQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  //add to cart
  addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          //listview for food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.food.imagepath,
                    height: 200,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      //rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  //description

                  Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Delicate slice, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice. Its vibrant hue and buttery texture promise an exquisite melt-in-your mouth experience. Paired with a whisper of wasabi and a side of traditional pickled ginger, out slamon sushi is an ode to the purity and simplicity of authentic Japanese flavors. Indulge in the ocean's bounty with each savory bite.",
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 15, height: 2),
                  )
                ],
              ),
            ),
          ),
          //price + quantity + add to cart button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Column(children: [
              //price + quantity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Text(
                    '\$' + widget.food.price,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      //minus button
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(29)),
                        child: IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          onPressed: decrementQuantity,
                        ),
                      ),

                      //count
                      SizedBox(
                        width: 40,
                        child: Center(
                          child: Text(
                            quantity.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),

                      //plus button
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(29)),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: incrementQuantity,
                        ),
                      )
                    ],
                  )

                  //quantity
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //add to cart button
              MyButton(text: "Add to Cart", onTap: addToCart)
            ]),
          )
        ],
      ),
    );
  }
}
