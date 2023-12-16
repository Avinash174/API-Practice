import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
