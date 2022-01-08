import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Pages/Guru/Guru_pages.dart';
import 'package:sdmantabfront/Services/Guru_service.dart';

class GuruProvider with ChangeNotifier {
  // Buat bikin nilai
  bool loadingDulu = false;
  void postNilai(String nama, String kelas, String nilaiuts, String nilaiuas,
      String kritik, BuildContext context) async {
    loadingDulu = false;
    var responLogin = await GuruRepository()
        .postNilai(nama, kelas, nilaiuts, nilaiuas, kritik);
    loadingDulu = true;
    notifyListeners();
  }

  // buat get nilai
  Map<String, dynamic> nilaiguru = {};
  Future getNilai(BuildContext context) async {
    nilaiguru.clear();
    loadingDulu = false;
    nilaiguru = await GuruRepository().getNilai();

    notifyListeners();
  }

  // Map<String, dynamic> hapusNilai = {};
  Future deleteNilai(id) async {
    loadingDulu = false;
    var response = await GuruRepository().deleteNilai(id);

    notifyListeners();
  }

  void postIzin(String guru, String durasi, String alasan) async {
    var reponse = await GuruRepository().postIzin(guru, durasi, alasan);

    notifyListeners();
  }
}
