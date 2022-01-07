import 'package:flutter/material.dart';

class KepsekScreen extends StatelessWidget {
  const KepsekScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kepsek Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Kepsek gan")],
        ),
      ),
    );
  }
}
