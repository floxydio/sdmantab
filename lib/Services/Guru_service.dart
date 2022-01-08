import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:sdmantabfront/Constant/Server_const.dart';
import 'package:http/http.dart' as web;

class GuruRepository {
  // post api nilai
  Future<dynamic> postNilai(nama, kelas, nilaiuts, nilaiuas, kritik) async {
    Map<String, dynamic> form = {
      "nama": nama,
      "kelas": kelas,
      "nilaiuts": nilaiuts,
      "nilaiuas": nilaiuas,
      "kritik": kritik
    };
    try {
      var response = await web
          .post(Uri.parse(Server.BASE_URL + Server.NILAI_SISWA), body: form);
      if (response.statusCode == 200) {
        print("<--- Respon post nilai");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // get api nilai
  Future<Map<String, dynamic>> getNilai() async {
    try {
      var response =
          await web.get(Uri.parse(Server.BASE_URL + Server.DATA_NILAI));
      if (response.statusCode == 200) {
        print("<--- Respon list nilai");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<dynamic> deleteNilai(id) async {
    try {
      var response = await web
          .delete(Uri.parse(Server.BASE_URL + Server.DELETE_NILAI + "$id"));
      if (response.statusCode == 200) {
        print("<--- Respon delete nilai");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      Exception(e);
    }
  }

  Future<dynamic> postIzin(String guru, String durasi, String alasan) async {
    try {
      var response =
          await web.post(Uri.parse(Server.BASE_URL + Server.GURU_IZIN));
      if (response.statusCode == 200) {
        print("<--- Respon izin cuti");
        print(response.body);
        print("Close --->");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      Exception(e);
    }
  }
}
