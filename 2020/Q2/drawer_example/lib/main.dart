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
      home: MyHomePage(title: 'Drawer Widget Example'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Title',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text('Home', style: TextStyle(color: Colors.blue))),
            ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.blue,
                ),
                title: Text('Profile', style: TextStyle(color: Colors.blue))),
            ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title: Text('Chat', style: TextStyle(color: Colors.blue))),
            ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title:
                    Text('Settings', style: TextStyle(color: Colors.blue))),
          ],
        ),
      ),
    );
  }
}
