import 'UI/login_page.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/explore_page.dart';
import 'UI/recycle_item_list.dart';
import 'UI/recycling_labels_page.dart';
import 'UI/welcome_page.dart';
import 'UI/notifications_page.dart';
import 'UI/add_item_page.dart';
import 'UI/select_item_page.dart';
import 'UI/group_page.dart';
import 'UI/group_settings.dart';

import 'package:camera/camera.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());

  var databasesPath = await getDatabasesPath();
  var path = join(databasesPath, "demo_asset_example.db");

  // Delete the database
  await deleteDatabase(path);

  Database db;
  try {
    db = await openDatabase(path, readOnly: false);
    print("Login Opening database");
  } catch (e) {
    print("Error $e");
  }

  await db.execute(
      "CREATE TABLE Users (userid INTEGER PRIMARY KEY, username TEXT, password TEXT, points INTEGER)");

  await db.transaction((txn) async {
    int id1 = await txn.rawInsert(
        'INSERT INTO Users(username, password, points) VALUES("Test", "password", 0)');
    print("inserted1: $id1");
  });

  await db.close();
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ExplorePage.tag: (context) => ExplorePage(),
    RecyleItemsPage.tag: (context) => RecyleItemsPage(),
    RecyclingLabelsPage.tag: (context) => RecyclingLabelsPage(),
    WelcomePage.tag: (context) => WelcomePage(),
    NotificationsPage.tag: (context) => NotificationsPage(),
    CameraApp.tag: (context) => CameraApp(),
    SelectItemPage.tag: (context) => SelectItemPage(),
    GroupPage.tag: (context) => GroupPage(),
    GroupSettingsPage.tag: (context) => GroupSettingsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evergreen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.greenAccent,
        backgroundColor: Colors.green,
        splashColor: Colors.green,
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: WelcomePage(),
      routes: routes,
    );
  }
}
