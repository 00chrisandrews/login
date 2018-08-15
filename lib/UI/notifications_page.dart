import 'package:flutter/material.dart';
import 'home_page.dart';
import 'explore_page.dart';

class NotificationsPage extends StatefulWidget {
  static String tag = 'NotificationsPage';

  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    final mainAppBar = new AppBar(
      backgroundColor: Colors.green,
      title: const Text("Evergreen", style: TextStyle(color: Colors.white)),
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
        )
      ],
    );

    final recyclingChanges = new Text(
      "Notify me if there are any changes to recycling in my area.",
      style: new TextStyle(color: Colors.white, fontSize: 16.0),
    );

    bool _value = false;

    void _onChanged(bool value) {
      setState(() {
        _value = value;
      });
    }

    final recyclingChangesSwitch = Switch(
      activeColor: Colors.green,
      value: _value,
      onChanged: (bool value) {
        _onChanged(value);
      },
    );

    final dayBeforeCollection = new Text(
      "Notify me the day before bin collection",
      style: new TextStyle(color: Colors.white, fontSize: 16.0),
    );

    final dayBeforeCollectionSwitch = Switch(
      value: false, onChanged: (bool value) {},
    );

    final leaderChange = new Text(
      "Notify me of any leaderboard changes for my recycling group",
      style: new TextStyle(color: Colors.white, fontSize: 16.0),
    );

    final leaderChangeSwitch = Switch(
      value: false, onChanged: (bool value) {},
    );

    return Scaffold(
      appBar: mainAppBar,
      body: Container(
        color: Color(0xFF575757),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 150.0,
                        alignment: AlignmentDirectional.center,
                        child: recyclingChanges,
                      ),
                    )
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      width: 4.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 50.0,
                        alignment: AlignmentDirectional.center,
                        child: recyclingChangesSwitch,
                      ),
                    )
                  ],
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 150.0,
                        alignment: AlignmentDirectional.center,
                        child: dayBeforeCollection,
                      ),
                    )
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      width: 4.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 50.0,
                        alignment: AlignmentDirectional.center,
                        child: dayBeforeCollectionSwitch,
                      ),
                    )
                  ],
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 150.0,
                        alignment: AlignmentDirectional.center,
                        child: leaderChange,
                      ),
                    )
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      width: 4.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                      ),
                      child: new Container(
                        height: 100.0,
                        width: 50.0,
                        alignment: AlignmentDirectional.center,
                        child: leaderChangeSwitch,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
