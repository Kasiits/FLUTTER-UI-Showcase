import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 360.0,
        child: Stack(
          children: <Widget>[
            Carousel(
              images: [
                events('assets/rock.jpg', 'SONG OF THE DAY', 'DANCE MONKEY',
                    'TONES AND I'),
                // Photo from https://unsplash.com/photos/NYrVisodQ2M
                events('assets/guitar.jpg', 'FEATURED ARTIST', 'Be Alright',
                    'Dean Lewis'),
                // Photo from https://unsplash.com/photos/fCEJGBzAkrU
                events('assets/cassette.jpg', 'TOP GAMING TRACK',
                    'Let You Down', 'NF'),
                // Photo from https://unsplash.com/photos/hU9gx8YfVK4
                events('assets/violin.jpg', 'EDITOR\'S PICK', 'Blue Jeans',
                    'Sofia Karlberg'),
                // Photo from https://unsplash.com/photos/xgT3iQDIijU
                events('assets/singer.jpg', 'ALL NEW ALL NOW', 'Changing',
                    'Becky Hill'),
                // Photo from https://unsplash.com/photos/aZ3qiq1eTRk
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              autoplay: false,
              dotColor: Colors.black,
              indicatorBgPadding: 1.0,
              dotBgColor: Colors.transparent,
              dotIncreasedColor: Colors.blue,
              borderRadius: false,
              moveIndicatorFromBottom: 200.0,
              noRadiusForIndicator: true,
            ),
          ],
        ));
  }

  Widget events(
    String imageurl,
    String popular,
    String song,
    String artist,
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
                height: 320,
                width: 320,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 200,
                left: 20,
                child: Container(
                    height: 30.0,
                    width: 144.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(0xff0F0F0F),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0F0F0F).withOpacity(0.3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(top: 8, left: 5),
                      child: Text(
                        popular,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )),
              ),
              Positioned(
                top: 240,
                left: 20,
                child: Text(
                  song,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 280,
                left: 20,
                child: Text(
                  artist,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
