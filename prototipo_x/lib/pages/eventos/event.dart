import 'package:flutter/material.dart';
import 'package:prototipo_x/components/events/categories.dart';
import 'package:prototipo_x/components/events/categories_events_component.dart';
import 'package:prototipo_x/components/headers/header_default.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _Event();
}

class _Event extends State<Event> {
  @override
  Widget build(BuildContext context) {
    double paddingall = 20;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(padding: EdgeInsets.only(top: 120)),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: Text(
                  "Categorias",
                  style: TextStyle(
                      color: Color(0xff1C1B19),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Categories(listItems: []),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Eventos relacionados ",
                  style: TextStyle(
                      color: Color(0xff1C1B19),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: CategoryItemComponent(),
              ),
            ],
          ),
          HeaderDefault(text: "Eventos"),
          Positioned(
            height: 50,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Image.asset("plus.png"),
            ),
            bottom: 100,
            left: MediaQuery.sizeOf(context).width * 0.5 - 25,
          )
        ],
      ),
    );
  }
}
