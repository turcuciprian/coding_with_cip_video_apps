import 'package:basic_flutter_boilerplate/ui/themes.dart';
import 'package:basic_flutter_boilerplate/utils/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: secondaryTheme,
      routes: Routes.routes,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Page Example',
                style: secondaryTheme.textTheme.headline2,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back', style: secondaryTheme.textTheme.headline6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
