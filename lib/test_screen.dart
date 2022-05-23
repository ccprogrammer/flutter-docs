import 'package:flutter/material.dart';
import 'package:my_documentation/docs/app_bar/AppBarListTile.dart';
import 'package:my_documentation/docs/app_bar/AppBarNormal.dart';
import 'package:my_documentation/docs/app_bar/AppBarSearch.dart';
import 'package:my_documentation/docs/button/TextButtonCommon.dart';
import 'package:my_documentation/docs/card/CardList.dart';
import 'package:my_documentation/docs/card/CardWithImage.dart';
import 'package:my_documentation/docs/card/CardWithMap.dart';
import 'package:my_documentation/docs/card/CardWithShadow.dart';
import 'package:my_documentation/docs/card/CardWithStretchHeaderImage.dart';
import 'package:my_documentation/docs/carousel/CarouselCommon.dart';
import 'package:my_documentation/docs/comment/CommentCommon.dart';
import 'package:my_documentation/docs/details/DetailCommon.dart';
import 'package:my_documentation/docs/divider/DividerDot.dart';
import 'package:my_documentation/docs/horizontal_list/HorizontalListCard.dart';
import 'package:my_documentation/docs/image/ImageCircle.dart';
import 'package:my_documentation/docs/loading/ShimmerCard.dart';
import 'package:my_documentation/docs/loading/ShimmerOverview.dart';
import 'package:my_documentation/docs/loading/ShimmerTile.dart';
import 'package:my_documentation/docs/loading/Skeleton.dart';
import 'package:my_documentation/docs/rating_review/AddReviewBox.dart';
import 'package:my_documentation/docs/rating_review/RatingBox.dart';
import 'package:my_documentation/docs/rating_review/ReviewCardCommon.dart';
import 'package:my_documentation/docs/rating_review/ReviewRatingCard.dart';
import 'package:my_documentation/docs/text/ExpandableText.dart';
import 'package:my_documentation/docs/text_field/TextFieldCommon.dart';
import 'package:my_documentation/docs/text_field/TextFieldNoBox.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBarSearch(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextFieldNoBox(),
          ),
        ],
      ),
    );
  }
}
