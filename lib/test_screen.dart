import 'package:flutter/material.dart';
import 'package:my_documentation/docs/alert_dialog/AlertDialogCommon.dart';
import 'package:my_documentation/docs/app_bar/AppBarListTile.dart';
import 'package:my_documentation/docs/app_bar/AppBarNormal.dart';
import 'package:my_documentation/docs/app_bar/AppBarSearch.dart';
import 'package:my_documentation/docs/button/ButtonCircleIcon.dart';
import 'package:my_documentation/docs/button/ButtonElevatedCommon.dart';
import 'package:my_documentation/docs/button/ButtonTextCommon.dart';
import 'package:my_documentation/docs/card/CardCommon.dart';
import 'package:my_documentation/docs/card/CardList.dart';
import 'package:my_documentation/docs/card/CardWithImage.dart';
import 'package:my_documentation/docs/card/CardWithMap.dart';
import 'package:my_documentation/docs/card/CardWithStretchHeaderImage.dart';
import 'package:my_documentation/docs/carousel/CarouselCommon.dart';
import 'package:my_documentation/docs/comment/CommentCommon.dart';
import 'package:my_documentation/docs/details/DetailCommon.dart';
import 'package:my_documentation/docs/divider/DividerDot.dart';
import 'package:my_documentation/docs/grid_view/StaggeredGridViewCommon.dart';
import 'package:my_documentation/docs/horizontal_list/HorizontalListCard.dart';
import 'package:my_documentation/docs/image/ImageCircle.dart';
import 'package:my_documentation/docs/loading/LoadingShimmers.dart';
import 'package:my_documentation/docs/loading/ShimmerCard.dart';
import 'package:my_documentation/docs/loading/ShimmerOverview.dart';
import 'package:my_documentation/docs/loading/ShimmerTile.dart';
import 'package:my_documentation/docs/loading/Skeleton.dart';
import 'package:my_documentation/docs/rating_review/AddReviewBox.dart';
import 'package:my_documentation/docs/rating_review/RatingBox.dart';
import 'package:my_documentation/docs/rating_review/ReviewCardCommon.dart';
import 'package:my_documentation/docs/rating_review/ReviewRatingCard.dart';
import 'package:my_documentation/docs/snackbar/SnackBarCommon.dart';
import 'package:my_documentation/docs/text/ExpandableText.dart';
import 'package:my_documentation/docs/text_field/TextFieldCommon.dart';
import 'package:my_documentation/docs/text_field/TextFieldNoBox.dart';
import 'package:my_documentation/docs/tile/ListTileCommon.dart';
import 'package:my_documentation/docs/tile/ListTileCommon2.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBarNormal(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ListTileCommon2(),
          ),
        ],
      ),
      // body: StaggeredGridViewCommon(
      //   child: CardCommon(),
      // ),
    );
  }
}
