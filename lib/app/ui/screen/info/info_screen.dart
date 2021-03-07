import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class InfoScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _InfoScreenState();
  }
}

class _InfoScreenState extends State<InfoScreen>{

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white225,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        leading: new IconButton(
          icon: Icon(Icons.arrow_back, color: white225),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Text("info")
            ],
          )
      ),
    );
  }

}