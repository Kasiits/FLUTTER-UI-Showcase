import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        bookList('assets/harry.jpg', 'Harry Potter and \nthe Deathly Hallows',
            '\$10.49'),
        bookList('assets/testaments.jpg', 'The Testaments', '\$11.65'),
        bookList('assets/faceit.jpg', 'Face It: A Memoir', '\$14.48'),
        bookList('assets/city.jpg', 'City of Girls', '\$10.81'),
        bookList('assets/night.jpg', 'The Night Tiger', '\$13.49'),
        bookList('assets/daisy.jpg', 'Daisy Jones \nand The Six', '\$9.01')
      ],
    );
  }

  Widget bookList(
    String imageurl,
    String name,
    String price,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              imageurl,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.grey[200], width: 2.0),
                borderRadius: BorderRadius.circular(14.0)),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90),
            child: Column(
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(price)
              ],
            ),
          )
        ],
      ),
    );
  }
}
