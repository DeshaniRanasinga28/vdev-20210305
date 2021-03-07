import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdev/app/global/global.dart' as global;

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutScreenState();
  }
}

class _AboutScreenState extends State<AboutScreen>{

  @override
  void initState() {
    super.initState();
    global.tabIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
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
                        child: textLabel(
                            'Name :',
                            16.0,
                            FontWeight.w700,
                            black0),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel(
                            '${global.name}',
                            16.0,
                            FontWeight.w700,
                            black0),
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
                        child: textLabel(
                            'Repo URL :',
                            16.0,
                            FontWeight.w700,
                            black0),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                           child: InkWell(
                               child: textLabel(
                                   '${global.github_url}',
                                   16.0,
                                   FontWeight.w700,
                                   blue34),
                            onTap: _launchURL,
                           ),
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
    var url = global.github_url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch the URL';
    }
  }

}