import 'package:flutter/material.dart';

List<Map<String, dynamic>> list = [
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNr1Y0jMUcWtA5titpanLZ7rYwG6MKzLbnyA&usqp=CAU',
    'name': 'Viola Celestine',
    'email': 'violacelestine@mail.com',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM0moVjB_-ojPy0INQw7d5kmGn3lRXhGyEKg&usqp=CAU',
    'name': 'Jeanice Ang',
    'email': 'jeaniceang@mail.com',
  },
];
Widget IndexOfListItem() {
  return Column(
    children: list.map(
      (element) {
        var index = list.indexOf(element);
        return Container();
      },
    ).toList(),
  );
}
