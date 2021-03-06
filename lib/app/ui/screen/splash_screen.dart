import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // navigateToHome();
  }

  // navigateToHome() async {
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (BuildContext context) => SigninScreen()),
  //             (r) => false);
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: white225,
      body: Center(
          child: Image.asset('images/logo.png',)
      ),
    );
  }

}