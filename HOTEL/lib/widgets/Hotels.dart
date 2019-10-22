import 'package:flutter/material.dart';
import 'package:hotel_ui/HOTELS/Akureyri.dart';
import 'package:hotel_ui/HOTELS/BerghausKlondike.dart';
import 'package:hotel_ui/HOTELS/Hol.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Akureyri()),
              );
            },
            child: hotels('assets/1.jpg', '\$60/night', 'Akureyri',
                'Akureyri, Iceland', 5, '(210)'),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hol()),
              );
            },
            child: hotels('assets/6.jpg', '\$120/night', 'Hol', 'Geilo, Norway',
                3, '(90)'),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BK()),
                );
              },
              child: hotels('assets/10.jpg', '\$90/night', 'Berghaus Klondike',
                  'Engelberg, Switzerland', 4, '(360)')
              // Photo from https://unsplash.com/photos/561igiTyvSk
              ),
        ],
      ),
    );
  }

  Widget hotels(
    String imageurl,
    String price,
    String name,
    String place,
    int rating,
    String lol,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset(
                imageurl,
                height: 330,
                width: 230,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                left: 140,
                child: Container(
                    height: 25.0,
                    width: 80.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(0xff0F0F0F),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0F0F0F).withOpacity(0.3),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        price,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            name,
            style: TextStyle(fontFamily: 'ConcertOne-Regular'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(place),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Row(
            children: <Widget>[
              stars(rating, 1),
              stars(rating, 2),
              stars(rating, 3),
              stars(rating, 4),
              stars(rating, 5),
              Text(lol),
            ],
          ),
        )
      ],
    );
  }

  stars(int rating, int index) {
    if (index <= rating) {
      return Icon(
        Icons.star,
        color: Colors.amber,
        size: 13.0,
      );
    } else {
      return Icon(Icons.star, color: Colors.grey, size: 13.0);
    }
  }
}
