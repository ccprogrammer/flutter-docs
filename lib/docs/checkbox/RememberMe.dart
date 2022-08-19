
import 'package:flutter/material.dart';

Widget RememberMe() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              onChanged: (value) {},
            ),
          ),
          SizedBox(width: 12),
          Text(
            'Remember Me',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
