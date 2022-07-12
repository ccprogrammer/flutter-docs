import 'package:flutter/material.dart';

class Gradient {
  var gradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xff1DB3C4),
        Color(0xff260D51),
      ],
    ),
  );
}
