import 'package:flutter/material.dart';
import 'explore_page.dart';

//void main() => runApp(ExpansionTileSample());

class HomePage extends StatelessWidget {
  static String tag = 'HomePage';

  @override
  Widget build(BuildContext context) {
    final addItem = MaterialButton(
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.black,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.green,
          child: Text('Add Item',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
      onPressed: () {},
    );

    final nextCollection = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "10",
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Days",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Until next collection",
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final playerPoints = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "1500",
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Points",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Points gathered from recycling this week",
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final itemRecycled = new Container(
      child: Column(
        //mainAxisAlignment: VerticalDirection.up,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "20",
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Items",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Products recycled this week",
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final positionInGroup = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "2",
                style: TextStyle(fontSize: 65.0, color: Colors.white),
              ),
              Text(
                "Out of 4",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "Position in Household",
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );

    final body = Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage('assets/fern.png'), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[nextCollection],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[playerPoints],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[itemRecycled],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[positionInGroup],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[addItem],
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: const Text("Evergreen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
          ),
          IconButton(
            icon: Icon(Icons.explore),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(ExplorePage.tag);
            },
          )
        ],
      ),
      body: body,
    );
  }
}
