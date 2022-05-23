import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(9, 6, 9, 6),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  height: 200,
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  imageUrl:
                      'https://images.unsplash.com/photo-1583623025817-d180a2221d0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHN1c2hpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  placeholder: (context, url) => Shimmer.fromColors(
                      child: Container(),
                      baseColor: Colors.grey[500]!,
                      highlightColor: Colors.grey[300]!),
                  errorWidget: (context, url, error) => Icon(Icons.error),
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
    );
  }
}
