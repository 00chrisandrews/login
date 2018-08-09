import 'package:flutter/material.dart';

class RecyleItemsPage extends StatelessWidget {
  static String tag = 'RecyleItemsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        bottom: TabBar(
          tabs: <Widget>[],
        ),
        backgroundColor: Colors.green,
        title: const Text("Evergreen", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
          ),
          IconButton(
            icon: Icon(Icons.explore),
          )
        ],
      ),
    );
  }
}
