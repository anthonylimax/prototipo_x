import 'package:flutter/material.dart';

class ItemHome extends StatefulWidget {
  const ItemHome({super.key, required this.path, required this.title});
  final String path;
  final String title;
  @override
  State<ItemHome> createState() =>
      _ItemHomeState(path: this.path, title: this.title);
}

class _ItemHomeState extends State<ItemHome> {
  final String path;
  final String title;
  String img() {
    if (title == "Grupos") {
      return "assets/group.png";
    } else if (title == "Fórum") {
      return "assets/message.png";
    } else {
      return "assets/calendary.png";
    }
  }

  _ItemHomeState({required this.path, required this.title});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffD0D0D0), offset: Offset(0, 0), blurRadius: 2)
            ]),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffD0D0D0),
                      offset: Offset(0, 1),
                    ),
                    BoxShadow(
                      color: Color(0xffffffff),
                      offset: Offset(0, 0),
                    ),
                  ]),
              child: Container(
                width: 90,
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Color(0xff575757),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(img()))),
            ),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
