import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './activities.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePagePageState createState() => new _MyHomePagePageState();
}

class _MyHomePagePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/bg.png'),
              // Photo from https://tripulvila.com/
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.9, 0.9),
          child: ButtonTheme(
            minWidth: 100.0,
            height: 45.0,
            child: RaisedButton(
                elevation: 10,
                color: Color(0xffeb3c38),
                onPressed: () {
                  Navigator.of(context).push(new activities());
                },
                child: const Text('Start Now',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        )
      ],
    ));
  }
}
