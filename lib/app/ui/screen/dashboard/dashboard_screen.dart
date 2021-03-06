import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/model.dart';

class DashboardScreen extends StatefulWidget {
  Model model;

  DashboardScreen({this.model});

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white225,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
        ),
        body: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("DashboardScreen == ${widget.model.email}")
              ],
            )
        )
    );
  }


}