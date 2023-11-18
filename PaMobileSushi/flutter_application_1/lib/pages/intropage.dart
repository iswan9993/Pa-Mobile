import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sushi Man',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('assets/salmon-eggs.png'),
              ),
              Text(
                'THE TASTE OF JAPANESE FOOD',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Feel the taste of the most popular Japanese food anywhere, anytime',
                style: TextStyle(height: 2, color: Colors.grey[200]),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                text: 'Get Started',
                onTap: () {
                  Navigator.pushNamed(context, '/menuPage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
