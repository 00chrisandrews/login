import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Evergreen"),
        ),
        body: new Stack(
          children: <Widget>[
            new PageView(
              children: [],
            ),
            new ListView(
              children: <Widget>[new Text('Text on top')],
            )
          ],
        ));
  }
}
