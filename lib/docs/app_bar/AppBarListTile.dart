import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget AppBarListTile() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    titleSpacing: 0,
    elevation: 0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    toolbarHeight: 70,
    leading: IconButton(
      onPressed: () {
        // Navigator.pop(context);
      },
      icon: Icon(
        Icons.chevron_left,
        size: 32,
      ),
    ),
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CachedNetworkImage(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsACbHLHUfZOa7XKFumY4iqWpGxo-NIVkzTw&usqp=CAU',
        imageBuilder: (context, imageProvider) => Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      title: Text(
        'Lubianca',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 13,
        ),
      ),
      subtitle: Text(
        '8 hours ago',
        style: TextStyle(
          fontSize: 12,
          color: Color(0xff828382),
        ),
      ),
    ),
    actions: [
      IconButton(
        constraints: BoxConstraints(),
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz_rounded,
          size: 32,
        ),
      ),
      SizedBox(width: 24),
    ],
    bottom: PreferredSize(
        child: Container(
          color: Color(0xffE5E5E5),
          height: 1.0,
        ),
        preferredSize: Size.fromHeight(4.0)),
  );
}
