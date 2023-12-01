import 'package:flutter/material.dart';
import 'package:prototipo_x/components/ItemHome/ItemHome.dart';
import 'package:prototipo_x/components/favorites/favorites_components.dart';
import 'package:prototipo_x/components/headers/header_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

_sucess(){
  
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        HeaderHome(),
        Padding(padding: EdgeInsets.all(20)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ItemHome(path: "", title: "Grupos"),
          ItemHome(path: "/forumPath", title: "Fórum"),
          ItemHome(path: "/events", title: "Eventos")
        ]),
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50, bottom: 30),
          child: Text(
            "Eventos Próximos",
            style: TextStyle(
                color: Color(0xff363636),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ));
  }
}
