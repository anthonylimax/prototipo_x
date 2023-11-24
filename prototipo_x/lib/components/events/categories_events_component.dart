import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/event_controller.dart';

class CategoryItemComponent extends StatefulWidget {
  const CategoryItemComponent({super.key});

  @override
  State<CategoryItemComponent> createState() => _CategoryItemComponentState();
}

class _CategoryItemComponentState extends State<CategoryItemComponent> {
  EventController instance = EventController.instance;
  List<Map> items_category = [
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornadax de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "front-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornadax de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "front-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornadax de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "front-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false,
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornadax de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "front-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false,
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornadax de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "front-end",
      "favorited": false
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/c%C3%B3digo-fonte-de-programa%C3%A7%C3%A3o-computador-script-abstrato-background-html-desenvolvimento-uma-web-tela-ou-aplicativo-tecnologia-206610726.jpg?w=2048",
      "timestamp": "Qua, Mar 28 • 17:30 - 18:30",
      "title": "Jornaday de Lógica da programação",
      "local": "Recife, PE - Brasil",
      "category": "back-end",
      "favorited": false,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: instance,
        builder: (context, child) {
          return Column(
              children: items_category.map((e) {
            if (e["category"] == instance.typeRenderCategory) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Color(0x10000000), blurRadius: 5),
                  BoxShadow(color: Color(0xffffffff), blurRadius: 0),
                ], borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(e["img"]),
                                fit: BoxFit.fill),
                          ),
                          width: 84,
                          height: 84,
                        ),
                        Padding(padding: EdgeInsets.only(left: 40)),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  e["timestamp"],
                                  style: TextStyle(color: Color(0xff4A91A5)),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  e["title"],
                                  style: TextStyle(
                                      color: Color(0xff120D26),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset("assets/map-pin.png"),
                                        Text(
                                          e["local"],
                                          style: TextStyle(
                                              color: Color(0xff747688)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        e["favorited"] = !e["favorited"];
                                      });
                                    },
                                    child: Image.asset(
                                      e["favorited"]
                                          ? "assets/favorited.png"
                                          : "assets/favorite_img.png",
                                      height: 43,
                                      width: 40,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Container();
            }
          }).toList());
        });
  }
}
