import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';
import 'package:prototipo_x/components/events/categories.dart';
import 'package:prototipo_x/repository/login_credentials.dart';

class Favorite_Component extends StatefulWidget {
  const Favorite_Component({super.key});
  @override
  State<Favorite_Component> createState() => _Favorite_ComponentState();
}

class _Favorite_ComponentState extends State<Favorite_Component> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late List<dynamic> favorites = LoginCredentials.instance.favorites;

  Widget _favorite() {
    return Column(
      children: favorites.map((element) {
        return Column(
          children: [
            Container(
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
                              image: NetworkImage(element["img"]),
                              fit: BoxFit.fill),
                        ),
                        width: 84,
                        height: 84,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 40)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              element["timestamp"],
                              style: TextStyle(color: Color(0xff4A91A5)),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              element["title"],
                              style: const TextStyle(
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
                                      element["local"],
                                      style:
                                          TextStyle(color: Color(0xff747688)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.2)),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    element["favorited"] =
                                        !element["favorited"];
                                  });
                                },
                                child: Image.asset(
                                  element["favorited"]
                                      ? "assets/favorited.png"
                                      : "assets/favorite_img.png",
                                  height: 43,
                                  width: 40,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return !favorites.isEmpty ? _favorite() : CircularProgressIndicator();
  }
}
