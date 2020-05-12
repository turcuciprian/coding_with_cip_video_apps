import 'package:flutter/material.dart';

class MyChildExample extends StatefulWidget {
  final String text;
  final customFunction;
  MyChildExample({Key key, this.text, this.customFunction}) : super(key: key);

  _MyChildExampleState createState() => _MyChildExampleState();
}

class _MyChildExampleState extends State<MyChildExample> {
  @override
  Widget build(BuildContext context) {
    String theText = widget.text != null ? widget.text : 'empty';
    // TODO: implement build
    return Container(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(theText),
            RaisedButton(
              child: Text('Click me'),
              onPressed: () {
                widget.customFunction('String from child');
              },
            )
          ],
        ));
  }
}
