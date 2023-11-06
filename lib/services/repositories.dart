import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/models/categoryApiResponseModel.dart';
import 'package:task1/services/apirequest.dart';
import 'package:task1/services/sharedPreferencesHelper.dart';
import 'package:task1/utils/utils.dart';
import 'package:task1/views/splash.dart';

class Repositories {
  static getCategories({required String url}) async {

    var categoryList;
    Response response = await ApiRequest.getData(url: url);
    print("Printing");

    if (response.statusCode == 200) {
      print(response);
      categoryList = jsonDecode(response.body);
      print(categoryList.runtimeType);
      return categoryList;
    } else {
      return null;
    }
  }

  static postLogin(
      {required String url,
      required String username,
      required String password,
      required BuildContext context}) async {
    var token;
    Map<String, dynamic> mapData = {"username": username, "password": password};
    try {
      if (await Utils.checkInternetStatus(context: context) ?? false) {
        Response response =
            await ApiRequest.postData(url: url, mapData: mapData);
        if (response.statusCode == 200) {
          print(response);
          token = jsonDecode(response.body);
          if (token["token"].runtimeType == String) {
            print(token.runtimeType);
            await SharedPreferencesHelper.setToken(
                userTokenValue: token["token"]);
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Login Success")));
            return true;
          }
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Login Not Success")));
          return false;
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Something Went Wrong $e")));
      print(e);
    }
  }

  static getJewelery({required String url}) async {
    var categoryData;
    CategoryApiResponseModel? categoryApiResponseModel;
    Response response = await ApiRequest.getData(url: url);
    if (response.statusCode == 200) {
      //print("Loading");
      print(response);
      categoryData = jsonDecode(response.body) as List;
      //print("HI");
      print(categoryData.runtimeType);
      // print("HELLO");
      return categoryData;
    } else {
      return null;
    }
  }
}
