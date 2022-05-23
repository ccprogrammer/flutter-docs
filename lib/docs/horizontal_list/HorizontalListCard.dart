import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget HorizontalListCard() {
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

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 24),
            for (var i = 0; i < 5; i++)
              Container(
                margin: EdgeInsets.fromLTRB(0, 16, 24, 0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              height: 170,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                              imageUrl:
                                  'https://images.unsplash.com/photo-1583623025817-d180a2221d0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHN1c2hpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                              placeholder: (context, url) => Shimmer.fromColors(
                                  child: Container(),
                                  baseColor: Colors.grey[500]!,
                                  highlightColor: Colors.grey[300]!),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            'Title',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'subtitle',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Open Now',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    ],
  );
}
