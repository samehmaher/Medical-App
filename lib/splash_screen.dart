import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10.0),

          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          //color: Colors.white,
          child: Column(
            children: [
              Lottie.asset('assets/doctors.json',fit: BoxFit.cover),
              Expanded(child: SizedBox()),
              TypewriterAnimatedTextKit(
                isRepeatingAnimation: true,
                speed: Duration(milliseconds: 150),
                text: [
                  "Medical App",
                ],
                textStyle: TextStyle(
                  color: Colors.black,
                    fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
              Expanded(child: SizedBox()),
              Lottie.asset('assets/load.json',height: 100,width: 100,fit: BoxFit.cover),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
