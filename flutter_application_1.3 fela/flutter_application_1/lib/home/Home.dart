import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoriteprovider.dart';
import "package:flutter_application_1/food details/food_Details_Page.dart";
import 'package:flutter_application_1/home/about.dart';
import 'package:flutter_application_1/introduction/introduction.dart';
import 'package:flutter_application_1/navbar/bottom_navbar.dart';
import "package:flutter_application_1/tools/tools.dart";
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Atur interval dan perulangan scroll otomatis
    _timer = Timer.periodic(Duration(seconds: 7), (timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel(); // Hentikan timer ketika widget di dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
      backgroundColor: const Color.fromARGB(255, 160, 157, 157),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 160, 157, 157),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 78, 48, 138),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'lib/images/images1.jpeg',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "markona789@gamil.com",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 20,
              ),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AboutPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt_1_rounded,
                size: 20,
              ),
              title: Text(
                'Introduction',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => IntroductionPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Shushi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 78, 48, 138),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                List<String> imagePaths = [
                  'lib/images/page1.jpg',
                  'lib/images/page2.jpg',
                  'lib/images/page3.jpg',
                  'lib/images/page4.jpg',
                  'lib/images/page5.jpg',
                  'lib/images/page6.jpg',
                  'lib/images/page7.jpg',
                  'lib/images/page8.jpg',
                ];
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 400,
                  color: const Color.fromARGB(255, 160, 157, 157),
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: datafoods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodDetailsPage(
                                  food: datafoods[index],
                                )));
                  },
                  child: Card(
                    color: Color.fromARGB(255, 147, 125, 187),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              datafoods[index].imagepath,
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(datafoods[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: const Color.fromARGB(
                                        255, 229, 231, 235))),
                            Text('harga : ${datafoods[index].price}'),
                            ClipOval(
                              child: Material(
                                  color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Icon(Icons.favorite),
                                    ),
                                    onTap: () {
                                      FavoriteProvider favoriteProvider =
                                          Provider.of<FavoriteProvider>(context,
                                              listen: false);
                                      favoriteProvider
                                          .addToFavorite(datafoods[index]);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              '${datafoods[index].name} ditambahkan ke favorit'),
                                        ),
                                      );
                                    },
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },

              // shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
