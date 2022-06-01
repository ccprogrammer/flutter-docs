import 'package:flutter/material.dart';

ButtonCircleIcon() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.all(6),
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.0,
              spreadRadius: 2.0,
              offset: Offset(
                1.0,
                1.0,
              ),
            )
          ]),
      child: Icon(Icons.favorite, color: Colors.grey),
    ),
  );
}
