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
  List<String> myCustomList = [
    'first element',
    'second element',
    'third element',
    'another element',
    'another element example 2',
    'another element example 3',
    'another element example 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: myCustomList.length,
          itemBuilder: (context, index) {
            //
            return Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.red,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListTile(
                  title: Text(
                    myCustomList[index],
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              onDismissed: (direction) {
                // index
                setState(() {
                  myCustomList.removeAt(index);
                });
              },
            );
          },
        ),
      ),
    );
  }
}
