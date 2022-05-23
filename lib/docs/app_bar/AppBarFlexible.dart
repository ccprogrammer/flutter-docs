import 'package:flutter/material.dart';

PreferredSizeWidget AppBarFlexible() {
  return AppBar(
    backgroundColor: Colors.grey,
    automaticallyImplyLeading: false,
    elevation: 0,
    flexibleSpace: SafeArea(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            Image.asset(
              'assets/images/image_profile.png',
              width: 64,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Lubi ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '@lubiancaaa',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/button_exit.png',
                width: 20,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
