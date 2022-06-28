import 'package:flutter/material.dart';

class TakeImageBox extends StatefulWidget {
  const TakeImageBox({Key? key}) : super(key: key);

  @override
  State<TakeImageBox> createState() => _TakeImageBoxState();
}

class _TakeImageBoxState extends State<TakeImageBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Text(
            'Write your review',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
        ),

        // Write review text area
        Container(
          margin: EdgeInsets.fromLTRB(24, 8, 24, 0),
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: 100,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            // controller: ratingReviewController,
            maxLines: null,
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: 'How is your overall experience?',
              hintStyle: TextStyle(
                color: Color(0xffB2B2B2),
              ),
              border: InputBorder.none,
            ),
          ),
        ),

        // Submit Review Button/sheet button
        Container(
          margin: EdgeInsets.fromLTRB(24, 16, 24, 24),
          width: double.infinity,
          height: 48,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.redAccent,
            ),
            child: Text(
              'Submit Review',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
