import 'package:flutter/material.dart';
//import 'package:material_search/material_search.dart';

import 'explore_page.dart';
import 'home_page.dart';
import 'package:login/Utils/items.dart';

class RecyleItemsPage extends StatelessWidget {
  static String tag = 'RecyleItemsPage';

  final recyclableItems = new Items().recyclableItems;
  final householdWasteCentres = new Items().householdWasteRecyclingCentres;
  final nonRecyleItems = new Items().nonRecyclableItems;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(
            bottom: TabBar(
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
                itemCount: recyclableItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${recyclableItems.sort((a, b) => a.length.compareTo(b.length))}'),
                  );
                },
              ),
              ListView.builder(
                itemCount: householdWasteCentres.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${householdWasteCentres[index]}'),
                  );
                },
              ),
              ListView.builder(
                itemCount: nonRecyleItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${nonRecyleItems[index]}'),
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
