import 'package:flutter/material.dart';

class GuruScreen extends StatelessWidget {
  const GuruScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guru Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("guru gan")],
        ),
      ),
    );
  }
}
