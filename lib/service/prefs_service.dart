import 'dart:convert';

import 'package:loginproject/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {


  static void storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", name);
  }


  static Future<String?> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }


//  User uchun
  static storeUser(User user)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    await prefs.setString("user", stringUser);
  }

  static Future<User?> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString("user");

    if (stringUser == null || stringUser.isEmpty) return null;
    Map<String, dynamic> map = jsonDecode(stringUser);
    return User.fromJson(map);
  }
}