import 'package:flutter/material.dart';
import 'package:prototipo_x/Infra/api_controller.dart';

class InterestController extends ChangeNotifier {
  static InterestController instance = InterestController();
  StateInterest state = StateInterest.start;

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

enum StateInterest { start, loading, finish }
