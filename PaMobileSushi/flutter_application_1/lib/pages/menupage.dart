import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/components/foodtile.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/pages/food_details_page.dart';
import 'package:sushiapp/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foods = [
    Food(
        name: "Salmon sushi",
        price: "30.00",
        imagepath: "assets/salmon-sushi.png",
        rating: "4.8"),
    Food(
        name: "Tuna",
        price: "24.00",
        imagepath: "assets/tuna.png",
        rating: "4.4"),
  ];

  void navigateFoodDetails(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => FoodDetailsPage(
                  food: foods[index],
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'TOKYO',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get 32% Promo',
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyButton(text: "REDEEM", onTap: () {})
                        ],
                      ),
                      Image.asset(
                        'assets/many-sushi.png',
                        height: 100,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here ..",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Food Menu',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25, bottom: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: foods.length,
                        itemBuilder: (context, index) => FoodTile(
                              onTap: () => navigateFoodDetails(index),
                              food: foods[index],
                            )),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 25, left: 25, right: 25),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/salmon-eggs.png',
                            height: 60,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                'Salmon Eggs',
                                style: GoogleFonts.dmSerifDisplay(fontSize: 19),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$21.00',
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey[700],
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
