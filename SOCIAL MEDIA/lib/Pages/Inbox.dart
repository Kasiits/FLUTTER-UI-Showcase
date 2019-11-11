import 'package:flutter/material.dart';
import 'package:social_media/widgets/messages.dart';

class InboxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InboxPageState();
  }
}

class InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(height: 60),
            Messages(),
            SizedBox(height: 100),
          ],
        ));
  }
}
