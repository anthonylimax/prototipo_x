import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Categorias'),
        ListView(
          children: [
            ListTile(
              title: Text("Algo relevanter"),
            )
          ],
        )
      ],
    );
  }
}
