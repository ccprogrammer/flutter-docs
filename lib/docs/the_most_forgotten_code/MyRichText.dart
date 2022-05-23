import 'package:flutter/material.dart';

Widget MyRichText() {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '5.0',
          style: TextStyle(
            color: Colors.red,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: '/5',
          style: TextStyle(
            color: Colors.red,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
