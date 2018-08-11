import 'package:flutter/material.dart';
import 'package:login/UI/home_page.dart';
import 'package:login/UI/explore_page.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'WelcomePage';

  final pageOneContent = new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('assets/fern.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          ),
          new Container(
            padding: EdgeInsets.all(40.0),
            child: new Image.asset('assets/logowithouteva.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          ),
          new Container(
            width: 400.0,
            height: 330.0,
            color: Color(0xFF575757),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/image13.png',
                  scale: 3.5,
                ),
                new Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 10.0),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                  child: new Text(
                    "This app will help you keep track of what you recycle and how you recycle",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF88E888)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );

  final pageTwoContent = new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('assets/fern.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          ),
          new Container(
            padding: EdgeInsets.all(40.0),
            child: new Image.asset('assets/logowithouteva.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          ),
          new Container(
            width: 400.0,
            height: 330.0,
            color: Color(0xFF575757),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/image11.png',
                  scale: 3.5,
                ),
                new Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 10.0),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                  child: new Text(
                    "It will also tell you what you can and cant recycle in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF88E888)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );

  final pageThreeContent = new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('assets/fern.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          ),
          new Container(
            padding: EdgeInsets.all(40.0),
            child: new Image.asset('assets/logowithouteva.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          ),
          new Container(
            width: 400.0,
            height: 330.0,
            color: Color(0xFF575757),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/image12.png',
                  scale: 3.5,
                ),
                new Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 10.0),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                  child: new Text(
                    "Compete with friends and family for bragging rights and become the king or queen of recycling",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF88E888)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );

  final createAccount = new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('assets/fern.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          ),
          new Container(
            padding: EdgeInsets.all(40.0),
            child: new Image.asset('assets/logowithouteva.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          ),
          new Container(
            width: 400.0,
            height: 330.0,
            color: Color(0xFF575757),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/image12.png',
                  scale: 3.5,
                ),
                new Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 10.0),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                  child: new Text(
                    "Compete with friends and family for bragging rights and become the king or queen of recycling",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF88E888)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[pageOneContent, pageTwoContent, pageThreeContent],
      ),
    );
  }
}
