import 'package:flutter/material.dart';

Widget TextButtonNoPadding() {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
    ),
    child: Text(
      'Press Me !',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
  );
}
