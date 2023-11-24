import 'package:flutter/material.dart';

class HeaderAbout extends StatelessWidget {
  const HeaderAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xff0000000), blurRadius: 5)]),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
                width: 40, height: 40, child: Image.asset("assets/back.png")),
          ),
          Text("Detalher Evento",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          InkWell(
            onTap: () {},
            child: Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0x204A91A5),
                  image: DecorationImage(
                      image: AssetImage("assets/favorite_img.png"))),
            ),
          )
        ],
      ),
    );
    ;
  }
}
