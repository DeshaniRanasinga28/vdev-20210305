import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/category.dart';
import 'package:vdev/app/util/api/item_api_request.dart';
import 'package:vdev/app/util/check_connection.dart';

class ItemProviderModel with ChangeNotifier {
  bool isLoading = true;
  Data itemData;

  List<String> alphabets = [];

  getItemsData(context) {
    checkNetworkConnection(context).then((value) async {
      isLoading = true;
      notifyListeners();
      if (value == true) {
        await getAllItemDataList(context).then((res) {
          if (res != null) {
            itemData = res;
            itemData.data.sort((a, b) =>  a.name.compareTo(b.name));
          }
        });
        isLoading = false;
        notifyListeners();
      } else {
        Toast.show('Please check your Internet connection',
            context, duration: 2, backgroundColor: red);
      }
    });
  }
}
