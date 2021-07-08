import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JobCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 230.0,
          enableInfiniteScroll: false,
          reverse: false,
          viewportFraction: 0.86),
      items: [
        Container(margin: EdgeInsets.all(3.0), color: Colors.red),
        Container(margin: EdgeInsets.all(3.0), color: Colors.red),
        Container(margin: EdgeInsets.all(3.0), color: Colors.red),
        Container(margin: EdgeInsets.all(3.0), color: Colors.red),
        Container(margin: EdgeInsets.all(3.0), color: Colors.red),
      ],
    );
  }
}
