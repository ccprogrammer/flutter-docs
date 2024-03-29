import 'package:flutter/material.dart';
import 'package:my_documentation/docs/LOGIC/CopyMap.dart';
import 'package:my_documentation/docs/LOGIC/TakeImage/TakeImage.dart';
import 'package:my_documentation/docs/alert_dialog/AlertDialogCommon.dart';
import 'package:my_documentation/docs/alert_dialog/AlertDialogCommon2.dart';
import 'package:my_documentation/docs/app_bar/AppBarListTile.dart';
import 'package:my_documentation/docs/app_bar/AppBarNormal.dart';
import 'package:my_documentation/docs/app_bar/AppBarSearch.dart';
import 'package:my_documentation/docs/button/ButtonCircleIcon.dart';
import 'package:my_documentation/docs/button/CustomButton.dart';
import 'package:my_documentation/docs/button/ButtonTextCommon.dart';
import 'package:my_documentation/docs/card/CardCommon.dart';
import 'package:my_documentation/docs/card/CardList.dart';
import 'package:my_documentation/docs/card/CardWithImage.dart';
import 'package:my_documentation/docs/card/CardWithMap.dart';
import 'package:my_documentation/docs/card/CardWithStretchHeaderImage.dart';
import 'package:my_documentation/docs/carousel/CarouselCommon.dart';
import 'package:my_documentation/docs/comment/CommentCommon.dart';
import 'package:my_documentation/docs/date_picker/DatePickerBox.dart';
import 'package:my_documentation/docs/details/DetailCommon.dart';
import 'package:my_documentation/docs/divider/DividerDot.dart';
import 'package:my_documentation/docs/dropdown/DropdownCommon.dart';
import 'package:my_documentation/docs/grid_view/StaggeredGridViewCommon.dart';
import 'package:my_documentation/docs/horizontal_list/HorizontalListCard.dart';
import 'package:my_documentation/docs/image/ImageCircle.dart';
import 'package:my_documentation/docs/loading/LoadingShimmers.dart';
import 'package:my_documentation/docs/loading/ShimmerCard.dart';
import 'package:my_documentation/docs/loading/ShimmerOverview.dart';
import 'package:my_documentation/docs/loading/ShimmerTile.dart';
import 'package:my_documentation/docs/loading/Skeleton.dart';
import 'package:my_documentation/docs/menu/CustomMenu.dart';
import 'package:my_documentation/docs/modal_bottom_sheet/showCustomModal.dart';
import 'package:my_documentation/docs/profile/ProfilePage.dart';
import 'package:my_documentation/docs/rating_review/AddReviewBox.dart';
import 'package:my_documentation/docs/rating_review/RatingBox.dart';
import 'package:my_documentation/docs/rating_review/ReviewCardCommon.dart';
import 'package:my_documentation/docs/rating_review/ReviewRatingCard.dart';
import 'package:my_documentation/docs/sliver_app_bar/SliverAppBar1.dart';
import 'package:my_documentation/docs/snackbar/SnackBarCommon.dart';
import 'package:my_documentation/docs/take_image_box/TakeImageBox.dart';
import 'package:my_documentation/docs/text/ExpandableText.dart';
import 'package:my_documentation/docs/text_field/TextFieldArea.dart';
import 'package:my_documentation/docs/text_field/TextFieldCommon.dart';
import 'package:my_documentation/docs/text_field/TextFieldCommon2.dart';
import 'package:my_documentation/docs/text_field/TextFieldNoBox.dart';
import 'package:my_documentation/docs/tile/ListTileCard.dart';
import 'package:my_documentation/docs/tile/ListTileCommon.dart';
import 'package:my_documentation/docs/tile/ListTileCommon2.dart';
import 'package:my_documentation/docs/timelines/CustomTimeLines.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     // appBar: AppBarNormal(),
  //     // body: ProfilePage(),

  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Center(
  //           child: CustomTimelines(),
  //         )
  //       ],
  //     ),

  //     // body: StaggeredGridViewCommon(
  //     //   child: CardCommon(),
  //     // ),
  //   );
  // }

// Sliver Body
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, v) => [
            SliverAppBar1(),
          ],
          body: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
