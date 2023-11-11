import 'dart:html';

import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';
import 'package:prototipo_x/controllers/login_controller.dart';
import 'package:prototipo_x/models/user.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late final LoginController lc;
  @override
  void initState() {
    super.initState();
    lc = LoginController.controller;
  }

  Map credentials = {"email": "", "senha": ""};

  Widget Controller(state) {
    switch (state) {
      case 0:
        return Column(
          children: [
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
                    side: MaterialStateProperty.all(const BorderSide(
                        color: Color.fromRGBO(217, 120, 57, 1))),
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
      case 1:
        return Column(
          children: [
            SizedBox(
              width: 242,
              child: TextField(
                onChanged: (value) => credentials["email"] = value,
                decoration: const InputDecoration(
                    label: Text("Usuário"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid))),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: 242,
                    child: TextField(
                      obscureText: lc.isHide,
                      onChanged: (value) => credentials["senha"] = value,
                      decoration: const InputDecoration(
                          label: Text("Senha"),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(style: BorderStyle.solid))),
                    ),
                  ),
                ),
                Positioned(
                  top: 27,
                  right: 10,
                  child: SizedBox(
                      width: 30,
                      height: 30,
                      child: InkWell(
                        onTapDown: (tap) {
                          lc.ChangeEndPoint();
                        },
                        onTapUp: (tap) {
                          lc.ChangeEndPoint();
                        },
                        child: Image.asset(lc.endpoint),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    User u1 = User().fromJson(credentials);
                    print(u1.user);
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(242, 40)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(217, 120, 57, 1)),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            )
          ],
        );
      default:
        return const Text("");
    }
  }

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
          const Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: Text(
              "TeKup",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: lc,
            builder: (context, child) => Controller(lc.state),
          )
        ],
      ),
    );
  }
}
