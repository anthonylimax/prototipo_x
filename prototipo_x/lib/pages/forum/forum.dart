import 'package:flutter/material.dart';
import 'package:prototipo_x/components/forum_shape.dart';
import 'package:prototipo_x/components/header_back.dart';

class Forum extends StatefulWidget {
  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          HeaderBack(text: "Forum", img: "assets/lupa.png"),
          Stack(
            alignment: Alignment.center,
            children: [
              ForumShape(),
              Positioned(bottom: 20, child: Image.asset("assets/plus.png")),
            ],
          ),  
        ],
      ),
    );
  }
}
