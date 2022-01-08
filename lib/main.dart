import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Pages/Auth/Login_area.dart';
import 'package:sdmantabfront/Provider/Guru_Provider.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';
import 'package:sdmantabfront/certification.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginProvider()),
      ChangeNotifierProvider(create: (_) => GuruProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginArea(),
    ),
  ));
}
