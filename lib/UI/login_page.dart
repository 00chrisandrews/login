import 'package:collection/collection.dart';
import 'package:login/UI/home_page.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LoginPage extends StatelessWidget {
  static String tag = 'login-page';

  static final TextEditingController user = new TextEditingController();
  static final TextEditingController pass = new TextEditingController();

  String get userName => user.text;
  String get userPass => pass.text;

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      'assets/logo.png',
      width: 300.0,
      fit: BoxFit.cover,
    );

    final email = TextField(
      controller: user,
      keyboardType: TextInputType.text,
      autofocus: false,
      style: new TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter Username',
        hintStyle: new TextStyle(color: Colors.grey[400]),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
    );

    final password = TextField(
      controller: pass,
      autofocus: false,
      style: new TextStyle(color: Colors.black),
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter Password',
        hintStyle: new TextStyle(color: Colors.grey[400]),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.black,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () async {
            var databasesPath = await getDatabasesPath();
            var path = join(databasesPath, "demo_asset_example.db");

            // try opening (will work if it exists)
            Database db;
            try {
              db = await openDatabase(path, readOnly: false);
              print("Login Opening database");
            } catch (e) {
              print("Error $e");
            }

            //  await db.execute(
            //      "CREATE TABLE Users (userid INTEGER PRIMARY KEY, username TEXT, password TEXT)");

            // db = await openDatabase(path, readOnly: false);

            // await db.transaction((txn) async {
            //   int id1 = await txn.rawInsert(
            //       'INSERT INTO Users(username, password) VALUES("$userName", "$userPass")');
            //   print("inserted1: $id1");
            // });

            // List<Map> list = await db.rawQuery('SELECT * FROM Users');
            // print(list);
            List<Map> list2 = await db.rawQuery(
                'SELECT * FROM Users WHERE username = "Test" AND password = "password"');
            print(list2);

            var list3 = await db.rawQuery(
                'SELECT points FROM Users WHERE username = "Test" AND password = "password"');
            print(list3[0]["points"]);

            print(list3);

            if (list2.length == 1) {
              Navigator.of(context).pushReplacementNamed(HomePage.tag);
            }
            print(list2.length);

            //if (db == null)
            // Should happen only the first time you launch your application
            //print("Creating new copy from asset");

            // // Copy from asset
            // ByteData data =
            //     await rootBundle.load(join("assets", "example.db"));
            // List<int> bytes = data.buffer
            //     .asUint8List(data.offsetInBytes, data.lengthInBytes);
            // await new File(path).writeAsBytes(bytes);

            // open the database

            // } else {
            //   print("Opening existing database");
            // }
            // //Insert some records in a transaction;
            // await db.transaction((txn) async {
            //   int id1 = await txn.rawInsert(
            //       'INSERT INTO Users(username, password) VALUES("$userName", "$userPass")');
            //   print("inserted1: $id1");
            // });

            // Close the database
            await db.close();
          },
          color: Color(0xFF88E888),
          child: Text('Login', style: TextStyle(color: Colors.grey[900])),
        ),
      ),
    );

    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/fern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: logo,
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                child: email,
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                child: password,
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: loginButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
