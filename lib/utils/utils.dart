import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart';

import '../services/apirequest.dart';

class Utils {
  static List<Map<String, String>> shoeSize = [
    {"size": "6", "color": "white"},
    {"size": "7", "color": "Red"},
    {"size": "8", "color": "white"},
    {"size": "9", "color": "white"}
  ];

  static List<Color> productColor = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.orange
  ];

  static checkName({required String name}) {
    // Expected ouput: True
    if (name.isNotEmpty) {
      print('True');
      return null;
    } else {
      print("False");
      return "The Given name is not valid";
    }
  }

  static checkPassword({required String password}) {
    // RegExp regex =
    //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isNotEmpty) {
      print('True');
      return null;
    } else {
      print("False");
      return "The Given Password is not valid";
    }
  }

  static Future<bool> checkInternetStatus(
      {required BuildContext context}) async {
    bool returnValue;
    String baseUrl = 'https://networkconnectivity.googleapis.com/';
    String queryParam = '\$discovery'; // The dollar sign you want to include
    String apiUrl = '$baseUrl$queryParam/rest?version=v1';

    print(apiUrl);
      try {
     Response response = await ApiRequest.getData(url: apiUrl);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("on");
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Internet Connected")));
        returnValue = true;
      } else {
        print("off");
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Internet Not Connected")));
        returnValue = false;
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
      returnValue = false;
    }
    print(returnValue);
    return returnValue;
  }
}
