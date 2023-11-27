import 'package:flutter/foundation.dart';
import 'package:prototipo_x/models/user.dart';
import 'package:prototipo_x/repository/login_credentials.dart';
import 'package:uuid/uuid.dart';
import 'package:dio/dio.dart';

class ApiController extends ChangeNotifier {
  var dio = Dio();
  StateControll state = StateControll.start;
  static ApiController instance = ApiController();
  getForuns() async {
    var foruns = await dio.post("http://localhost:8084/getforuns");
    print(foruns);
    return;
  }

  verify(Map login) async {
    state = StateControll.loading;
    notifyListeners();
    LoginCredentials loginCredentials = LoginCredentials.instance;
    var foruns =
        await dio.post("http://localhost:8084/verifycredentials", data: login);
    var data = foruns.data;
    if (data["error"] != true) {
      Map convert = {
        "name": data["name"],
        "user_public_id": data["user_public_id"],
        "about": data["about"]
      };
      loginCredentials.AprovedLogin(convert);
      state = StateControll.ok;
      notifyListeners();
      return true;
    } else {
      state = StateControll.start;
      return false;
      notifyListeners();
    }
  }
}

enum StateControll { start, loading, ok, error }
