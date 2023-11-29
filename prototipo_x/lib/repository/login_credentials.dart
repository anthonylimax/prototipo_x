import 'package:flutter/foundation.dart';
import 'package:prototipo_x/models/user.dart';

class LoginCredentials extends ChangeNotifier {
  bool logged = false;
  late User profile;
  static LoginCredentials instance = LoginCredentials();
  bool AprovedLogin(Map credentials) {
    User login = User.fromJson(credentials);
    profile = login;
    print(profile.userpublicid);
    logged = true;
    notifyListeners();
    return logged;
  }
}
