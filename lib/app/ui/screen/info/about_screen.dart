import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/ui/widgets/custom_text_field.dart';

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
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                child:  Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('Name :', 16.0, FontWeight.w700),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('Deshani Ranasingha', 16.0, FontWeight.w700),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:  Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('Repo URL :', 16.0, FontWeight.w700),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('https://github.com/DeshaniRanasinga28/vdev-20210305/tree/ui-dev', 16.0, FontWeight.w700),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

  _launchURL() async {
    const url = 'http://carrerapopulardelcorazon.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}