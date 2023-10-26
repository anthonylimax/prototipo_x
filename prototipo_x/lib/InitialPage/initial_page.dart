import 'dart:html';

import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Image(image: AssetImage("assets/logo.png")),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: const Text(
              "TeKup",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(242, 40)),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(217, 120, 57, 1)),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(242, 40)),
                  side: MaterialStateProperty.all(
                      BorderSide(color: const Color.fromRGBO(217, 120, 57, 1))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(255, 255, 255, 1)),
                ),
                onPressed: () {},
                child: Text(
                  "Cadastro",
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
