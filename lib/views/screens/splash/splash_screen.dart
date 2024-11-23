import 'dart:async';
import 'package:firstapp/views/screens/splash/on_bording.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: size.width * 0.65,
          height: size.height * 0.4,
          child: Image.asset(
            "assets/images/logoipsum-255 1.jpg",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
