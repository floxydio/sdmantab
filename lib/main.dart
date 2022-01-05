import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';
import 'package:sdmantabfront/certification.dart';
import 'Pages/Auth/Login_area.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
        ],
        child: LoginArea(),
      ),
    ));
}



