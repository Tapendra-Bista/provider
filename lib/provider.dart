import 'package:flutter/material.dart';
class User extends ChangeNotifier {
  String? word;
  bool? mybool;
  void myfun(int age) {
    if (age >= 18) {
      word = "Your are adult now !";
      mybool = true;
      notifyListeners();
    } else {
        word = "Your aren't adult now !";
      mybool = false;
      notifyListeners();
    }
  }
}
