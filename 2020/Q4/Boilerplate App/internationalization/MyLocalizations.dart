import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLocalizations {
  MyLocalizations(this.locale);

  final Locale locale;

  static MyLocalizations of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

  Map<String, String> _sentances;

  Future<bool> load() async {
    String data = await rootBundle
        .loadString('assets/lng/${this.locale.languageCode}.json');
    Map<String, dynamic> _result = json.decode(data);

    this._sentances = new Map();
    _result.forEach((key, value) {
      this._sentances[key] = value.toString();
    });
    return true;
  }
  String trans(String key){
    return this._sentances[key];
  }

}
