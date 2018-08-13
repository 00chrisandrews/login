import 'package:flutter/material.dart';
import 'package:login/UI/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      'assets/logo.png',
      width: 300.0,
      fit: BoxFit.cover,
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      style: new TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter Email',
        hintStyle: new TextStyle(color: Colors.grey[400]),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
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
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomePage.tag);
          },
          color: Color(0xFF88E888),
          child: Text('Login', style: TextStyle(color: Colors.grey[900])),
        ),
      ),
    );

    return Scaffold(
      //backgroundColor: Colors.grey[850],
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
