import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.card_travel),
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
          ),
          IconButton(
            icon: Icon(Icons.info),
            color: Colors.white,
            onPressed: () {
              //
            },
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            height: 30,
            child: Text(
              'Bottom text example ...',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          preferredSize: const Size.fromHeight(25),
        ),
        bottomOpacity: .7,
        shape: Border.all(color: Colors.red, width: 5),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
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
