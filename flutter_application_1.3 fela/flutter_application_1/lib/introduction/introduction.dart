import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      next: Text("Selanjutnya"),
      done: Text("Selesai"),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                Login(), // Ganti HomePage dengan nama halaman home.dart yang sesuai
          ),
        );
      },
      pages: [
        PageViewModel(
          title: "SUSHI BAR",
          body: "Promo 25%\n Mulai Dari Rp.50.000",
          image: Image.asset("lib/images/street-market.png",
              height: 500.0, width: 420.0),
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
        ),
        PageViewModel(
          title: "BANYAK PILIHAN SUSHI",
          body: "Promo 25%\n Mulai Dari Rp.60.000",
          image: Image.asset("lib/images/japanese-food.png",
              height: 500, width: 420),
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
        ),
        PageViewModel(
          title: "Tunggu apa lagi... ",
          body: "ayo... beli sekarang!!! ",
          image: Image.asset("lib/images/yummy.png", height: 500, width: 450),
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        PageViewModel(
          title: "Ninja Sushi",
          body: "Paling Murah...!!!",
          image: Image.asset("lib/images/Ninja_sushi.jpg",
              height: 500, width: 420),
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
        ),
      ],
    );
  }
}
