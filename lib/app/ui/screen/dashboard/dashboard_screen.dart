import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/category.dart';
import 'package:vdev/app/model/model.dart';
import 'package:vdev/app/provider/item_provider.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/ui/widgets/custom_flat_button.dart';

class DashboardScreen extends StatefulWidget {
  Model model;
  String date;
  String time;

  DashboardScreen({this.model, this.date, this.time});

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen>{

  @override
  void initState() {
    final getItemList = Provider.of<ItemProviderModel>(context, listen: false);
    getItemList.getItemsData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    final getItemList = Provider.of<ItemProviderModel>(context);

    return Scaffold(
        backgroundColor: white225,
        body: WillPopScope(
          onWillPop: () async {
            return Future.value(false);
          },
          child: SafeArea(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text("DashboardScreen == ${widget.model.email}")
                  Padding(
                    padding: EdgeInsets.only(top : 20.0, right: 10.0, left: 20.0),
                    child:  Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: textLabel('${widget.model.email}', 18.0, FontWeight.w700),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: CustomFlatButton(
                              title: "Sign-out",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              textColor: Colors.white,
                              onPressed: () => Navigator.of(context).pushNamed("/signInScreen"),
                              color: Colors.blueGrey[700],
                              splashColor: Colors.black12,
                              borderColor: Colors.black,
                              borderWidth: 0,
                              // color: Colors.blueGrey[700],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 20.0, right: 10.0, left: 30.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: textLabel('Product Categories', 24.0, FontWeight.w700),
                    ),
                  ),
                  !getItemList.isLoading
                      ?
                  Expanded(
                      child:  Container(
                          padding: EdgeInsets.only(top : 20.0, right: 10.0, left: 30.0),
                          child: ListView.builder(
                              itemCount: getItemList.itemData.data.length,
                              itemBuilder: (context, index) {
                                final Item item = getItemList.itemData.data[index];
                                return index == getItemList.itemData.data.length - 1 ? Padding(
                                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                                    child: categoryView(w, "${item.name}", black0, black0)
                                ):
                                Padding(
                                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                                    child: categoryView(w, "${item.name}", black0, white225)
                                );
                              }
                          ))
                  )
                      : Container(
                      child: Center(
                          child: CircularProgressIndicator()))

                ],
              )
          ),
        ),
      bottomNavigationBar: Container(
        height: 90.0,
        child: Padding(
          padding: EdgeInsets.only(top : 10.0, right: 30.0, left: 30.0, bottom: 20.0),
          child:  Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: CustomFlatButton(
                    title: "info",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    textColor: Colors.white,
                    onPressed: () => Navigator.of(context).pushNamed("/infoScreen"),
                    color: Colors.blueGrey[700],
                    splashColor: Colors.black12,
                    borderColor: Colors.black,
                    borderWidth: 0,
                    // color: Colors.blueGrey[700],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: textLabel('Signed-in at:', 18.0, FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: textLabel(' ${widget.date} ' +  ' ${widget.time}', 18.0, null),
                      ),
                    ),
                  ],
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }


}