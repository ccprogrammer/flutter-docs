import 'package:flutter/material.dart';

Widget ButtonTextCommon() {
  return Container(
    height: 48,
    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.red,
        // side: BorderSide(
        //   color: Colors.red,
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        'Custom Button',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
