import 'package:flutter/material.dart';

class CategoryItemComponent extends StatefulWidget {
  const CategoryItemComponent({super.key});

  @override
  State<CategoryItemComponent> createState() => _CategoryItemComponentState();
}

class _CategoryItemComponentState extends State<CategoryItemComponent> {

  List<Map> items_category = [
    {
      "img": "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp" : "Qua, Mar 28 • 17:30 - 18:30",
    },
    {
      "img": "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp" : "Qua, Mar 28 • 17:30 - 18:30",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items_category.map((e){
        return Row(
          children: [
            Container(

              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(e["img"]), fit: BoxFit.fill),
                ),
              width: 84,
              height: 84,
            ),
            Column(
              children: [
                  Text(e["timestamp"]),
                  Text(e["timestamp"]),
                  Text(e["timestamp"]),
              ],
            ),
          ],
        );
      }).toList()
    );
  }
}