import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget ListTileCommon2() {
  return Container(
    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CachedNetworkImage(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsACbHLHUfZOa7XKFumY4iqWpGxo-NIVkzTw&usqp=CAU',
        imageBuilder: (context, imageProvider) => Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      title: Text(
        'ccprogrammer',
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        '8 hours ago',
        style: TextStyle(
          color: Color(0xff828382),
        ),
      ),
      trailing: IconButton(
        constraints: BoxConstraints(),
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(Icons.close),
      ),
    ),
  );
}
