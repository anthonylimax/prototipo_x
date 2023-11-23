import 'package:flutter/material.dart';

class InterestController extends ChangeNotifier {
  static InterestController instance = InterestController();
  List<String> interests = [];
  addString(value) {
    interests.add(value);
    print(interests);
    notifyListeners();
  }

  removeString(value) {
    interests.removeAt(interests.indexOf(value));
    print(interests);
    notifyListeners();
  }
}
