import 'package:flutter/material.dart';

class HeaderBack extends StatelessWidget {
  HeaderBack({super.key, required this.text, required this.img});
  final String text;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("back.png"),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.32),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.30),
            child: Image.asset(img),
          ),
        ]),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          spreadRadius: 0,
          color: Color.fromRGBO(0, 0, 0, 0.5),
          blurRadius: 1,
          offset: Offset(0, 0),
        ),
        BoxShadow(
          spreadRadius: 0,
          color: Colors.white,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ]),
    );
  }
}