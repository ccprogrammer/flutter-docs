import 'package:flutter/material.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/basics/asset_player_widget.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/orientation/landscape_player_page.dart';
import 'package:onesmile/ui/survey/PoC2/video_widget/orientation/portrait_landscape_player_page.dart';

/*
  native_device_orientation: ^0.4.3
  auto_orientation: 2.2.1
*/
class SurveyPoc2Video extends StatefulWidget {
  const SurveyPoc2Video({Key key}) : super(key: key);

  @override
  State<SurveyPoc2Video> createState() => _SurveyPoc2VideoState();
}

class _SurveyPoc2VideoState extends State<SurveyPoc2Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LandscapePlayerPage(),
      ),
    );
  }
}
