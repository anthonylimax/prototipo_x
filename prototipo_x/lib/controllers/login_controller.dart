import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  static LoginController controller = LoginController();
  int state = 0;
  bool isHide = true;
  String endpoint = "assets/cloneEye.png";
  // ignore: non_constant_identifier_names
  void ChangeState(state) {
    this.state = state;
    notifyListeners();
  }

  void ChangeEndPoint() {
    isHide = !isHide;
    notifyListeners();
  }
}
