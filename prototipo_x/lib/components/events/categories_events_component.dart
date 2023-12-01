import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';
import 'package:prototipo_x/controllers/event_controller.dart';
import 'package:prototipo_x/repository/login_credentials.dart';

class CategoryItemComponent extends StatefulWidget {
  const CategoryItemComponent({super.key});

  @override
  State<CategoryItemComponent> createState() => _CategoryItemComponentState();
}

class _CategoryItemComponentState extends State<CategoryItemComponent> {
  EventController instance = EventController.instance;
  List<dynamic> items_category = LoginCredentials.instance.events;
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
                decoration: BoxDecoration(boxShadow: const [
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
                                  style: const TextStyle(
                                      color: Color(0xff120D26),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: 300,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    InkWell(
                                      onTap: () {
                                        print(e);
                                        setState(() {
                                          if (e['favorited']) {
                                            ApiController.instance
                                                .AddingFavorite(e['id_event']);
                                          } else {
                                            ApiController.instance
                                                .removingFavorite(
                                                    e['id_event']);
                                          }
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
                                ),
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
