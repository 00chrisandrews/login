import 'package:flutter/material.dart';
import 'package:login/UI/explore_page.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/Utils/items.dart';
import 'package:login/Utils/user.dart';

class SelectItemPage extends StatelessWidget {
  static String tag = 'SelectItemPage';

  final recyclableItems = new Items().recyclableItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text("Select Item"),
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
      body: ListView.builder(
        itemCount: recyclableItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              User().addPointsToUser();
              print(User().points);
            },
            title: Text('${recyclableItems[index]}'),
          );
        },
      ),
    );
  }
}
