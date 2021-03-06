import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen>{


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: white225,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Text("Sign in Page")
                  ],
                )
              ),
            ],
          ),
        )
    );
  }

}