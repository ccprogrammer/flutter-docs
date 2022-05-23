import 'package:flutter/material.dart';

Widget CardWithStretchHeaderImage() {
  return Container(
    margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // add this
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.network('https://placeimg.com/640/480/any',
              // width: 300,
              height: 150,
              fit: BoxFit.fill),
        ),
        ListTile(
          title: Text('Pub 1'),
          subtitle: Text('Location 1'),
        ),
      ],
    ),
  );
}
