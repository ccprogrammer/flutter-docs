import 'package:flutter/material.dart';

PreferredSizeWidget AppBarSearch() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    elevation: 0,
    titleSpacing: 0,
    centerTitle: true,
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
    title: Container(
      height: 45,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Focus(
        onFocusChange: (focus) {},
        child: TextField(
          onEditingComplete: () {},
          decoration: InputDecoration(
            hintText: 'Search Movie',
            border: InputBorder.none,
          ),
        ),
      ),
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        onPressed: () {},
        icon: Icon(
          Icons.search,
          size: 24,
        ),
      ),
      SizedBox(width: 18),
    ],
    bottom: PreferredSize(
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          height: 1.0,
        ),
        preferredSize: Size.fromHeight(4.0)),
  );
}
