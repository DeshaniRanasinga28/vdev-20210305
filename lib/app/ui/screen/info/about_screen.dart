import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class AboutScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AboutScreenState();
  }
}

class _AboutScreenState extends State<AboutScreen>{

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white225,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
      ),
      body: SafeArea(
          child: Column(
            children: [
              Text("_AboutScreenState")
            ],
          )
      ),
    );
  }

}