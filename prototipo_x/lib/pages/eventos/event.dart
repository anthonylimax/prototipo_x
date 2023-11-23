import 'package:flutter/material.dart';
import 'package:prototipo_x/components/categories.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _Event();
}

class _Event extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Categories(),
        ],
      ),
    );
  }
}
