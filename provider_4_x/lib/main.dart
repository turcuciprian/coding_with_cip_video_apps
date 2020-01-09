import 'package:flutter/material.dart';
import 'ProviderOfExampleWidget.dart';

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
  List<String> linesOfText = [];
  List<String> tempList = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'k'];
  @override
  void initState() {
    super.initState();
    linesOfText = [];
  }

  void _nextWindowExample() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProviderOfExampleWidget()));
  }

  void addRandomListSentance() {
    tempList.shuffle();
    String tempDynamicString = tempList.join(' ');
    setState(() {
      linesOfText.add(tempDynamicString);
      print(linesOfText);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget addToListButton = Container(
      height: 60,
      width: 260,
      child: FlatButton(
        color: Colors.green,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent[50],
        onPressed: () {
          addRandomListSentance();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Add a random line of text'),
            Icon(Icons.plus_one)
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: linesOfText.length,
              itemBuilder: (BuildContext context, int index) {
                var randomColor =
                    index % 2 != 0 ? Color(0xff0039e6) : Color(0xff00134d);
                return Container(
                  padding: const EdgeInsets.all(5),
                  color: randomColor,
                  child: Text(
                    linesOfText[index],
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                );
              },
            ),
          ),
          addToListButton,
        ]),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 160,
        child: FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () => _nextWindowExample(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Consumer'), Icon(Icons.arrow_forward)],
          ),
        ),
      ),
    );
  }
}
