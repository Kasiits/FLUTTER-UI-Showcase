import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './Pages/Home.dart';
import './Pages/Inbox.dart';
import './Pages/Profile.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    InboxPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            _pageOptions[_selectedTab],
            Container(
                child: Align(
              alignment: Alignment(0.0, 1.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    backgroundColor: Color(0xff222831),
                    elevation: 0,
                    currentIndex: _selectedTab,
                    fixedColor: Colors.white,
                    unselectedItemColor: Colors.grey,
                    onTap: (int index) {
                      setState(() {
                        _selectedTab = index;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        backgroundColor: Colors.red,
                        title: Text(
                          'Home',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.sms),
                        title: Text(
                          'Inbox',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline),
                        title: Text(
                          'Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
