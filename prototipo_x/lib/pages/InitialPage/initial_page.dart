import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';
import 'package:prototipo_x/components/init_page.dart';
import 'package:prototipo_x/components/login_component.dart';
import 'package:prototipo_x/controllers/login_controller.dart';

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

  Widget Controller(state) {
    switch (state) {
      case 0:
        return Initpage();
      case 1:
        return Logincomponenet();
      default:
        return const Text("");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
            animation: lc,
            builder: (context, child) {
              if (lc.state != 0) {
                return Positioned(
                  top: 40,
                  left: 40,
                  child: InkWell(
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
                );
              } else {
                return const SizedBox();
              }
            }),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Image(image: AssetImage("assets/logo_top.png")),
              ),
              AnimatedBuilder(
                animation: lc,
                builder: (context, child) => Controller(lc.state),
              )
            ],
          ),
        )
      ],
    );
  }
}
