import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget captionSection = Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'This is',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[500]),
          ),
          Text(' Phonograph',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );

    Row buildItemRow(
        String imgName, String title, String subtitle, bool selected) {
      IconData icon =
          selected ? Icons.radio_button_checked : Icons.radio_button_unchecked;

      return Row(children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/$imgName'),
          radius: 25.0,
        ),
        Expanded(
            child: Container(
                padding: EdgeInsets.only(bottom: 18.0),
                decoration: const BoxDecoration(
                  border: const Border(bottom: BorderSide()),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [Text(title), Text(subtitle)],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    Icon(
                      icon,
                      color: Colors.teal,
                    )
                  ],
                ))),
      ]);
    }

    Widget selectSection = Container(
      padding: EdgeInsets.fromLTRB(24.0, 9.0, 0.0, 18.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 28.0),
            child: Text('Select an accessory to add to Vacation Home',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
          ),
          buildItemRow('avt_kitchen.jpg', 'Kitchen room', "Online", true),
        ],
      ),
    );

    return MaterialApp(
        title: 'Mock Static UI',
        home: Scaffold(
            appBar: AppBar(
              title: Text('App product', style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            body: ListView(children: [
              Image.asset(
                'images/phonograph.jpg',
                height: 180.0,
                fit: BoxFit.cover,
              ),
              captionSection,
              selectSection
            ])));
  }
}
