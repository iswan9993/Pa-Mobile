import 'package:flutter/material.dart';
import 'produk.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
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
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 500, // Atur tinggi Container sesuai kebutuhan
              child: PageView.builder(
                scrollDirection: Axis.horizontal, // Mengatur scroll ke samping
                itemCount: 6, // Ganti sesuai jumlah item Anda
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10), // Atur margin sesuai kebutuhan
                    height: 200, // Atur tinggi Container sesuai kebutuhan
                    color: Colors.blue, // Warna latar belakang Container
                    child: Center(
                      child: Text('Item $index',
                          style: TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              width: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProdukPage(), // Pindahkan ke halaman produk
                    ),
                  );
                },
                child: Text(
                  'Produk Selengkapnya',
                  style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                    
                   
                   
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 225, 231, 235),
                  padding: EdgeInsets.all(8.0)
                 
                
              ),
            )
            ),
            // GridView.count(
            //   crossAxisCount: 2,
            //   children: [
            //     Container(
            //       height: 50,
            //       width: 50,
            //        color: Colors.blue,
            //   child: Center(child: Text('Baris 1, Kolom 1')),
            //     )
            //   ],
            // )

          
            
          ]
        )
        );
  }
}
