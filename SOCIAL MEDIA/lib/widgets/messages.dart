import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Recent Contacts',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              contacts('assets/girl1.jpg', 'Jaslyn Welby'),
              // Photo from https://unsplash.com/photos/XLtWHLWuQPg
              contacts('assets/girl2.jpg', 'Bella Monari'),
              // Photo from https://unsplash.com/photos/0LJ7bqqI5zs
              contacts('assets/guy1.jpg', 'Ben Camiel'),
              // Photo from https://unsplash.com/photos/6VPEOdpFNAs
              contacts('assets/girl3.jpg', 'Angelica Watson'),
              // Photo from https://unsplash.com/photos/W6zFAMgIjBE
              contacts('assets/guy2.jpg', 'Warren Wesley'),
              // Photo from https://unsplash.com/photos/jDZ8alC3Omk
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Text(
            'Messages',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30),
        recent_msg(
            'assets/guy3.jpg', 'Dominik Cortez', 'Thank you :-)', '10 min'),
        // Photo from https://unsplash.com/photos/8TEgvUu6Cso
        recent_msg('assets/girl4.jpg', 'Vanessa Banerjee',
            'Hey Miya i would like to see your house tomorrow', '8 h'),
        // Photo from https://unsplash.com/photos/ZXfUUM_LR0k
        recent_msg('assets/girl5.jpg', 'Ana Costa',
            'Im up for it.Just say when!', '5 days'),
        // Photo from https://unsplash.com/photos/kxEf71uJoNM
        recent_msg('assets/girl6.jpg', 'Tessa Lacy',
            'I left keys on the desk 😃', '4 weeks'),
        // Photo from https://unsplash.com/photos/Q9L-n57IqLw
      ],
    );
  }

  Widget contacts(
    String imageurl,
    String name,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 34.0,
            backgroundImage: AssetImage(imageurl),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget recent_msg(
    String imageurl,
    String name,
    String msg,
    String time,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 32.0,
                backgroundImage: AssetImage(imageurl),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 200,
                    child: Text(
                      msg,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                time,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              SizedBox(height: 38)
            ],
          )
        ],
      ),
    );
  }
}
