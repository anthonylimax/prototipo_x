import 'package:flutter/material.dart';
import 'package:prototipo_x/components/about/Image_about.dart';
import 'package:prototipo_x/components/about/about_description.dart';
import 'package:prototipo_x/components/about/admComponent.dart';
import 'package:prototipo_x/models/About.dart';

class AboutEventContent extends StatefulWidget {
  const AboutEventContent({super.key, requi, required this.data});
  final About data;
  @override
  State<AboutEventContent> createState() =>
      _AboutEventContentState(data: this.data);
}

class _AboutEventContentState extends State<AboutEventContent> {
  final About data;

  _AboutEventContentState({required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ImageAbout(),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Text(
            data.name,
            style: TextStyle(color: Color(0xff120D26), fontSize: 35),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0x204A91A5),
                      image: DecorationImage(
                          image: AssetImage("assets/participants.png"))),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  data.numberOfParticipants.toString() + "  Participantes",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0x204A91A5),
                      image: DecorationImage(
                          image: AssetImage("assets/calendar.png"))),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  data.timeStamp,
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0x204A91A5),
                      image: DecorationImage(
                          image: AssetImage("assets/pin_map.png"))),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  data.local,
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          AdmComponent(
            name: 'Maria Helena',
            img:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSunVjyZII1zFtot18O4Rt1vobfxaCPwXkv8Q&usqp=CAU",
            following: false,
          ),
          DescriptionAbout(description: data.description, isSubscribed: false),
        ],
      ),
    );
  }
}
