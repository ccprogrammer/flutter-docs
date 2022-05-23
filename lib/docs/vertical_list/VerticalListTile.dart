import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget VerticalListTile() {
  return Column(
    children: [
      // TITLE / SEE MORE
      Container(
        margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Row(
          children: [
            Container(
              child: Expanded(
                child: Text(
                  'More Places',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "See more",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),

      for (var i = 0; i < 5; i++)
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(18, 18, 24, 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        width: 84,
                        height: 84,
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter,
                        imageUrl:
                            'https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGhhcnJ5JTIwcG90dGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500',
                        placeholder: (context, url) => Shimmer.fromColors(
                            child: Container(),
                            baseColor: Colors.grey[500]!,
                            highlightColor: Colors.grey[300]!),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // nama
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                          ),
                          SizedBox(height: 4),

                          Text(
                            'subtitle',
                            style: TextStyle(fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 16,
                                color: Colors.black,
                              ),
                              SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  'additional information',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 62),
                  ],
                ),
              ),
              Positioned(
                top: 8,
                right: 18,
                child: Container(
                  padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
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
              ),
            ],
          ),
        ),
    ],
  );
}
