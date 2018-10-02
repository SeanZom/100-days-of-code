// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart

  final String name;
  final IconData icon;
  final Color color;

  const Category(this.name, this.color, this.icon);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container(
        height: 100.0,
        padding: new EdgeInsets.all(8.0),
        child: new InkWell(
          child: new Row(
            children: <Widget>[
              new Padding(
                  padding: new EdgeInsets.all(16.0),
                  child: new Icon(
                    icon,
                    size: 60.0,
                  )),
              new Center(
                child: new Text(
                  name,
                  style: new TextStyle(fontSize: 24.0),
                ),
              )
            ],
          ),
          onTap: () {
            print('I was tapped!');
          },
          splashColor: color,
          highlightColor: color,
          borderRadius: new BorderRadius.circular(50.0),
        ));
  }
}
