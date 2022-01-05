import 'package:flutter/material.dart';
import 'package:sdmantabfront/Pages/Guru/Guru_pages.dart';
import 'package:sdmantabfront/Services/Auth_services.dart';

class LoginProvider with ChangeNotifier {
  // Buat Login

  bool loadingDulu = false;
  void loginGuru(uname, pw, BuildContext context) async {
    loadingDulu = false;
    await AuthRepository().loginGuru(uname, pw).then((value) => {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => GuruScreen()))
        });
    loadingDulu = true;
    notifyListeners();
  }

  // Buat Login Kepsek
}
