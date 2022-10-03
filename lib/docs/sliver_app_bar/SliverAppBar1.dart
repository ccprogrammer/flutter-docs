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
    expandedHeight: 140,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: InvisibleExpandedHeader(
        child: Text(
          'Flutter',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff574C4C),
          ),
        ),
      ),
      background: Stack(
        children: [
          Hero(
            tag: 'logo',
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffE51937),
                    Color(0xffDB5252),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Image.network(
                    'https://brandslogos.com/wp-content/uploads/images/large/visual-studio-code-logo.png',
                    width: 42,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Sliver',
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  'costume your sliver here',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 12,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
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
