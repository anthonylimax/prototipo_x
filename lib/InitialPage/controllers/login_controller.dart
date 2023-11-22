import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  static LoginController controller = LoginController();
  int state = 0;
  bool isHide = true;
  String endpoint = "assets/esconder.png";
  // ignore: non_constant_identifier_names
  void ChangeState(state) {
    this.state = state;
    notifyListeners();
  }

  void ChangeEndPoint() {
    if (endpoint == "assets/olho.png") {
      endpoint = "assets/esconder.png";
      isHide = !isHide;
      notifyListeners();
    } else {
      isHide = !isHide;
      endpoint = "assets/olho.png";
      notifyListeners();
    }
  }
}
