import 'package:flutter/material.dart';
import 'package:login/home_page.dart';

class ExplorePage extends StatelessWidget {
  static String tag = 'ExplorePage';

  @override
  Widget build(BuildContext context) {
    final title = 'Items that you can recycle';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: const Text("Evergreen", style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                //Navigator.of(context).pushNamed(HomePage.tag);
              },
            ),
            IconButton(
              icon: Icon(Icons.explore),
              onPressed: () {
                Navigator.of(context).pushNamed(ExplorePage.tag);
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Map'),
            ),
            ListTile(
              title: Text('Album'),
            ),
            ListTile(
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
