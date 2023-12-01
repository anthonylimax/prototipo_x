import 'package:flutter/foundation.dart';
import 'package:prototipo_x/repository/login_credentials.dart';
import 'package:dio/dio.dart';

class ApiController extends ChangeNotifier {
  var dio = Dio();
  var url = "http://localhost:8084/";
  StateControll state = StateControll.start;
  static ApiController instance = ApiController();

  getForuns() async {
    var foruns = await dio.post('${url}getforuns');
    var data = foruns.data;
    if (data["error"] != true) {
      Map convert = {
        "interest": data["name_interest"],
        "public_user_id": data["public_user_id"],
      };

      return convert;
    } else {
      return false;
    }
  }

  removingFavorite(String id_event) async {
    try {
      var data = LoginCredentials.instance.profile.userpublicid;
      await Dio().delete("http://localhost:8084/deleting/favorite",
          data: {"id_event": id_event, "user_public_id": data});
    } catch (e) {
      print(e.toString());
    }
  }
  AddingFavorite(String id_event) async {
    try {
      var data = LoginCredentials.instance.profile.userpublicid;
      await Dio().post("http://localhost:8084/adding/favorite",
          data: {"id_event": id_event, "user_public_id": data});
    } catch (e) {
      print(e.toString());
    }
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
      notifyListeners();
      return false;
    }
  }
}

enum StateControll { start, loading, ok, error }
