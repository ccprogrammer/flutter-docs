import 'package:flutter/material.dart';

Widget TextFieldCommon() {
  return Container(
    margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
    padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xffF7F7F7),
    ),
    child: Center(
      child: Focus(
        onFocusChange: (focus) {},
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search ',
            hintStyle: TextStyle(
              color: Color(0xffB2B2B2),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
