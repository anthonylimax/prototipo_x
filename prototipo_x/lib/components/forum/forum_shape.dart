import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:prototipo_x/components/forum/coment_component.dart';
import 'package:prototipo_x/models/Coment_Forum.dart';

class ForumShape extends StatefulWidget {
  const ForumShape({super.key});

  @override
  State<ForumShape> createState() => _ForumShapeState();
}

class _ForumShapeState extends State<ForumShape> {
  Coment u1 = Coment().fromJson({
    'user': 'juninho',
    'interest': 'java',
    'path':
        'https://pbs.twimg.com/profile_images/653387001635438592/sn1vfI9q_400x400.jpg'
  });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Positioned(
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Seguidores",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset("assets/filter.png"),
                  ],
                ),
              ),
            ),
            CommentComponent(list: [u1, u1, u1, u1]),
          ],
        )
      ],
    );
  }
}
