import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/interest_controller.dart';

class InterestItem extends StatefulWidget {
  InterestItem({super.key});
  @override
  State<InterestItem> createState() => _InterestItem();
}

class _InterestItem extends State<InterestItem> {
  late InterestController instance = InterestController.instance;

  late List<dynamic> elementos = [];

  @override
  void initState() {
    fetchDataFromAPI();
    // TODO: implement initState
    super.initState();
  }

  Widget _finish() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: elementos.map((element) {
        return InkWell(
          onTap: () {
            setState(() {
              if (element['selected'] == true) {
                instance.removeString(element['interest']);
                element['selected'] = !element['selected'];
              } else {
                instance.addString(element['interest']);
                element['selected'] = !element['selected'];
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: element['selected'] == true
                    ? const Color.fromRGBO(7, 66, 97, 1)
                    : const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromRGBO(75, 75, 75, 0.28),
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  element["interest"],
                  style: TextStyle(
                    color: element['selected']
                        ? Colors.white
                        : Color.fromRGBO(148, 148, 148, 1),
                  ),
                )),
          ),
        );
      }).toList(),
    );
  }

  Widget _loading() {
    return CircularProgressIndicator();
  }

  Future<void> fetchDataFromAPI() async {
    try {
      var response = await Dio().get('http://localhost:8084/getinterests');
      if (response.statusCode == 200) {
        List<dynamic> result = [];
        setState(() {
          var data = response.data as List<dynamic>;
          data.forEach((element) {
            result.add(
                {"interest": "${element['name_interest']}", "selected": false});
          });
          elementos = result;
        });
      } else {
        // Trate os erros ou códigos de status não 200 aqui
        print('Erro ao carregar os dados');
      }
    } catch (e) {
      // Lidar com exceções ou erros de conexão
      print('Erro: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return !elementos.isEmpty ? _finish() : _loading();
  }
}
