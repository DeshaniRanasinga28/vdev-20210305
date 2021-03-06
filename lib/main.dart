import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'app/provider_config.dart';
import 'app/ui/screen/info/info_screen.dart';
import 'app/ui/screen/signin/signin_screen.dart';
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
    return MultiProvider(
        providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vdev',
        routes: {
          '/signInScreen' : (BuildContext context) => new SignInScreen(),
          '/infoScreen' : (BuildContext context) => new InfoScreen(),
        },
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.teal,
        ),
        home: SplashScreen(),
      ),
    );
  }
}