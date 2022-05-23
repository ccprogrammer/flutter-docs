import 'package:flutter/material.dart';

Widget CardWithShadow() {
  return Container(
    height: 139,
    margin: EdgeInsets.fromLTRB(24, 8, 24, 0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 0), // changes position of shadow
        )
      ],
    ),
  );
}
