import 'package:flutter/material.dart';

class InterestItems extends ChangeNotifier {
  List<dynamic> interets = [];
  static InterestItems instance = InterestItems();
  addInterests(List<dynamic> interest) {
    interets = interest;
    notifyListeners();
  }
}
