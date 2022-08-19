import 'package:flutter/material.dart';

Widget TextFieldNoBox() {
  return Container(
    margin: EdgeInsets.fromLTRB(24, 26, 24, 0),
    child: TextField(
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white.withOpacity(0.87),
        fontSize: 22,
      ),
      decoration: InputDecoration.collapsed(
        hintText: 'Type here',
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.67),
          fontSize: 16,
        ),
      ),
    ),
  );
}
