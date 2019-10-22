import 'package:flutter/material.dart';
import 'widgets/ExploreMore.dart';
import 'widgets/Hotels.dart';

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
        body:ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 25, right: 14, top: 30, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Morning',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        TextSpan(
                            text: ' Angela!',
                            style: TextStyle(
                                fontFamily: 'ConcertOne-Regular',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Browse new recommended hotels.'),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 30,
                child: ClipOval(
                    child: Image.asset(
                  'assets/girl.jpg',
                  // Photo from https://unsplash.com/photos/QXevDflbl8A
                  fit: BoxFit.cover,
                  width: 55.0,
                  height: 55.0,
                )),
              ),
            ],
          ),
        ),
        HotelList(),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 25, bottom: 40),
          child: Text(
            'New places to visit',
            style: TextStyle(
                fontFamily: 'ConcertOne-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        RecommendedPlace(),
      ],
    ));
  }
}
