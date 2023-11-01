import 'package:flutter/material.dart';
import 'produk.dart';
import 'bottom_navbar.dart';
import 'dart:async';

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
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 500), curve: Curves.ease);
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
      backgroundColor: Colors.deepPurple,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
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
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Item $index', style: TextStyle(color: Colors.white)),
                  ),
                );
              },
            ),
          ),
        
             Expanded(
               child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Container(
                    height: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.deepPurple,
                  ),
                  Container(
                    height: 50,
                    color: Colors.tealAccent,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black54,
                  ),
             
               
                ],
               ),
             )
         
          
        ],
      ),
    );
  }
}
