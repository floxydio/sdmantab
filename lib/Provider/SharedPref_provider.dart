import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sdmantabfront/Pages/Auth/Login_area.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider with ChangeNotifier {
  checkLogin(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var emailTest = prefs.getString("email");
    var checkName = prefs.getString("name");
    var role = prefs.getString("role");
    bool checkLogin = prefs.getBool("login");

    print(checkLogin);

    print("Data Login -> $emailTest + $checkName + $role");
    Timer(
        Duration(milliseconds: 100),
        () => {
              if (role == 0.toString() || role == 1.toString())
                {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => LoginArea()))
                }
            });
    notifyListeners();
  }
}
