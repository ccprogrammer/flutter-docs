import 'package:flutter/material.dart';

Widget DetailCommon() {
  return Container(
    margin: EdgeInsets.fromLTRB(24, 16, 24, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Places Name
        Container(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Sushi Tei The Breeze',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmarks_outlined,
                    color: Colors.black87,
                  ),
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Icon(
                  Icons.near_me_outlined,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        // Category
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Text(
            'Food and Beverages',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
        // Rating
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.star_border_outlined,
                color: Colors.black87,
              ),
              SizedBox(width: 8),
              Text(
                '4.8 (423 ratings)',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        // Location
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.black87,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'The Breeze BSD City',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                'See direction',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.red,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        // Open Time
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Colors.black87,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'Open Now ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.green),
                    ),
                    Text(
                      'from ',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      '10:00 - 21:00 ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'See details',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.red,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        // Phone Number
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.phone_outlined,
                color: Colors.black87,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  '021-1234567',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                'Make a call',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.red,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
