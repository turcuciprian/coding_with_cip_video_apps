import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountData with ChangeNotifier {
  int currentCounter = 0;
  List<int> listOfCounters = new List<int>();
  void addCounter() {
    if (listOfCounters.length == 0 ||
        currentCounter != listOfCounters[listOfCounters.length - 1]) {
      listOfCounters.add(this.currentCounter);
      notifyListeners();
    }
  }

  void setCurrentCounter(value) {
    currentCounter = value;
    notifyListeners();
  }
}
