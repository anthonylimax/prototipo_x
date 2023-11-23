import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/login_controller.dart';

class Logincomponenet extends StatefulWidget {
  const Logincomponenet({super.key});

  @override
  State<Logincomponenet> createState() => _LogincomponenetState();
}

class _LogincomponenetState extends State<Logincomponenet> {
  Map credentials = {"email": "", "senha": ""};
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
        const Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color.fromRGBO(217, 120, 1, 1),
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 27)),
        Stack(
          children: [
            SizedBox(
              width: 286,
              height: 43,
              child: TextField(
                onChanged: (value) => credentials["email"] = value,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 40),
                    label: Text("Usuário"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid))),
              ),
            ),
            Positioned(
              top: 5,
              left: 10,
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/person.png"),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        Stack(
          children: [
            SizedBox(
              width: 286,
              height: 43,
              child: TextField(
                obscureText: lc.isHide,
                onChanged: (value) => credentials["senha"] = value,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 40, right: 40),
                    label: Text("Senha"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid))),
              ),
            ),
            Positioned(
              top: 8,
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
            ),
            Positioned(
              top: 5,
              left: 10,
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/key.png"),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 150, top: 6, bottom: 100),
          child: Text(
            "Esqueceu a senha?",
            style: TextStyle(
              color: Color.fromRGBO(217, 120, 1, 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextButton(
              onPressed: () {
                print(credentials);
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
        ),
        const Padding(padding: EdgeInsets.all(2)),
        const Text("ou"),
        const Padding(padding: EdgeInsets.all(2)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => null,
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Image.asset("assets/facebook.png", width: 30),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
            InkWell(
              onTap: () => null,
              child: Image.asset("assets/google.png", width: 30),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Não tem uma conta?"),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
            Text("Cadastre-se",
                style: TextStyle(color: Color.fromRGBO(7, 66, 97, 1)))
          ],
        )
      ],
    );
  }
}
