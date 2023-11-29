import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';
import 'package:prototipo_x/components/events/categories.dart';
import 'package:prototipo_x/repository/login_credentials.dart';

class Favorite_Component extends StatefulWidget {
  const Favorite_Component({super.key});
  @override
  State<Favorite_Component> createState() => _Favorite_ComponentState();
}


class _Favorite_ComponentState extends State<Favorite_Component> {



      @override
  void initState() {
    fetchDataFromAPI();
    // TODO: implement initState
    super.initState();
  }

      late List<dynamic> favorites = [];

    Future<void> fetchDataFromAPI() async{
      List<dynamic> list = [];
      var response = await Dio().post("http://localhost:8084/user/favorites", data: {"id" : "sansidjdasdniasdaid"});
      try{
        List<dynamic> result = [];
        if(response.statusCode == 200){
        result = response.data;
          print(response.data);
          
          setState((){
            result.forEach((element) {
              list.add(
                {
                  "description" : "${element['description']}",
                  "event_data" : "${element['event_data']}",
                  "organizer" : "${element['organizer']}",
                  "name" : "${element['name']}",
                  "localizacao" : "${element['localizacao']}",
                  "favorited" : true,
                }
              );
            });
            print(list);
          });
        }
      }
      catch(e){
        print("${e}");
      }
    }

  _favorite(){
    return favorites.map(element)
    
  }

  @override
  Widget build(BuildContext context) {
    return !favorites.isEmpty ? _favorite() : CircularProgressIndicator();
  }

}