import 'dart:async';

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Pages/Auth/Login_area.dart';
import 'package:sdmantabfront/Provider/SharedPref_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Boarding extends StatelessWidget {
  const Boarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<SharedPreferencesProvider>(context, listen: false)
        .checkLogin(context);
    return LoginArea();
  }
}
