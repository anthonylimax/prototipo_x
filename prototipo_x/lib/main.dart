import 'package:flutter/material.dart';
import 'package:prototipo_x/pages/about/AboutEvent.dart';
import 'package:prototipo_x/pages/favorites/favorites.dart';
import 'package:prototipo_x/pages/forum/forum.dart';
import 'package:prototipo_x/pages/eventos/event.dart';
import 'package:prototipo_x/pages/interest/interest.dart';
import 'pages/login/login.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      routes: {
        "/": (context) => const Scaffold(
              body: InitialPage(),
            ),
        "/homePath": (context) => Home(),
        "/interest": (context) => Interest(),
        "/forumPath": (context) => Forum(),
        "/events": (context) => Event(),
        "/AboutEvent": (context) => AboutEvent(),
        "/favorites": (context) => Favorites(),
      },
      initialRoute: "/",
    );
  }
}
