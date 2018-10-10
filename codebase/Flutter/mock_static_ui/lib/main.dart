import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

void main() {
//  debugPaintSizeEnabled = true;
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

    Widget buildItemRow(
        String imgName, String title, String subtitle, bool selected) {
      IconData icon =
          selected ? Icons.radio_button_checked : Icons.radio_button_unchecked;

      return Container(
        margin: EdgeInsets.only(top: 12.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/$imgName'),
                radius: 23.0,
              ),
            ],
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 18.0),
                  margin: EdgeInsets.only(left: 18.0),
                  decoration: const BoxDecoration(
                    border: const Border(
                        bottom: BorderSide(width: 0.5, color: Colors.grey)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              subtitle,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Icon(
                        icon,
                        color: Colors.teal,
                      )
                    ],
                  ))),
        ]),
      );
    }

    Widget selectSection = Container(
      padding: EdgeInsets.fromLTRB(18.0, 9.0, 0.0, 18.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Text('Select an accessory to add to Vacation Home',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
          ),
          buildItemRow('avt_kitchen.jpg', 'Kitchen room', "Online", true),
          buildItemRow('avt_livingroom.jpg', 'Living room', "Online", false),
          buildItemRow('avt_bedroom.jpg', 'Bedroom room', "Offline", false),
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
              selectSection,
              Container(
                margin: EdgeInsets.fromLTRB(130.0, 0.0, 130.0, 0.0),
                child: RaisedButton(
                  child: Text('SAVE'),
                  onPressed: () {
                    print('button pressed');
                  },
                  color: Colors.indigo[900],
                  textColor: Colors.white,
                ),
              ),
            ])));
  }
}
