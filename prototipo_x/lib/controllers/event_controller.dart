import 'package:flutter/material.dart';

class EventController extends ChangeNotifier {
  static EventController instance = EventController();
  String typeRenderCategory = "back-end";

  void changeRender(String newRender) {
    typeRenderCategory = newRender;
    notifyListeners();
  }
}