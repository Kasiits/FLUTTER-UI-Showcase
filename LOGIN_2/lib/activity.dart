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
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage('https://i.imgur.com/XNx0mye.gif'),
              // Photo from https://giphy.com/
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
            child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.white.withOpacity(0.10),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 40, bottom: 6),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "E-mail",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14)),
                    ),
                  )),
              Container(
                  color: Colors.white.withOpacity(0.10),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Colors.grey[200],
                    ),
                  )),
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.white.withOpacity(0.10),
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 6, bottom: 40),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 14)),
                    ),
                  )),
            ],
          ),
        ))
      ],
    ));
  }
}
