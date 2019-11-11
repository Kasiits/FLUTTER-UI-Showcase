import 'package:flutter/material.dart';

class Houses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        house_widget(
            'assets/house1.jpg',
            'Selling',
            'Barcelona, Spain',
            '\$1,145,126',
            '4 Beds',
            'assets/bed.png',
            'Pool',
            'assets/pool.png',
            'Wi-Fi',
            'assets/wifi.jpg'),
        // House Photo from https://unsplash.com/photos/XtnNrQYC7ts
        house_widget(
            'assets/house2.jpg',
            'Renting',
            'Oslo, Norway',
            '\$500',
            '5 Beds',
            'assets/bed.png',
            'TV',
            'assets/tv.png',
            'Animals allowed',
            'assets/animal.png'),
        // House Photo from https://unsplash.com/photos/wS6ON9V6N1A
        house_widget(
            'assets/house3.jpg',
            'Renting',
            'Eidsvoll, Norway',
            '\$640',
            '4 Beds',
            'assets/bed.png',
            '2 Kitchens',
            'assets/kc.png',
            'Wi-Fi',
            'assets/wifi.jpg'),
        // House Photo from https://unsplash.com/photos/R1uiDu8vBh0
        house_widget(
            'assets/house4.jpg',
            'Selling',
            'San Francisco, California',
            '\$12,800,000',
            '4 Beds',
            'assets/bed.png',
            'Wi-Fi',
            'assets/wifi.jpg',
            'Garage',
            'assets/garage.png'),
        // House Photo from https://unsplash.com/photos/I1qSD6UVAi8
      ],
    );
  }

  Widget house_widget(
    String imageurl,
    String type,
    String place,
    String price,
    String no1,
    String no1Url,
    String no2,
    String no2Url,
    String no3,
    String no3Url,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        height: 320,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                      child: Image.asset(
                        imageurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    right: 6.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              type,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    left: 6.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          place,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff1089ff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 12),
                child: Container(
                  width: 300,
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 12, right: 12),
                child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              no1,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              no1Url,
                              fit: BoxFit.contain,
                              height: 30.0,
                              width: 30.0,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              no2,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              no2Url,
                              fit: BoxFit.contain,
                              height: 30.0,
                              width: 30.0,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              no3,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              no3Url,
                              fit: BoxFit.contain,
                              height: 30.0,
                              width: 30.0,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
