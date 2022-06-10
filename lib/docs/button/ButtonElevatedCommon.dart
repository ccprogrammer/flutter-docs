import 'package:flutter/material.dart';

Widget ButtonElevatedCommon({
  String text = 'Custom Elevated Button',
  required Function onPressed,
}) {
  return Container(
    height: 48,
    child: ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20),
          side: BorderSide(
            color: Colors.blue,
            width: 4,
          ),
          primary: Colors.white,
          shape: StadiumBorder(), // CircleBorder() is Circle
          elevation: 0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    ),
  );
}
