import 'package:flutter/material.dart';

class AdmComponent extends StatefulWidget {
  const AdmComponent(
      {super.key,
      required this.img,
      required this.name,
      required this.following});
  final String img;
  final String name;
  final bool following;
  @override
  State<AdmComponent> createState() => _AdmComponentState(
        img: this.img,
        name: this.name,
        following: this.following,
      );
}

class _AdmComponentState extends State<AdmComponent> {
  final String img;
  final String name;
  final bool following;

  _AdmComponentState(
      {required this.img, required this.name, required this.following});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Color(0x5DDDDDDD), width: 2),
      ),
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Organizador",
                      style: TextStyle(
                        color: Color(0xff706E8F),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              print("sasa");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              decoration: BoxDecoration(
                  color: Color(0x284A91A5),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                following ? "Seguindo" : "Seguir",
                style: TextStyle(
                  color: Color(0xff4A91A5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
