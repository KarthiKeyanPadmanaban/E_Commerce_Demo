import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiRequest {
  static getData({required String url}) async {
    final response = await http.get(Uri.parse(url));
    print(response.body);
    print(jsonDecode(response.body));
    return response;
  }

  static postData(
      {required String url, required Map<String, dynamic> mapData}) async {
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(mapData),
      headers: {"Content-Type": "application/json"},
    );
    print(response.body);
    return response;
  }
}
