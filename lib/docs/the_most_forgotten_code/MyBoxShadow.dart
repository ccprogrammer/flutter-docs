import 'package:flutter/material.dart';

Widget MyBoxShadow() {
  return Container(
    decoration: BoxDecoration(
      // ======================================================
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 0), // changes position of shadow
        )
      ],
      // ======================================================
    ),
  );
}
