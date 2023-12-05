import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 125, 187),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 125, 187),
        title: Text('About Us'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  'lib/images/street-market.png',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Restoran Sushi',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text(
                'Aplikasi Pemesanan Sushi.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text(
                'Kelas B1 Kelompok 6',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text('Masha Jacinda Putri '),
              Text('Fela Afria Ningsih'),
              Text('Iswan'),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
