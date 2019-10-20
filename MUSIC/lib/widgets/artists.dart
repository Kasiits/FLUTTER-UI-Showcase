import 'package:flutter/material.dart';

class artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10, right: 10),
        children: <Widget>[
          newArtists(
            'assets/tobu.jpg',
            'Tobu',
          ),
          newArtists(
            'assets/grande.jpg',
            'Grandayy',
          ),
          newArtists(
            'assets/rat.jpg',
            'TheFatRat',
          ),
          newArtists(
            'assets/dolan.png',
            'Dolan Dark',
          ),
          newArtists(
            'assets/kitty.jpg',
            'FlyingKitty',
          ),
        ],
      ),
    );
  }

  Widget newArtists(
    String imageurl,
    String name,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 50,
              child: ClipOval(
                  child: Image.asset(
                imageurl,
                fit: BoxFit.cover,
                width: 60.0,
                height: 60.0,
              )),
            ),
            Text(name)
          ],
        )
      ],
    );
  }
}
