import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:prototipo_x/models/user.dart';
import 'package:prototipo_x/repository/interest_items.dart';

class LoginCredentials extends ChangeNotifier {
  bool logged = false;
  late User profile;
  late List<dynamic> elementos;
  late List<dynamic> events = [];
  late List<dynamic> favorites = [];
  static LoginCredentials instance = LoginCredentials();
  bool AprovedLogin(Map credentials) {
    User login = User.fromJson(credentials);
    profile = login;
    print(profile.userpublicid);
    logged = true;
    fetchListEvents();
    fetchDataInterest();
    notifyListeners();
    return logged;
  }

  void Favorites() {
    favorites = [];
    events.forEach((element) {
      if (element["favorited"]) {
        favorites.add(element);
      }
    });
    notifyListeners();
    print(favorites);
  }

  Future<void> fetchDataInterest() async {
    try {
      var response = await Dio().get('http://localhost:8084/getinterests');
      if (response.statusCode == 200) {
        List<dynamic> result = [];
        var data = response.data as List<dynamic>;

        data.forEach((element) {
          result.add(
              {"title": "${element['name_interest']}", "isSelected": false});
        });
        elementos = result;

        InterestItems.instance.addInterests(elementos);
      } else {
        // Trate os erros ou códigos de status não 200 aqui
        print('Erro ao carregar os dados');
      }
    } catch (e) {
      // Lidar com exceções ou erros de conexão
      print('Erro: $e');
    }
  }

  addFavorite(String id_event) {
    events.forEach((element) {
      if (element.id_event == id_event) {
        favorites.add(element);
      }
    });
  }

  removeFavorite(String id_event) {
    favorites.forEach((element) {
      if (element.id_event == id_event) {
        favorites.remove(element);
      }
    });
  }

  Future<void> fetchListEvents() async {
    try {
      var response = await Dio().post("http://localhost:8084/getting/events",
          data: {"id": profile.userpublicid});

      if (response.statusCode == 200) {
        List<dynamic> list = [];
        List<dynamic> result = [];
        result = response.data as List<dynamic>;
        result.forEach((element) {
          var data = element['event_data'].toString();
          var year = data[0] + data[1] + data[2] + data[3];
          var day = data[4] + data[5];
          var month = data[6] + data[7];
          if (month == "01") {
            month = "Janeiro";
          } else if (month == "02") {
            month = "Fevereiro";
          } else if (month == "03") {
            month = "Março";
          } else if (month == "04") {
            month = "Abril";
          } else if (month == "05") {
            month = "Maio";
          } else if (month == "06") {
            month = "Junho";
          } else if (month == "07") {
            month = "Julho";
          } else if (month == "08") {
            month = "Agosto";
          } else if (month == "09") {
            month = "Setembro";
          } else if (month == "10") {
            month = "Outubro";
          } else if (month == "11") {
            month = "Novembro";
          } else if (month == "12") {
            month = "Dezembro";
          }
          data = "Quarta, " + month + ' ' + day;
          list.add({
            "img":
                "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
            "description": "${element['description']}",
            "timestamp": data,
            "organizer": "${element['organizer']}",
            "category": "back-end",
            "title": "${element['name']}",
            "local": "${element['localizacao']}",
            "id_event": element['forum_public_id'],
            "favorited": element['isSelected'],
          });
          events = list;
          Favorites();
          notifyListeners();
        });
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }
}
