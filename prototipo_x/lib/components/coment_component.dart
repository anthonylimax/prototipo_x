import 'package:flutter/material.dart';
import 'package:prototipo_x/models/Coment_Forum.dart';

class CommentComponent extends StatefulWidget {
  const CommentComponent({super.key, required this.list});
  final List<Coment> list;
  @override
  State<CommentComponent> createState() => _CommentState(list: list);
}

class _CommentState extends State<CommentComponent> {
  _CommentState({required List<Coment> list}) {
    this.list = list;
  }
  late final List<Coment> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
          children: list.map((element) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(87, 92, 138, 0.06),
              blurRadius: 1,
            ),
            BoxShadow(color: Colors.white)
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(element.path))),
                        width: 37,
                        height: 37,
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(element.user),
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(74, 145, 165, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(element.interest,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.network("assets/user-plus.png"),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(element.descussion),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/favorite.png"),
                              Text(element.likes.toString()),
                            ],
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Row(
                        children: [
                          Image.asset("assets/comment.png"),
                          Text(element.numComents.toString()),
                        ],
                      )
                    ],
                  ),
                  Image.asset("assets/direct.png"),
                ],
              ),
              Container(
                width: 300,
                height: 20,
                decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
              )
            ],
          ),
        );
      }).toList()),
    );
  }
}
