import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';

class LoginArea extends StatefulWidget {
  const LoginArea({Key key}) : super(key: key);

  @override
  _LoginAreaState createState() => _LoginAreaState();
}

class _LoginAreaState extends State<LoginArea> {
  @override
  Widget build(BuildContext context) {
    var username = "";
    var password = "";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<LoginProvider>(context, listen: false)
                        .loginGuru(
                            username, password, context);
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
