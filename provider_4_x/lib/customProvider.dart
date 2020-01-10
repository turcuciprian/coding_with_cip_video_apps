import 'package:flutter/foundation.dart';

class CustomProvider with ChangeNotifier {
  List<String> _listOfStrings = [];
  List<String> get getListOfStrings => _listOfStrings;

  void addListElement(String element) {
    _listOfStrings.add(element);
    notifyListeners();
  }
}
