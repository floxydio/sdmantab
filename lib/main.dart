import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Boarding.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';
import 'package:sdmantabfront/Provider/SharedPref_provider.dart';
import 'package:sdmantabfront/certification.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
        ChangeNotifierProvider<SharedPreferencesProvider>(
            create: (_) => SharedPreferencesProvider()),
        // ChangeNotifierProvider<DataNilai>(create: (_) => DataNilai())
      ],
      child: Boarding(),
    ),
  ));
}
