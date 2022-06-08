import 'package:flutter/material.dart';

PreferredSizeWidget AppBarNormal() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black87),
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      color: Colors.black,
      iconSize: 32,
      icon: Icon(
        Icons.chevron_left,
      ),
    ),
    title: Text(
      'Title',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.favorite_border_rounded),
      ),
    ],
  );
}
