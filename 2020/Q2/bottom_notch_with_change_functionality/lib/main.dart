import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bottom Floating Action Button notch'),
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
  FloatingActionButtonLocation buttonLocation =
      FloatingActionButtonLocation.centerDocked;
  MainAxisAlignment axisAlignment = MainAxisAlignment.spaceBetween;
  Icon arrow = Icon(Icons.chevron_right);
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            buttonLocation = changed == false
                ? FloatingActionButtonLocation.endDocked
                : FloatingActionButtonLocation.centerDocked;
            axisAlignment = changed == false
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween;
            arrow = changed == false
                ? Icon(Icons.chevron_left)
                : Icon(Icons.chevron_right);

            changed = !changed;
          });
        },
        tooltip: 'Increment',
        child: arrow,
      ),
      floatingActionButtonLocation: buttonLocation,
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: axisAlignment,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  //
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {
                  //
                },
              )
            ],
          )),
    );
  }
}
