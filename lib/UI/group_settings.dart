import 'package:flutter/material.dart';
import 'package:login/UI/explore_page.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/Utils/globals.dart' as globals;

class GroupSettingsPage extends StatelessWidget {
  static String tag = 'GroupSettingsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF575757),
      appBar: new AppBar(
        title: const Text("Evergreen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomePage.tag);
            },
          ),
          IconButton(
            icon: Icon(Icons.explore),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(ExplorePage.tag);
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              //TODO
            },
          ),
        ],
      ),
      body: Container(
        alignment: AlignmentDirectional.topCenter,
        child: new Column(
          children: <Widget>[
            new Container(
              color: Colors.grey[600],
              height: 200.0,
              alignment: AlignmentDirectional.center,
              child: Icon(
                Icons.add_a_photo,
                color: Colors.white,
                size: 60.0,
              ),
            ),
            new Container(
              padding: EdgeInsets.all(15.0),
              alignment: AlignmentDirectional.center,
              color: Color(0xFF3A3A3A),
              width: 500.0,
              child: new Column(
                children: <Widget>[
                  new Text(
                    "The",
                    style: new TextStyle(fontSize: 15.0, color: Colors.green),
                  ),
                  new Text(
                    globals.getGroupName(),
                    style: new TextStyle(fontSize: 30.0, color: Colors.green),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                60.0,
                150.0,
                60.0,
                0.0,
              ),
              child: new Container(
                height: 3.0,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(
                20.0,
                40.0,
                0.0,
                0.0,
              ),
              alignment: AlignmentDirectional.centerStart,
              child: new Text(
                "Members",
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
