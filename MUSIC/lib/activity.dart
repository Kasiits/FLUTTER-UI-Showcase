import 'package:flutter/material.dart';
import 'package:music_ui/widgets/artists.dart';
import 'package:music_ui/widgets/genre.dart';
import './widgets/carousel.dart';

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
        body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 24, top: 40),
          child: Text(
            'Explore',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, top: 20),
          child: Text(
            '45,320,527 MONTHLY LISTENERS',
            style: TextStyle(color: Colors.grey.withOpacity(0.6)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 40, right: 10),
          child: carousel(),
        ),
        Padding(
            padding: EdgeInsets.only(left: 24, top: 60, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Genres & Moods',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey.withOpacity(0.6)),
                ),
              ],
            )),
        SizedBox(height: 20),
        genre(),
        Padding(
            padding: EdgeInsets.only(left: 24, top: 60, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('New artists',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey.withOpacity(0.6)),
                ),
              ],
            )),
        SizedBox(height: 20),
        artists(),
      ],
    ));
  }
}
