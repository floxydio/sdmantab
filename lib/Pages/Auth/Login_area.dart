import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/Login_Provider.dart';

class LoginArea extends StatefulWidget {
  const LoginArea({Key key}) : super(key: key);

  @override
  _LoginAreaState createState() => _LoginAreaState();
}

class _LoginAreaState extends State<LoginArea> {
  var username = "";
  var password = "";
  bool index = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text("LOGIN")),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 15),
            width: MediaQuery.of(context).size.width / 1.1,
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 15),
            width: MediaQuery.of(context).size.width / 1.1,
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Switch(
              value: index,
              onChanged: (value) {
                setState(() {
                  index = value;
                });
              }),
          ElevatedButton(
              onPressed: () {
                index == false
                    ? Provider.of<LoginProvider>(context, listen: false)
                        .loginGuru(username, password, context)
                    : Provider.of<LoginProvider>(context, listen: false)
                        .loginKepsek(username, password, context);
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
