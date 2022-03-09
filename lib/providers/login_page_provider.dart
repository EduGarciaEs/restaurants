import 'package:flutter/material.dart';

class LoginPageProvider with ChangeNotifier {
  bool isLoging = false;
  LoginPageProvider();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void navigateToSearchPage(BuildContext context) {
    Navigator.pushNamed(context, 'searcher_page');
  }

  void ejemploCambiarEstadoLogin() {
    isLoging = !isLoging;
    notifyListeners();
  }
}
