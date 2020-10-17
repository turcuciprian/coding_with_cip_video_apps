import 'package:basic_flutter_boilerplate/globalStateManagement/themeManagement.dart';
import 'package:basic_flutter_boilerplate/ui/themes.dart';
import 'package:provider/provider.dart';

import './utils/routes.dart';

import 'package:flutter/material.dart';
import './globalStateManagement/increment.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Increment()),
      ChangeNotifierProvider(create: (_) => ThemeManagement()),
    ],child:MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate Demo',
      routes: Routes.routes,
      theme: context.watch<ThemeManagement>().currentTheme,
      home: MyHomePage(title: 'Flutter Boilerplate Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var incrementValue=context.watch<Increment>().count;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.login);
              },
              child: Text('Login'),
            ),
            RaisedButton(
              onPressed: () {
                context.read<Increment>().increment();
              },
              child: Text('Increment Using Provider'),
            ),
            Text('Value:${incrementValue}', style: secondaryTheme.textTheme.headline2),
            RaisedButton(
              onPressed: () {
                context.read<ThemeManagement>().toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
