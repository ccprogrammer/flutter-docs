import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardCommon extends StatelessWidget {
  const CardCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 160,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card image
                CachedNetworkImage(
                  imageUrl:
                      'https://media.istockphoto.com/photos/kaaba-in-mecca-picture-id482206266?b=1&k=20&m=482206266&s=170667a&w=0&h=LiwgRYl3SwyqprON-gCxOenWKgQYMXaDtAlwHFKeZek=',
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.darken),
                        ),
                      ),
                    );
                  },
                  placeholder: (context, url) => SizedBox(
                    width: 160,
                    height: 120,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  errorWidget: (context, url, error) => SizedBox(
                    width: 160,
                    height: 120,
                    child: Icon(Icons.error),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      Container(
                        child: Text(
                          'Card Title',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      // description
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Text(
                          'Card Description',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      //  status
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
                              'Status',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // rating
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.star_border_outlined,
                                size: 16,
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              child: Text(
                                "5.0 (249 ratings)",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // address
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.pin_drop_outlined,
                                size: 16,
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              child: Expanded(
                                child: Text(
                                  'Makkah, Saudi Arabia',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
