import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/Auth/Login_area.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [],
        child: LoginArea(),
      ),
    ));
