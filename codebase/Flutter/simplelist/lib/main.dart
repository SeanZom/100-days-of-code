import 'package:flutter/material.dart';

void main() => runApp(new SimpleListApp());

class SimpleListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SimpleList",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple List"),
        ),
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        padding: new EdgeInsets.all(8.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return new Container(
              padding: new EdgeInsets.all(16.0),
              child: new Column(children: <Widget>[
                new Image.network('https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg'),
                new Text("item $index", style: new TextStyle(fontSize: 24.0)),
                new Divider(color: Colors.blue)
              ]));
        });
  }
}
