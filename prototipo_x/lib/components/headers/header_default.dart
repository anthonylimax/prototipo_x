import 'package:flutter/material.dart';

class HeaderDefault extends StatelessWidget {
  const HeaderDefault({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
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
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () {},
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("back.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              ),
            ),
          ),
          Container(),
        ]),
      ),
    );
  }
}
