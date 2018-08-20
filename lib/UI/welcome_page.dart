import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_page.dart';
import 'package:login/Utils/dbhelper.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'WelcomePage';

  final dbHelper = new DBHelper();

  static final TextEditingController createUser = new TextEditingController();
  static final TextEditingController createPass = new TextEditingController();
  static final TextEditingController confirmPass = new TextEditingController();

  String get userName => createUser.text;
  String get userPass => createPass.text;
  String get userConfrimPass => confirmPass.text;

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      'assets/logo.png',
      width: 300.0,
      fit: BoxFit.cover,
    );

    final userField = TextField(
      controller: createUser,
      keyboardType: TextInputType.emailAddress,
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
      controller: createPass,
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

    final confirmPassword = TextField(
      controller: confirmPass,
      autofocus: false,
      style: new TextStyle(color: Colors.black),
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Confirm Password',
        hintStyle: new TextStyle(color: Colors.grey[400]),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
    );

    final createAccountBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.black,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () async {
            if (userName != "" && userPass != "" && userConfrimPass != "") {
              if (userPass == userConfrimPass) {
                //Add user to database
                dbHelper.addUserToDB(userName, userPass);
                //Dismiss Keyboard
                FocusScope.of(context).requestFocus(new FocusNode());
                //Go to login page
                Navigator.of(context).pushReplacementNamed(LoginPage.tag);
              } else {
                print("Passwords do no match");
              }
            } else {
              print("Make sure all fields hold data");
            }
          },
          color: Color(0xFF88E888),
          child: new Text("Create Account",
              style: TextStyle(color: Colors.grey[900])),
        ),
      ),
    );

    final alreadyHaveAccountBtn = FlatButton(
      child: Text(
        'Already have an account? Login',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(LoginPage.tag);
      },
    );

    final pageOneContent = new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/forrest.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
            ),
            new Container(
              padding: EdgeInsets.all(40.0),
              child: new Image.asset('assets/logowithouteva.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            ),
            new Container(
              alignment: AlignmentDirectional.center,
              width: 450.0,
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
            new Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: alreadyHaveAccountBtn,
            )
          ],
        ),
      ),
    );

    final pageTwoContent = new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/weirdplant.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
            ),
            new Container(
              padding: EdgeInsets.all(40.0),
              child: new Image.asset('assets/logowithouteva.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            ),
            new Container(
              width: 450.0,
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
            new Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: alreadyHaveAccountBtn,
            )
          ],
        ),
      ),
    );

    final pageThreeContent = new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/smallfern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
            ),
            new Container(
              padding: EdgeInsets.all(40.0),
              child: new Image.asset('assets/logowithouteva.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            ),
            new Container(
              width: 450.0,
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
            new Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: alreadyHaveAccountBtn,
            )
          ],
        ),
      ),
    );

    return Scaffold(
      body: PageView(
        controller: PageController(viewportFraction: 1.0),
        children: <Widget>[
          pageOneContent,
          pageTwoContent,
          pageThreeContent,
          new Container(
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
                    child: userField,
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: password,
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: confirmPassword,
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: createAccountBtn,
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: alreadyHaveAccountBtn,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
