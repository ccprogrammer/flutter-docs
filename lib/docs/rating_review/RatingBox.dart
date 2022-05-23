import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  double rating = 0.0;
  String ratingText = 'Choose Rating';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: Color(0xffD9D9D9),
        ),
      ),
      child: Column(
        children: [
          RatingBar.builder(
            initialRating: 0,
            minRating: 0,
            direction: Axis.horizontal,
            glow: false,
            allowHalfRating: false,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, _) => Icon(
              Icons.star_rounded,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) => setState(() {
              this.rating = rating;
              // Pengkondisian text rating
              if (this.rating == 0.0) {
                ratingText = 'Choose Rating';
              } else if (this.rating == 1.0) {
                ratingText = 'Very Bad';
              } else if (this.rating == 2.0) {
                ratingText = 'Bad';
                ;
              } else if (this.rating == 3.0) {
                ratingText = 'Normal';
              } else if (this.rating == 4.0) {
                ratingText = 'Good';
              } else if (this.rating == 5.0) {
                ratingText = 'Excellent!';
              } else {}
            }),
          ),
          SizedBox(height: 12),
          Text(
            '${this.ratingText}',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
