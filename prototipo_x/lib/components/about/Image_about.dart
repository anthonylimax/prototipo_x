import 'package:flutter/material.dart';

class ImageAbout extends StatelessWidget {
  const ImageAbout({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(0, 0.5),
              image: AssetImage("assets/images.png")),
          color: Colors.black,
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(400, 160))),
    );
  }
}
