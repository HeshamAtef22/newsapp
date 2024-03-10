import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        )
      );
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
            width: 300.0,
            child: TextLiquidFill(
              loadDuration: Duration(seconds: 3),
              text: 'News App',
              waveColor: Colors.white,
              boxBackgroundColor: Colors.deepPurple,
              textStyle: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 200.0,
            ),
          ),
              SizedBox(height: 150),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      )
    );
  }
}
