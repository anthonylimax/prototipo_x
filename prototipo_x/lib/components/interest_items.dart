import 'package:flutter/material.dart';
import 'package:prototipo_x/controllers/interest_controller.dart';

class InterestItem extends StatefulWidget {
  const InterestItem({super.key});

  @override
  State<InterestItem> createState() => _InterestItem();
}

class _InterestItem extends State<InterestItem> {
  InterestController instance = InterestController.instance;
  final List<Map> elementos = [
    {'selected': false, 'id': 0, 'interest': 'SQL'},
    {'selected': false, 'id': 1, 'interest': 'Node.js'},
    {'selected': false, 'id': 2, 'interest': 'Java'},
    {'selected': false, 'id': 3, 'interest': 'Python'},
    {'selected': false, 'id': 4, 'interest': 'JavaScript'},
    {'selected': false, 'id': 5, 'interest': 'C#'},
    {'selected': false, 'id': 6, 'interest': 'Ruby'},
    {'selected': false, 'id': 7, 'interest': 'PHP'},
    {'selected': false, 'id': 8, 'interest': 'Swift'},
    {'selected': false, 'id': 9, 'interest': 'Go'},
    {'selected': false, 'id': 10, 'interest': 'Kotlin'},
    {'selected': false, 'id': 11, 'interest': 'Rust'},
    {'selected': false, 'id': 12, 'interest': 'TypeScript'},
    {'selected': false, 'id': 13, 'interest': 'C++'},
    {'selected': false, 'id': 14, 'interest': 'Ruby on Rails'},
    {'selected': false, 'id': 15, 'interest': 'HTML/CSS'},
    {'selected': false, 'id': 16, 'interest': 'React'},
    {'selected': false, 'id': 17, 'interest': 'Angular'},
    {'selected': false, 'id': 18, 'interest': 'Vue.js'},
    {'selected': false, 'id': 19, 'interest': 'Django'},
    {'selected': false, 'id': 20, 'interest': 'Scala'},
    {'selected': false, 'id': 21, 'interest': 'Perl'},
    {'selected': false, 'id': 22, 'interest': 'R'},
    {'selected': false, 'id': 23, 'interest': 'Elixir'},
    {'selected': false, 'id': 24, 'interest': 'F#'},
    {'selected': false, 'id': 25, 'interest': 'Haskell'},
    {'selected': false, 'id': 26, 'interest': 'Shell Scripting'},
    {'selected': false, 'id': 27, 'interest': 'Dart'},
    {'selected': false, 'id': 28, 'interest': 'COBOL'},
    {'selected': false, 'id': 29, 'interest': 'Lisp'},
    {'selected': false, 'id': 30, 'interest': 'Objective-C'},
    {'selected': false, 'id': 31, 'interest': 'Assembly Language'},
    {'selected': false, 'id': 32, 'interest': 'Verilog'},
    {'selected': false, 'id': 33, 'interest': 'VHDL'},
    {'selected': false, 'id': 34, 'interest': 'Groovy'},
    {'selected': false, 'id': 35, 'interest': 'Clojure'},
    {'selected': false, 'id': 36, 'interest': 'MATLAB'},
    {'selected': false, 'id': 37, 'interest': 'Racket'},
    {'selected': false, 'id': 38, 'interest': 'Erlang'},
    {'selected': false, 'id': 39, 'interest': 'Cassandra'},
    {'selected': false, 'id': 40, 'interest': 'Hadoop'},
    {'selected': false, 'id': 41, 'interest': 'MongoDB'},
    {'selected': false, 'id': 42, 'interest': 'Redis'},
    {'selected': false, 'id': 43, 'interest': 'GraphQL'},
    {'selected': false, 'id': 44, 'interest': 'Docker'},
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: elementos.map((element) {
        return InkWell(
          onTap: () {
            setState(() {
              if (element['selected'] == true) {
                instance.removeString(element['interest']);
                element['selected'] = !element['selected'];
              } else {
                instance.addString(element['interest']);
                element['selected'] = !element['selected'];
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: element['selected'] == true
                    ? const Color.fromRGBO(7, 66, 97, 1)
                    : const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: const Color.fromRGBO(75, 75, 75, 0.28),
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  element["interest"],
                  style: TextStyle(
                    color: element['selected']
                        ? Colors.white
                        : Color.fromRGBO(148, 148, 148, 1),
                  ),
                )),
          ),
        );
      }).toList(),
    );
  }
}
