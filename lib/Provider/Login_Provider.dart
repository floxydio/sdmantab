import 'package:flutter/material.dart';
import 'package:sdmantabfront/Pages/Guru/Guru_pages.dart';
import 'package:sdmantabfront/Services/Auth_services.dart';

class LoginProvider with ChangeNotifier {
  // Buat Login

  var responLogin;
  bool loadingDulu = false;
  void loginGuru(uname, pw, BuildContext context) async {
    loadingDulu = false;
    responLogin = await AuthRepository().loginGuru(uname, pw);

    print("DATA --> ${responLogin}");
    print("Respon msg -> ${responLogin["message"].toString()}");
    if (responLogin["status"] == 200) {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                content: Text(responLogin["message"]),
              ));
    }

    loadingDulu = true;
    notifyListeners();
  }

  // Buat Login Kepsek
}
