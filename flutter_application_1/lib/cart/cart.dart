// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/produk/produk.dart';
// import 'package:flutter_application_1/tools/tools.dart';
// import 'package:flutter_application_1/home/Home.dart';
// import 'cartscreen.dart';

// class SushiApp extends StatefulWidget {
//   @override
//   _SushiAppState createState() => _SushiAppState();
// }

// class _SushiAppState extends State<SushiApp> {
//   List<Food> products = [
//     Food(
//         name: "Sushi",
//         price: "Rp.25.000",
//         imagepath: "lib/images/many-sushi.png",
//         ket:
//             " Hidangan khas jepang yang terdiri atas dua bagian, yaitu nasi (shari) dan makanan yang di letakkan diatas nasi tersebut (neta). "),
//     Food(
//         name: "Salmon Eggs",
//         price: "Rp.50.000",
//         imagepath: "lib/images/salmon-eggs.png",
//         ket:
//             " Telur salmon yang berwarna cerah agak oranye dengan telur yang bercahaya serta agak transparan sehingga mudah dipisahakan satu dengan yang lainnya.  "),
//     Food(
//         name: "Salmon Sushi",
//         price: "Rp.30.000",
//         imagepath: "lib/images/salmon-sushi.png",
//         ket:
//             " Ini adalah sushi yang di padukan dengan ikan salmon pilihan yang masih fresh. "),
//     Food(
//         name: "Tuna ",
//         price: "Rp.25.000",
//         imagepath: "lib/images/tuna.png",
//         ket:
//             " Ini adalah ikan tuna yang lezat serta salah satu jenis ikan Scombroidae yang memiliki kamampuan sebagai perenang tercepat. "),
//     Food(
//         name: "Nigiri",
//         price: "Rp.25.000",
//         imagepath: "lib/images/nigiri.png",
//         ket:
//             " Ini adalah hidangan yang berisi ikan mentah (sashimi) yang disajikan diatas nasi cuka (sushi) yang di bentuk lonjong. "),
//     Food(
//         name: "Uramaki",
//         price: "Rp.25.000",
//         imagepath: "lib/images/uramaki.png",
//         ket:
//             " Uramaki adalah makan khas jepang dengan keunikan tampilannya yang sama seperti sushi namun nasinya berada di luar. "),
//     // Tambahkan objek Food lainnya jika diperlukan
//   ];

//   List<Food> cartItems = [];

//   int _currentIndex = 0;

//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.deepPurple.shade200,
//         appBar: AppBar(
//           title:
//               _currentIndex == 0 ? Text('Menu Sushi') : Text('Keranjang Sushi'),
//         ),
//         body: _currentIndex == 0
//             ? ListView.builder(
//                 itemCount: products.length,
//                 itemBuilder: (context, index) {
//                   return ProductCard(
//                     product: products[index],
//                     onAddToCart: () {
//                       setState(() {
//                         cartItems.add(products[index]);
//                       });
//                     },
//                   );
//                 },
//               )
//             : CartScreen(cartItems: cartItems),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: _onTabTapped,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.restaurant_menu),
//               label: 'Menu Sushi',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: 'Keranjang',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
