import 'package:flutter/cupertino.dart';

class LanguageProvider with ChangeNotifier {
  Locale _currentLanguage = Locale('en');
  Locale get language => _currentLanguage;

  void changeLaguage() {
    _currentLanguage =
        _currentLanguage == Locale('en') ? Locale('es') : Locale('en');
    notifyListeners();
  }
}
