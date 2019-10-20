import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class activities extends CupertinoPageRoute {
  activities() : super(builder: (BuildContext context) => new SecondPage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new SecondPage());
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                      image: new AssetImage('assets/vet.png'),
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
                      hintText: 'Search Nearby',
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
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                animalCards('assets/walk.png', 'Walk with them'),
                // Photo from https://www.freepik.com/
                animalCards('assets/feed.png', 'Donate food')
                // Photo from https://www.freepik.com/
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                animalCards('assets/wash.png', 'Help us wash them'),
                // Photo from https://www.freepik.com/
                animalCards('assets/combing.png', 'Clean before adoption')
                // Photo from https://www.freepik.com/
              ],
            ),
          ],
        ));
  }

  Widget animalCards(String url, String about) {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 0.6,
                color: Colors.white,
              )
            ],
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.transparent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              url,
              height: 200.0,
              width: 160.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(about)),
          ],
        ),
      ),
    );
  }
}
