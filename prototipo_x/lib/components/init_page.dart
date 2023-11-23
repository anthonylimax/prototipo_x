import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/login_controller.dart';

class Initpage extends StatefulWidget {
  const Initpage({super.key});

  @override
  State<Initpage> createState() => _InitpageState();
}

class _InitpageState extends State<Initpage> {
  late final LoginController lc;
  @override
  void initState() {
    super.initState();
    lc = LoginController.controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Image(image: AssetImage("assets/logo.png")),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: TextButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(242, 40)),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(217, 120, 57, 1)),
              ),
              onPressed: () {
                lc.ChangeState(1);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: TextButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(242, 40)),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Color.fromRGBO(217, 120, 57, 1))),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(255, 255, 255, 1)),
              ),
              onPressed: () {},
              child: const Text(
                "Cadastro",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                ),
              )),
        ),
        InkWell(
          onTap: () {},
          child: const Text(
            "entrar sem login",
            style: TextStyle(decoration: TextDecoration.none),
          ),
        )
      ],
    );
  }
}
