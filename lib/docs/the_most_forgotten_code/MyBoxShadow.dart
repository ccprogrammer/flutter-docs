import 'package:flutter/material.dart';

class MyBoxShadow {
  var gradient = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 1,
        blurRadius: 10,
        offset: Offset(0, 0), // x, y changes position of shadow
      )
    ],
  );
}
