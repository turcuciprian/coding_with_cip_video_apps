import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_4_x/customProvider.dart';

class ProviderOfExampleWidget extends StatefulWidget {
  ProviderOfExampleWidget({Key key}) : super(key: key);
  @override
  ProviderOfExampleWidgetState createState() => ProviderOfExampleWidgetState();
}

class ProviderOfExampleWidgetState extends State<ProviderOfExampleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> textList =
        Provider.of<CustomProvider>(context, listen: false).getListOfStrings;
    return Scaffold(
      appBar: AppBar(
        title: Text('ProviderOf Example'),
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
