import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/92886-flowering-plant.json"),
          Text(
            "Bouquet Zone",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade200),
          ),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ],
      ),
    );
  }
}
