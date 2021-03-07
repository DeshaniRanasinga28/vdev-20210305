import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/category.dart';
import 'package:vdev/app/util/api/util_api.dart';

Future<Data> getAllItemDataList(context) async {
  Data data;
  try {
    final response = await http.get(
      API_CATEGORIES_LIST,
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },
    );
    if (response.statusCode == 200) {
      final items = json.decode(response.body);
      data =  Data.fromJson(items);

    }else if(response.statusCode == 400){
      Toast.show("bad request", context,
          backgroundColor: Colors.red, textColor: red);
    }else if(response.statusCode == 401 ){
      Toast.show("unauthorized", context,
          backgroundColor: Colors.red, textColor: red);
    }
    else if(response.statusCode == 500){
      Toast.show("DB error", context,
          backgroundColor: Colors.red, textColor: red);
    }else if(response.statusCode == 404){
      Toast.show("couldn't be found", context,
          backgroundColor: Colors.red, textColor: red);
    }
    else {
      Toast.show("Failed Loading API", context,
          backgroundColor: Colors.red, textColor: red);
    }
  } catch (e) {
    Toast.show("Server error", context,
        backgroundColor: Colors.red, textColor: red);
  }
  return data;
}



