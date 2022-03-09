import 'package:flutter/material.dart';

class NewUserPageProvider with ChangeNotifier {
  NewUserPageProvider();

  TextEditingController newusernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
}
