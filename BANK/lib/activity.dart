import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              height: 220,
              child: Center(
                child: Image.asset('assets/bitcoin.png'),
                // Photo from https://undraw.co/
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 24, right: 24),
              child: Column(
                children: <Widget>[
                  Text(
                    'A Radically Better Account',
                    style: TextStyle(
                        fontSize: 26, fontFamily: 'ConcertOne-Regular'),
                  ),
                  SizedBox(height: 30),
                  Text(
                      'Banks will charge you when you spend or transfer money abroad. We\'re not about hidden fees or rubbish exchange rates, and that\'s why 7M+ people already use Bitfly'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 80,
              ),
              child: Center(
                  child: Column(
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Color(0xff024A8E),
                        onPressed: () {},
                        child: const Text('Sign in',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                      onPressed: () {},
                      child: const Text('Create new account',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff024A8E))),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ],
              )),
            ),
          ],
        ));
  }
}
