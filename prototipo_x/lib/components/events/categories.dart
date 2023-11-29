import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/event_controller.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.listItems});
  final List<Map> listItems;
  @override
  State<Categories> createState() => CategoriesState(listItems: listItems);
}

class CategoriesState extends State<Categories> {
  
  EventController instance = EventController.instance;
  final List<Map> listItems;
  int prev = 0;

  CategoriesState({required this.listItems});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listItems.length,
          padding: EdgeInsets.only(right: 30),
          itemBuilder: (BuildContext ctx, int index) {
            return Row(
              children: [
                InkWell(
                  focusColor: Color(0xFF4A91A5),
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      listItems[prev]["isSelected"] = false;
                      listItems[index]["isSelected"] = true;
                      instance.changeRender(listItems[index]["title"]);
                      prev = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: listItems[index]["isSelected"]
                            ? Color(0xFF4A91A5)
                            : null,
                        border: Border.all(color: Color(0xFF4A91A5), width: 1)),
                    child: Text(
                      listItems[index]["title"],
                      style: TextStyle(
                        color: listItems[index]["isSelected"]
                            ? Color(0xFFFFFFFF)
                            : null,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 10))
              ],
            );
          }),
    );
    ;
  }
}
