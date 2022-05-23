import 'package:flutter/material.dart';

Widget ExpandingTextField() {
  return Container(
    child: TextField(
      expands: false,
      maxLines: null,
    ),
  );
}
