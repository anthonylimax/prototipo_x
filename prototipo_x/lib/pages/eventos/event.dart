import 'package:flutter/material.dart';
import 'package:prototipo_x/components/events/categories.dart';
import 'package:prototipo_x/components/events/categories_events_component.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _Event();
}

class _Event extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 30, top: 10),
        children: [
          Text("Categorias", style: TextStyle(
            color: Color(0xff1C1B19),
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),),
          Padding(padding: EdgeInsets.only(top: 20)),
          Categories(),
          Padding(padding: EdgeInsets.only(top: 50)),
          Text("Eventos relacionados ", style: TextStyle(
            color: Color(0xff1C1B19),
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),),
          CategoryItemComponent(),
        ],
      ),
        );
  }
}
