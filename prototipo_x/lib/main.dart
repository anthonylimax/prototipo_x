import 'dart:html';

import 'package:flutter/material.dart';
import 'package:prototipo_x/pages/about/AboutEvent.dart';
import 'package:prototipo_x/pages/forum/forum.dart';
import 'package:prototipo_x/pages/eventos/event.dart';
import 'package:prototipo_x/pages/interest/interest.dart';
import 'pages/InitialPage/initial_page.dart';
import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      routes: {
        "/loginPath": (context) => const Scaffold(
              body: InitialPage(),
            ),
        "/homePath": (context) => Home(),
        "/interest": (context) => Interest(),
        "/forumPath": (context) => Forum(),
        "/events": (context) => Event(),
        "/AboutEvent": (context) => AboutEvent()
      },
      initialRoute: "/AboutEvent",
    );
  }
}
