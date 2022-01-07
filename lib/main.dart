import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';
import 'Pages/Auth/Login_area.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
        child: LoginArea(),
      ),
    ));
