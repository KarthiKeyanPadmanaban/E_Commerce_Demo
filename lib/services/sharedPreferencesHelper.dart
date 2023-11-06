import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static String userTokenKey = "UserTokenKey";
  static String userNameKey = "UserNameKey";

  static setToken({required String userTokenValue}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userTokenKey, userTokenValue);
  }

  static getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userTokenKey) ?? "";
  }

  static removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(userTokenKey);
  }

  static saveUserName({required String userNameValue}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userNameKey, userNameValue);
  }

  static getUserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey) ?? "";
  }
}
