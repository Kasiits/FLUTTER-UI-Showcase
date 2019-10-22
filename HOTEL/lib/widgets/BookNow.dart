import 'package:flutter/material.dart';

class BookNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      child: Center(
        child: ButtonTheme(
          minWidth: 330.0,
          height: 55.0,
          child: RaisedButton(
              color: Color(0xff0F0F0F),
              onPressed: () {},
              child: const Text('BOOK NOW',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
      ),
    );
  }
}
