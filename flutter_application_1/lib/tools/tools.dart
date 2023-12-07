
// ];


class Food {
  String name;
  String price;
  String imagepath;
  String ket;
  int quantity;

  Food({
    required this.name,
    required this.price,
    required this.imagepath,
    required this.ket,
    this.quantity = 1,
  });
}

class Cart {
  List<Food> items = [];

  void addToCart(Food food) {
    items.add(food);
  }

  void removeFromCart(Food food) {
    items.remove(food);
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in items) {
      total +=
          double.parse(item.price.replaceAll("Rp.", "").replaceAll(",", ""));
    }
    return total;
  }
}

List<Food> datafoods = [
  Food(
    name: "Sushi",
    price: "Rp.25.000",
    imagepath: "lib/images/many-sushi.png",
    ket:
        " Hidangan khas jepang yang terdiri atas dua bagian, yaitu nasi (shari) dan makanan yang di letakkan diatas nasi tersebut (neta). ",
  ),
  Food(
    name: "Salmon Eggs",
    price: "Rp.50.000",
    imagepath: "lib/images/salmon-eggs.png",
    ket:
        " Telur salmon yang berwarna cerah agak oranye dengan telur yang bercahaya serta agak transparan sehingga mudah dipisahakan satu dengan yang lainnya.  ",
  ),
  Food(
    name: "Salmon Sushi",
    price: "Rp.30.000",
    imagepath: "lib/images/salmon-sushi.png",
    ket:
        " Ini adalah sushi yang di padukan dengan ikan salmon pilihan yang masih fresh. ",
  ),
  Food(
    name: "Tuna ",
    price: "Rp.25.000",
    imagepath: "lib/images/tuna.png",
    ket:
        " Ini adalah ikan tuna yang lezat serta salah satu jenis ikan Scombroidae yang memiliki kamampuan sebagai perenang tercepat. ",
  ),
  Food(
    name: "Nigiri",
    price: "Rp.25.000",
    imagepath: "lib/images/nigiri.png",
    ket:
        " Ini adalah hidangan yang berisi ikan mentah (sashimi) yang disajikan diatas nasi cuka (sushi) yang di bentuk lonjong. ",
  ),
  Food(
    name: "Uramaki",
    price: "Rp.25.000",
    imagepath: "lib/images/uramaki.png",
    ket:
        " Uramaki adalah makan khas jepang dengan keunikan tampilannya yang sama seperti sushi namun nasinya berada di luar. ",
  ),
  // Tambahkan objek Food lainnya jika diperlukan
];

// class CartPage extends StatefulWidget {
//   @override
//   _CartPageState createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   Cart cart = Cart();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cart"),
//       ),
//       body: ListView.builder(
//         itemCount: cart.items.length,
//         itemBuilder: (context, index) {
//           Food food = cart.items[index];
//           return ListTile(
//             title: Text(food.name),
//             subtitle: Text(food.price),
//             trailing: IconButton(
//               icon: Icon(Icons.remove),
//               onPressed: () {
//                 setState(() {
//                   cart.removeFromCart(food);
//                 });
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//           child: Text(
//             "Total: Rp. ${cart.calculateTotalPrice()}",
//             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }
