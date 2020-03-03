import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountData with ChangeNotifier {
  int currentCounter = 0;
  List<int> listOfCounters = new List<int>();

  void addCounter() {
    listOfCounters.add(currentCounter);
    notifyListeners();
  }

  void setLatestValue(newValue) {
    currentCounter = newValue;
  }
}
