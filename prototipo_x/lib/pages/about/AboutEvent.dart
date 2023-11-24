import 'package:flutter/material.dart';
import 'package:prototipo_x/components/about/about_event.dart';
import 'package:prototipo_x/components/headers/header_about.dart';
import 'package:prototipo_x/models/About.dart';

class AboutEvent extends StatefulWidget {
  const AboutEvent({super.key});
  @override
  State<AboutEvent> createState() => _AboutEventState();
}

class _AboutEventState extends State<AboutEvent> {
  final About about = About.FromJSON({
    "numberOfParticipants": 200,
    "timeStamp": "14 de Dezembro, 2024",
    "local": "Recife",
    "profileAdm": "Renatinha",
    "name": "Banco de Dados",
    "description":
        "Esse evento conta com a participação da desenvolvedora de SQL, Paula Vieira, onde ela apresentará os fundamentos, conceitos e passo a passo de como ultilizar o SQL."
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              AboutEventContent(
                data: about,
              )
            ],
          ),
          HeaderAbout(),
        ],
      ),
    );
  }
}
