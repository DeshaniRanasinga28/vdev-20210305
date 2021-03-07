import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'project_screen.dart' as projetcScreen;
import 'about_screen.dart' as aboutScreen;
import 'category_screen.dart' as categoryScreen;
import 'package:vdev/app/global/global.dart' as global;

class InfoScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _InfoScreenState();
  }
}

class _InfoScreenState extends State<InfoScreen>  with SingleTickerProviderStateMixin{

  TabController controller;
  int _currentTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();

    setState(() {
      if (global.tabIndex == 1) {
        _currentTabIndex = 0;
      } else if (global.tabIndex == 2){
        _currentTabIndex = 1;
      }else if (global.tabIndex == 3){
        _currentTabIndex = 2;
      }else{
        _currentTabIndex = 0;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    controller.animateTo(_currentTabIndex);
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
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 20.0),
                  child: DefaultTabController(
                    length: 2, //(2)
                    child: SizedBox(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2.0),
                            color: Colors.blueGrey[700],
                            child: TabBar(
                              controller: controller,
                              indicatorColor: white225,
                              labelColor: black0,
                              unselectedLabelColor: black0,
                              indicator: BoxDecoration(
                                  border: Border.all(color: black0, width: 1),
                                  color: white225,
                              ),
                              tabs: <Widget>[
                                Tab(
                                  child: tabLabel("Project", 18.0, FontWeight.w700)
                                ),
                                Tab(
                                    child: tabLabel("Categories", 18.0, FontWeight.w700)
                                ),
                                Tab(
                                    child: tabLabel("About", 18.0, FontWeight.w700)
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TabBarView(
                                controller: controller,
                                children: <Widget>[
                                  new projetcScreen.ProjectScreen(),
                                  new categoryScreen.CategoryScreen(),
                                  new aboutScreen.AboutScreen()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

}