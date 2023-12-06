import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart/cartscreen.dart';
import 'package:flutter_application_1/tools/tools.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/favoriteprovider.dart';
import "package:flutter_application_1/food details/food_Details_Page.dart";

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
        title: Text('Favorite Items'),
      ),
      body: Consumer<FavoriteProvider>(
        builder: (context, favoriteProvider, child) {
          return ListView.builder(
            itemCount: favoriteProvider.favoriteItems.length,
            itemBuilder: (context, index) {
              Food favoriteItem = favoriteProvider.favoriteItems[index];
              return ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    favoriteItem.imagepath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  favoriteItem.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: const Color.fromARGB(255, 236, 241, 243),
                  ),
                ),
                subtitle: Text(
                  'Price: ${favoriteItem.price}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 7, 7, 7),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Panggil fungsi untuk menghapus item dari favorite
                    favoriteProvider.removeFromFavorite(favoriteItem);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetailsPage(food: favoriteItem),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
