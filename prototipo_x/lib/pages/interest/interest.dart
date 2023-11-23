import 'package:flutter/material.dart';
import 'package:prototipo_x/components/header_interest_component.dart';
import 'package:prototipo_x/components/interest_items.dart';
import 'package:prototipo_x/controllers/interest_controller.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});
  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  InterestController instance = InterestController.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: instance,
        builder: (ctx, child) {
          return Column(
            children: [
              InteresHeader(),
              Padding(padding: EdgeInsets.only(top: 30)),
              SizedBox(
                width: 350,
                child: InterestItem(),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: instance.interests.length >= 3
                          ? Color.fromRGBO(7, 66, 97, 1)
                          : Color.fromRGBO(7, 66, 97, 0.6),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5  ,
                      height: 40,
                      child: Center(
                          child: Text(
                        'Prosseguir',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )),
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
