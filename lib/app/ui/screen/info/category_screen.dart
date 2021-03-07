import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/category.dart';
import 'package:vdev/app/provider/item_provider.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/global/global.dart' as global;

class CategoryScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<CategoryScreen>{

  @override
  void initState() {
    final getItemList = Provider.of<ItemProviderModel>(context, listen: false);
    getItemList.getItemsData(context);
    super.initState();

    global.tabIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    final getItemList = Provider.of<ItemProviderModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
                : Expanded(
                child: Container(
                child: Center(
                    child: CircularProgressIndicator())))
          ],
        ),
      ),
    );
  }

}