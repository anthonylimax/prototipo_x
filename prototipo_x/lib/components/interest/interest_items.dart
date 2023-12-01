import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/interest_controller.dart';
import 'package:prototipo_x/repository/interest_items.dart';
import 'package:prototipo_x/repository/login_credentials.dart';

class InterestItem extends StatefulWidget {
  InterestItem({super.key});
  @override
  State<InterestItem> createState() => _InterestItem();
}

class _InterestItem extends State<InterestItem> {
  late InterestController instance = InterestController.instance;

  late List<dynamic> elementos = LoginCredentials.instance.elementos;

  @override
  void initState() {
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
              if (element['isSelected'] == true) {
                instance.removeString(element['title']);
                element['isSelected'] = !element['isSelected'];
              } else {
                instance.addString(element['title']);
                element['isSelected'] = !element['isSelected'];
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: element['isSelected'] == true
                    ? const Color.fromRGBO(7, 66, 97, 1)
                    : const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromRGBO(75, 75, 75, 0.28),
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  element["title"],
                  style: TextStyle(
                    color: element['isSelected']
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

  @override
  Widget build(BuildContext context) {
    return !elementos.isEmpty ? _finish() : _loading();
  }
}
