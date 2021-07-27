import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({Key? key}) : super(key: key);

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  @override
  var rating = 0.0;
  String ratingText = '';
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SmoothStarRating(
          rating: rating,
          size: 030,
          starCount: 5,
          onRated: (value) {
            setState(
              () {
                rating = value;
                if (rating == 0.5) {
                  ratingText = 'useless';
                } else if (rating == 1.0) {
                  ratingText = 'useless+';
                } else if (rating == 1.5) {
                  ratingText = 'Poor';
                } else if (rating == 2.0) {
                  ratingText = 'Poor+';
                } else if (rating == 2.5) {
                  ratingText = 'Ok';
                } else if (rating == 3) {
                  ratingText = 'Ok+';
                } else if (rating == 3.5) {
                  ratingText = 'Good';
                } else if (rating == 4.0) {
                  ratingText = 'Good+';
                } else if (rating == 4.5) {
                  ratingText = 'Excellent';
                } else if (rating == 5.0) {
                  ratingText = 'Excellent+';
                }
              },
            );
          },
        ),
        Text(ratingText),
      ],
    );
  }
}
