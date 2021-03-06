import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/ui/screen/splash_screen.dart';



void main() {
  runApp(Vdev());
}

class Vdev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vdev',
      routes: {

      },
      theme: ThemeData(
        // fontFamily: 'OpenSans',
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}