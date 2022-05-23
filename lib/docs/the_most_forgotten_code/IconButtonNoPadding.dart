import 'package:flutter/material.dart';

Widget IconButtonNoPadding() {
  return IconButton(
    padding: EdgeInsets.zero,
    constraints: BoxConstraints(),
    onPressed: () {},
    icon: Icon(
      Icons.close,
      color: Colors.black87,
    ),
  );
}
