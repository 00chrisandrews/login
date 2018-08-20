import 'package:flutter/material.dart';

//import 'package:material_search/material_search.dart';

import 'explore_page.dart';
import 'home_page.dart';
import 'package:login/Utils/items.dart';

class RecyleItemsPage extends StatelessWidget {
  static String tag = 'RecyleItemsPage';

  final recItems = new Items().sortRecItems();
  final houseWaste = new Items().sortHouseItems();
  final nonRecItems = new Items().sortNonRecItems();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(           
            bottom: TabBar(
              unselectedLabelColor: Colors.white70,
              labelColor: Colors.white,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              tabs: <Widget>[
                Tab(
                  text: "Recyclable Items",
                ),
                Tab(
                  text: "Non-Recyclable Items",
                ),
                Tab(
                  text: "Accepted at Household Waste Recyling Centres",
                )
              ],
            ),
            backgroundColor: Colors.green,
            title: Text("Evergreen", style: TextStyle(color: Colors.white)),
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
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                itemCount: recItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${recItems[index]}'),
                  );
                },
              ),
              ListView.builder(
                itemCount: nonRecItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${nonRecItems[index]}'),
                  );
                },
              ),
              ListView.builder(
                itemCount: houseWaste.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${houseWaste[index]}'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
