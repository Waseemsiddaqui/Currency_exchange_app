

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context,'/home');
    }
    );

    return Scaffold(
      backgroundColor: Colors.teal,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.white,

          ),
          Lottie.asset('assets/animations/Exchange converter.json',
            width: 400,
            height:400,
          ),
          Positioned(
            width: 250,
            height: 320,
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("Currency Exchange Converter App",
                  textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  speed: Duration(milliseconds: 100),
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
