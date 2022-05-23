import 'package:flutter/material.dart';

Widget ReviewCardCommon() {
  return Container(
    width: 348,
    margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Color(0xffD9D9D9),
        width: 1,
      ),
    ),
    // Description
    child: Column(
      children: [
        // Review Card Header
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                width: 42,
                height: 42,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jeanice Ang',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Jeanice Ang',
                  style: TextStyle(
                    color: Color(0xff828382),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
            Spacer(),

            // Rating
            Container(
              padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '4',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '/5',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
          //    child: MySeparator(
          //      height: 1,
          //      color: Color(0xffD9D9D9),
        ),

        Container(
          child: Text(
            'Sushi tasted really good with a lot of varieties to choose from. Would recommend this restaurant to anyone searching for the best sushi in the town.Sushi tasted really good with a lot of varieties to choose from. Would recommend this restaurant to anyone searching for the best sushi in the town.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        )
      ],
    ),
  );
}
