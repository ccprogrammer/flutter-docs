import 'package:flutter/material.dart';
import 'package:my_documentation/docs/sliver_app_bar/InvisibleExpandedHeader.dart';

Widget SliverAppBar1() {
  return SliverAppBar(
    pinned: true,
    floating: true,
    snap: true,
    automaticallyImplyLeading: false,
    elevation: 3.0,
    forceElevated: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    expandedHeight: 90,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: InvisibleExpandedHeader(
        child: Text(
          'HITMAN',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff574C4C),
          ),
        ),
      ),
      background: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    'John Wick',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Hitman',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff6d6875),
                    ),
                  ),
                  Text(
                    'Hidden',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 78,
              height: 78,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(1, 2), // x, y changes position of shadow
                  )
                ],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2QaWW0n5lMGljH895ZVmNZzl0FJVmcr2wGw&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
