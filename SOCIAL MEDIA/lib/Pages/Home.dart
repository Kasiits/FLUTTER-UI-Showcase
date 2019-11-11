import 'package:flutter/material.dart';
import 'package:social_media/widgets/houses.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(height: 60),
        Padding(
          padding: EdgeInsets.only(bottom: 40, left: 10, right: 10),
          child: TextFormField(
            decoration: new InputDecoration(
              contentPadding: const EdgeInsets.all(16.0),
              hintText: 'Try "Latvia"',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[600]),
              filled: true,
              focusColor: Colors.white,
              hoverColor: Colors.white,
              fillColor: Colors.grey[200],
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(6.0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Houses(),
        ),
        SizedBox(height: 140),
      ],
    ));
  }
}
