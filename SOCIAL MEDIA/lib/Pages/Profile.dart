import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  Color _iconColor = Colors.white;
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      child: ButtonTheme(
                        minWidth: 20.0,
                        height: 40.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          splashColor: Colors.grey[200],
                          child: Icon(
                            Icons.add_a_photo,
                            size: 20,
                          ),
                          shape: new CircleBorder(),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 46.0,
                          backgroundImage: AssetImage("assets/profilepic.jpg"),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Miya Briana',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Anchorage, Alaska',
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      child: ButtonTheme(
                        minWidth: 20.0,
                        height: 40.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          splashColor: Colors.grey[200],
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          shape: new CircleBorder(),
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                bottom: 30.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '173',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Likes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '1.2k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '29k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Views',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('assets/profilehouse1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('assets/profilehouse2.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('assets/profilehouse3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('assets/profilehouse4.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('assets/profilehouse5.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(height: 140),
          ],
        ));
  }
}
