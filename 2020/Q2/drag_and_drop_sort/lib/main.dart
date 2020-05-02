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
    "first element",
    "second element",
    "third element",
    "fifth element",
    "example 6",
    "example 7",
    "example 8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ReorderableListView(
          children: List.generate(myCustomList.length, (index) {
            return ListTile(
              key: UniqueKey(),
              title: Text(myCustomList[index]),
            );
          }),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final String newString = myCustomList.removeAt(oldIndex);
              myCustomList.insert(newIndex, newString);
            });
          },
        ),
      ),
    );
  }
}
