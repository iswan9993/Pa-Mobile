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
      backgroundColor: Colors.deepPurple.shade200,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
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
        backgroundColor: Colors.deepPurple,
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
                  'images/page1.jpg',
                  'images/page2.jpg',
                  'images/page3.jpg',
                  'images/page4.jpg',
                  'images/page5.jpg',
                  'images/page6.jpg',
                  'images/page7.jpg',
                  'images/page8.jpg',
                ];
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 400,
                  color: Colors.deepPurple,
                  
                    child: Image.asset(imagePaths[index],fit: BoxFit.cover,),
                 
                );
              },
            ),
          ),
        
          
                Expanded(
                  child: GridView(
                  // shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom
                  ),
                  
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 200,
                      color: Colors.amber,
                      child: Image.asset('images/susi1.jpg',fit: BoxFit.cover,)
                      
                    ),
                    Container(
                       margin: EdgeInsets.all(5),
                      height: 200,
                      color: Colors.red,
                       child: Image.asset('images/susi2.jpg',fit: BoxFit.cover,)
                    ),
                    Container(
                       margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.grey,
                       child: Image.asset('images/susi3.jpg',fit: BoxFit.cover,)
                    ),
                    Container(
                       margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.blue,
                       child: Image.asset('images/susi4.jpg',fit: BoxFit.cover,)
                    ),
                    Container(
                       margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.deepPurple,
                       child: Image.asset('images/susi5.jpg',fit: BoxFit.cover,)
                    ),
                    Container(
                       margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.tealAccent,
                       child: Image.asset('images/susi6.jpg',fit: BoxFit.cover,)
                    ),         
                  ],
                               ),
                ),
            
         
          
        ],
      ),
    );
  }
}

