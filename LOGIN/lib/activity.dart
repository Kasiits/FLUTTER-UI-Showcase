import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePagePageState createState() => new _MyHomePagePageState();
}

class _MyHomePagePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 220,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/person.jpg'),
                      // Photo from https://www.freepik.com/
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 185),
                    child: Center(
                      child: Card(
                        color: Color(0xFFe4f2f0),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 4, right: 4),
                          child: Image.asset(
                            'assets/github.png',
                            height: 50,
                            width: 220,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        elevation: 5,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 100, bottom: 24),
              child: Text(
                'Connect',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Color(0xFF3b5998),
                          offset: Offset(0.0, 2.0),
                        ),
                      ],
                      color: Color(0xFF3b5998),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/facebook_logo.png',
                          height: 34,
                          width: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4, right: 6),
                          child: Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Color(0xFF4683F8),
                          offset: Offset(0.0, 2.0),
                        ),
                      ],
                      color: Color(0xFF4683F8),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/google_logo.png',
                          height: 34,
                          width: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4, right: 6),
                          child: Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ))
              ],
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 17, right: 17, top: 60, bottom: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(6.0),
                                topRight: const Radius.circular(6.0))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "E-mail",
                                hintStyle: TextStyle(
                                    color: Color(0xFF4683F8), fontSize: 14)),
                          ),
                        )),
                    Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            color: Colors.grey[200],
                          ),
                        )),
                    Container(
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(6.0),
                                bottomRight: const Radius.circular(6.0))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color(0xFF4683F8), fontSize: 14)),
                          ),
                        ))
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: ButtonTheme(
                    minWidth: 130.0,
                    height: 40.0,
                    child: RaisedButton(
                        color: Color(0xff394a6d),
                        onPressed: () {},
                        child: const Text('Login',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(6.0))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
          ],
        ));
  }
}
