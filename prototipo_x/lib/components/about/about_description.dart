import 'package:flutter/material.dart';

class DescriptionAbout extends StatelessWidget {
  const DescriptionAbout(
      {super.key, required this.description, required this.isSubscribed});
  final String description;
  final bool isSubscribed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sobre o Evento",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(description),
              Padding(padding: EdgeInsets.only(bottom: 30)),
            ],
          ),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Color(0xff074261),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Me inscrever",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Image(image: AssetImage("assets/arrowRight.png")),
              ],
            ),
          ),
        )
      ],
    );
  }
}
