import 'package:flutter/material.dart';

import '../ui/login.dart';

class Routes{
  Routes._();

  static const String login ='/login';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => Login(),

  };

}