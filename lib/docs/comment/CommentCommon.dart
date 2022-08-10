import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_documentation/docs/text/ExpandableText.dart';

class CommentCommon extends StatefulWidget {
  const CommentCommon({Key? key, this.isParentComment = true})
      : super(key: key);
  final bool isParentComment;

  @override
  State<CommentCommon> createState() => _CommentCommonState();
}

class _CommentCommonState extends State<CommentCommon> {
  String dummyImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8of45oW5BmLa6J5BFdT33tr1ETAg4CpI4sA&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(widget.isParentComment ? 24 : 72, 12, 24, 0),
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffF7F7F7),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: dummyImage,
            imageBuilder: (context, imageProvider) => Container(
              width: widget.isParentComment ? 38.0 : 32,
              height: widget.isParentComment ? 38.0 : 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Jesselyn Ang',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: '  @jesselynang',
                        style: TextStyle(
                          color: Color(0xff828382),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                ExpandableText(
                  text: 'Apakah ada informasi penyebab masalahnya?',
                  trimLines: widget.isParentComment ? 4 : 2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '4 hours ago',
                      style: TextStyle(
                        color: Color(0xff828382),
                      ),
                    ),
                    SizedBox(width: 8),
                    widget.isParentComment
                        ? Row(
                            children: [
                              Text(
                                '•',
                                style: TextStyle(
                                  color: Color(0xff828382),
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Like',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '•',
                                style: TextStyle(
                                  color: Color(0xff828382),
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Reply',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        : Container(),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '245',
                      style: TextStyle(
                        color: Color(0xff828382),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
