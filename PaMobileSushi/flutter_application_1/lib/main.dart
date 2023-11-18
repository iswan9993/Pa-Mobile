import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sushiapp/pages/intropage.dart';
import 'package:sushiapp/pages/menupage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        "/introPage": (context) => IntroPage(),
        "/menuPage": (context) => MenuPage(),
      },
    );
  }
}
