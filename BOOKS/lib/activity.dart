import 'package:books_ui/widgets/books.dart';
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
                      image: new AssetImage('assets/bookshelf.jpg'),
                      // Photo from https://www.freepik.com/
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 190, left: 20, right: 20),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(18.0),
                      hintText: 'Search For Books',
                      hintStyle: TextStyle(
                          fontFamily: 'ConcertOne-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                      filled: true,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 70),
              child: Text(
                'New Books',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 60),
              child: Books(),
            )
          ],
        ));
  }
}
