import 'package:flutter/material.dart';

Widget ExpandingTextField() {
  return Container(
    child: TextField(
      expands: true, // true or false coba coba aja
      maxLines: null,
    ),
  );
}
