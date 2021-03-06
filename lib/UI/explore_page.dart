import 'package:flutter/material.dart';

import 'package:login/UI/group_page.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/recycle_item_list.dart';
import 'package:login/UI/recycling_labels_page.dart';
import 'package:login/UI/notifications_page.dart';
import 'package:login/UI/group_settings.dart';
import 'package:login/Utils/globals.dart' as globals;

class ExplorePage extends StatelessWidget {
  static String tag = 'ExplorePage';

  @override
  Widget build(BuildContext context) {
    final title = 'Items that you can recycle';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: new AppBar(
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
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(RecyleItemsPage.tag);
              },
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
              title: Text(
                "Recyclable Item List",
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "A list of the items you can and cant recycle in your area. "),
            ),
            ListTile(
              onTap: () {
                Navigator
                    .of(context)
                    .pushReplacementNamed(RecyclingLabelsPage.tag);
              },
              contentPadding: EdgeInsets.only(left: 20.0),
              title: Text(
                'Recycling Labels',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "Definition of every recycling label printed on goods sold in the United Kingdom"),
            ),
            ListTile(
              onTap: () {
                Navigator
                    .of(context)
                    .pushReplacementNamed(NotificationsPage.tag);
              },
              contentPadding: EdgeInsets.only(left: 20.0),
              title: Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "Get notified to changes to waste collection in your area"),
            ),
            ListTile(
              onTap: () {
                if (globals.userCreatedGroup == false) {
                  Navigator.of(context).pushReplacementNamed(GroupPage.tag);
                } else {
                  Navigator
                      .of(context)
                      .pushReplacementNamed(GroupSettingsPage.tag);
                }
              },
              contentPadding: EdgeInsets.only(left: 20.0),
              title: Text(
                'Recycling Group',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "Invite Members, form a group and view group recycling statistics"),
            ),
          ],
        ),
      ),
    );
  }
}
