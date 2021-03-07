import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class CategoryScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<CategoryScreen>{

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white225,
      body: SafeArea(
          child: Column(
            children: [
              Text("_CategoryScreenState")
            ],
          )
      ),
    );
  }

}