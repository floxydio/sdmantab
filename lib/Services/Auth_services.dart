import 'dart:convert';

import 'package:http/http.dart' as web;
import 'package:sdmantabfront/Constant/Server_const.dart';

class AuthRepository {
  Future<dynamic> loginGuru(uname, pw) async {
    Map<String, dynamic> form = {"username": uname, "password": pw};
    try {
      var response = await web
          .post(Uri.parse(Server.BASE_URL + Server.LOGIN_GURU), body: form);
      if (response.statusCode == 200) {
        print("<--- Respon Login Guru");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<dynamic> loginKepsek(uname, pw) async {
    Map<String, dynamic> form = {"username": uname, "password": pw};
    try {
      var response = await web
          .post(Uri.parse(Server.BASE_URL + Server.LOGIN_KEPSEK), body: form);
      if (response.statusCode == 200) {
        print("<--- Respon Login Kepsek");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}










