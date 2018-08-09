import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:login/home_page.dart';
import 'package:login/explore_page.dart';

//import 'package:login/new_page.dart';
//import 'home_page.dart';
//import 'list_page.dart';
//import 'cannot_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ExplorePage.tag: (context) => ExplorePage(),
    // HomePage.tag: (context) => HomePage(),
    // NewPage.tag: (context) => NewPage(),
    // ListPage.tag: (context) => ListPage(),
    //CannotListPage.tag: (context) => CannotListPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evergreen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
