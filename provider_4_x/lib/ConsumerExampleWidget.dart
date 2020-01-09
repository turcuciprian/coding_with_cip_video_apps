import 'package:flutter/material.dart';

class ConsumerExampleWidget extends StatefulWidget {
  ConsumerExampleWidget({Key key}) : super(key: key);
  @override
  ConsumerExampleWidgetState createState() => ConsumerExampleWidgetState();
}

class ConsumerExampleWidgetState extends State<ConsumerExampleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> textList = [];
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumer Example'),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
              itemCount: textList.length,
              itemBuilder: (BuildContext context, int index) {
                var randomColor =
                    index % 2 != 0 ? Color(0xff0039e6) : Color(0xff00134d);
                return Container(
                  padding: const EdgeInsets.all(5),
                  color: randomColor,
                  child: Text(
                    textList[index],
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
