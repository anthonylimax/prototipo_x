import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/login_controller.dart';

class InteresHeader extends StatefulWidget {
  const InteresHeader({super.key});

  @override
  State<InteresHeader> createState() => _InteresHeaderState();
}

class _InteresHeaderState extends State<InteresHeader> {
  late LoginController lc = LoginController.controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(children: [
          InkWell(
            onTap: () {
              lc.ChangeState(0);
            },
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("back.png"),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quais são seus interesses?',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              ),
              Text(
                'Selecione 3 ou mais.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              )
            ],
          )
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
