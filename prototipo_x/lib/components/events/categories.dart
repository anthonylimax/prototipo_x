import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  List<Map> listItems = [{"title": "backend", "isSelected": false}, {"title": "backend", "isSelected": false},{"title": "backend", "isSelected": false},{"title": "backend", "isSelected": false},{"title": "backend", "isSelected": false},{"title": "backend", "isSelected": false}];
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      child: ListView.builder(
        
            scrollDirection: Axis.horizontal,
            itemCount: listItems.length,
            padding: EdgeInsets.only(right: 30),
            itemBuilder: (BuildContext ctx, int index){
            return Row(
              children: [
                InkWell(
                  focusColor: Color(0xFF4A91A5),
                  borderRadius: BorderRadius.circular(20),
              onTap: (){
                setState(() {
                  listItems[index]["isSelected"] = !listItems[index]["isSelected"];
                  print(listItems[index]);
                });
              },
              child: Container(
              alignment: Alignment.center,
              child: Text(listItems[index]["title"], style: TextStyle(
                color: listItems[index]["isSelected"] ? Color(0xFFFFFFFF) : null, 
              ),),
              padding: EdgeInsets.symmetric(horizontal: 20),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: listItems[index]["isSelected"] ? Color(0xFF4A91A5) : null,
                border: Border.all(color: Color(0xFF4A91A5),
                width: 1 )
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 10))],
            );
          }
      ),
    );;
  }
}