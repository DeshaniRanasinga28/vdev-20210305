import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class ProjectScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ProjectScreenState();
  }
}

class _ProjectScreenState extends State<ProjectScreen>{

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white225,
      body: SafeArea(
          child: Column(
            children: [
              Text("_ProjectScreenState")
            ],
          )
      ),
    );
  }

}