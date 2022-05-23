import 'package:flutter/material.dart';

PreferredSizeWidget AppBarNormal() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black87),
    backgroundColor: Colors.white,
    elevation: 1,
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        // Navigator.pop(context);
      },
      icon: Icon(
        Icons.chevron_left,
        size: 32,
      ),
    ),
    title: Text(
      'AppBar Title',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(Icons.search)),
      SizedBox(width: 24),
      IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(Icons.bookmarks_outlined)),
      SizedBox(width: 24),
    ],
  );
}
