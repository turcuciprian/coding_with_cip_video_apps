import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageExample {
  static final LocalStorageExample _singleton = LocalStorageExample._internal();
  static SharedPreferences prefs;

  factory LocalStorageExample() {
    _singleton.initializeMe();
    return _singleton;
  }
  LocalStorageExample._internal();

  void initializeMe() async {
    prefs = await SharedPreferences.getInstance();
  }

  void setAuthor(authorName) async {
    await prefs.setString('author', authorName);
  }

  String getAuthor() {
    return prefs.getString('author');
  }
}
