import 'package:flutter/material.dart';
import 'ourClass.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  String ourString = 'empty';

  void _incrementCounter() {
    setState(() {
      _counter++;
      OurClass tempVar = OurClass(id: 1, name: 'Ciprian', age: 32);
      Map test = tempVar.toJson();
      OurClass testB = OurClass.fromJson(test);
      // ourString = [tempVar, tempVar, tempVar, tempVar].toString();
      ourString = jsonEncode([test, test, test, test]);
      //  ourString = OurClass(id: 1, name: 'Ciprian', age: 32);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$ourString',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
