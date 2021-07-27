import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:missioned_forum/styles/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 4 / 3,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: carouselImages.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          GestureDetector(
        onTap: () => launch(imageLinks[itemIndex]),
        child: Image.asset(carouselImages[itemIndex]),
      ),
    );
  }
}
