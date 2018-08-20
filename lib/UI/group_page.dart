import 'package:login/UI/explore_page.dart';
import 'package:login/UI/group_settings.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/Utils/contacts.dart';
import 'package:login/Utils/globals.dart' as globals;

import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  static String tag = 'GroupPage';

  static final TextEditingController groupNameInput =
      new TextEditingController();

  final contList = new Contacts().sortContacts();

  String get groupName => groupNameInput.text;

  @override
  Widget build(BuildContext context) {
    createContact(String inputContactName) {
      return new Container(
        color: Colors.grey,
        child: new Row(
          children: <Widget>[
            new FlutterLogo(),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Text(
              inputContactName,
            )
          ],
        ),
      );
    }

    return new GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
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
            )
          ],
        ),
        body: Container(
          child: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Center(
                child: new Text(
                  "You are not part of a group",
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Container(
                  height: 4.0,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  55.0,
                  20.0,
                  55.0,
                  20.0,
                ),
                child: new TextField(
                  controller: groupNameInput,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  style: new TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Group Name',
                    hintStyle: new TextStyle(color: Colors.grey[400]),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0)),
                  ),
                ),
              ),
              new MaterialButton(
                minWidth: 300.0,
                height: 42.0,
                color: Colors.green,
                splashColor: Colors.white,
                child: Text('Create Group',
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                onPressed: () async {
                  if (groupName != null) {
                    globals.setGroupName(groupName);
                    globals.setUserCreatedGroup(true);
                    Navigator
                        .of(context)
                        .pushReplacementNamed(GroupSettingsPage.tag);
                  } else {
                    print("Must enter a group name in order to create a group");
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Row(
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: new Text(
                      "Invite friend and family from contacts",
                      style: new TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Expanded(
                child: new Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: contList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          '${contList[index]}',
                          style: new TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
