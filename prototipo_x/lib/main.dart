import 'package:flutter/material.dart';
import 'package:prototipo_x/homepage/homepage.dart';
import 'InitialPage/initial_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/loginPath": (context) => const Scaffold(
              body: InitialPage(),
            ),
        "/homePath": (context) => homepage(),
      },
      initialRoute: "/homePath",
    );
  }
}
