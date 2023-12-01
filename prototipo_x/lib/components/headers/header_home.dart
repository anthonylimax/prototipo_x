import 'package:flutter/material.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(color: Color(0xffffffff), boxShadow: [
        BoxShadow(
          color: Color(0x0c000000),
          offset: Offset(0, 2),
          blurRadius: 2,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/menu.png"))),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/logo_top.png"),
            )),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://res.cloudinary.com/dnnhfgiu5/image/upload/v1701352681/w3duumysoyhx2ff5kt7t.jpg"))),
            ),
          ),
        ],
      ),
    );
  }
}
