import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login/UI/add_item_page.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'explore_page.dart';
import 'package:login/Utils/globals.dart' as globals;
import 'package:login/Utils/items.dart';

class HomePage extends StatelessWidget {
  static String tag = 'HomePage';

  final recyclableItemsList = new Items().recyclableItems;

  @override
  Widget build(BuildContext context) {
    final addItem = MaterialButton(
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.black,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 300.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(CameraApp.tag);
          },
          color: Colors.green,
          child: Text('Add Item',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
      onPressed: () {},
    );

    final nextCollection = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "4",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Days",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Until next collection",
            textScaleFactor: 1.4,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final playerPoints = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                globals.getUserPoints(),
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Points",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Points gathered from recycling this week",
            textScaleFactor: 1.4,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final itemRecycled = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                globals.getUserItems(),
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Items",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Products recycled this week",
            textScaleFactor: 1.4,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final positionInGroup = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "1",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Out of 1",
                textScaleFactor: 1.4,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            globals.groupLabel(),
            textScaleFactor: 1.4,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final body = Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage('assets/fern.png'), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[nextCollection],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[playerPoints],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[itemRecycled],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[positionInGroup],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[addItem],
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: const Text("Evergreen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.explore),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(ExplorePage.tag);
            },
          )
        ],
      ),
      body: body,
    );
  }
}
