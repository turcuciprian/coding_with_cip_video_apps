import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  buttonColor: Colors.blue[100],
  primarySwatch: Colors.purple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData secondaryTheme = ThemeData(
  primarySwatch: Colors.red,
  buttonColor: Colors.red,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 15, color: Colors.white),
    headline2: TextStyle(fontSize: 25),
  ),
);
