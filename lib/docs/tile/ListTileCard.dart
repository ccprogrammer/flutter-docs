import 'package:flutter/material.dart';

Widget ListTileCard() {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
    child: ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: Container(
        width: 42,
        height: 42,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffCDD1D2),
        ),
        child: Center(
          child: Icon(Icons.home_filled),
          // child: Image.asset(
          //   'assets/icons/target-suara/icon-buildings.png',
          //   width: 24,
          //   height: 24,
          // ),
        ),
      ),
      title: Text(
        'Tile Title',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Tile Subtitle',
        style: const TextStyle(
          color: Color(0xff828382),
          fontSize: 12,
        ),
      ),
      trailing: PopupMenuButton(
        icon: Icon(Icons.more_vert),
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text('Item 1'),
            ),
          ),
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.anchor),
              title: Text('Item 2'),
            ),
          ),
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.article),
              title: Text('Item 3'),
            ),
          ),
          const PopupMenuDivider(),
          const PopupMenuItem(child: Text('Item A')),
          const PopupMenuItem(child: Text('Item B')),
        ],
      ),
      // trailing: IconButton(
  
    ),
  );
}
